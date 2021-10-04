class SettlementInputsController < ApplicationController
  def new
    @settlement_input = SettlementInput.new
    @users = User.all
    @settlement_input.settlements = []
    @users.each do |u|
      sm = Settlement.new
      sm.user_name = u.user_name
      @settlement_input.settlements << sm
    end
  end

  def create
    settlement_inpt = params[:settlement_input]
    settlement_input = SettlementInput.new
    payee = User.where(:id => settlement_inpt[:paid_by]).first
    settlement_input.paid_by = payee.user_name
    settlement_input.description = settlement_inpt[:description]
    settlement_input.amount = settlement_inpt[:amount].to_f
    settlement_input.settlements = []
    total_share = 0
    settlement_inpt[:settlements_attributes].each do |k, v|
      total_share += v[:split_ratio].to_i
      if (v[:split_ratio].to_f > 0 && v[:user_name] != payee.user_name)
        s = Settlement.new
        s.user_name = v[:user_name]
        s.split_ratio = v[:split_ratio].to_i
        s.owes_to = payee.user_name
        settlement_input.settlements << s
      end
    end

    individual_share = settlement_input.amount / total_share
    settlement_input.settlements.each do |s|
      s.amount = s.split_ratio * individual_share
    end
    settlement_input.save
  end

end
