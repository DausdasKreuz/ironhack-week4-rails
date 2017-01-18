require 'pry'
class BidsController < ApplicationController
  before_action :make_user

  def new
    @bid = Bid.new
  end

  def create
    #@bid = @user.bids.new(bid_params)
    @bid = @user.bids.new(
                      amount: params[:bid][:amount],
                      product_id: params[:product_id])

    if @bid.save
      redirect_to user_products_path
    else
      render "new"
    end
  end

  private
  def make_user
    @user = User.find_by(id: params[:user_id])
  end

  #def bid_params
  #  params.require(:bid).permit(:amount, :user_id, :product_id)
  #end
end
