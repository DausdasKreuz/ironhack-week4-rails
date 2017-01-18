class UsersController < ApplicationController
  before_action :make_user, only: [:destroy]#[:show, :destroy]

  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #
  #   if @user.save
  #     flash[:notice] = "User successfully created"
  #     redirect_to "/"
  #   else
  #     flash[:alert] = "Name is needed. email is needed and must be unique"
  #     render "new"
  #   end
  # end

  def show
    @products = current_user.products
    @products_bidded = []
    bids = current_user.bids
    bids.each { |bid| @products_bidded.push(Product.find_by(id: bid.product_id)) }
  end

  def all_products
    @products = Product.where.not(user_id: params[:id])
    #@products = Product.all
  end

  def destroy
    @user.destroy
    redirect_to "/"
  end

  private
  def make_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
