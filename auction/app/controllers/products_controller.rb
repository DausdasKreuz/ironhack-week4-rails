require 'pry'
class ProductsController < ApplicationController
  before_action :make_user
  before_action :make_product, only: [:show, :destroy]

  def index
    @products = @user.products
    @other_products = Product.where.not(user_id: params[:user_id])
  end

  def new
    @product = Product.new
  end

  def create
    product = @user.products.new(product_params)

    if product.save
      redirect_to "/users/#{@user.id}/products"
    else
      render "new"
    end
  end

  def show
  end

  def destroy
    @product.destroy
    redirect_to "/users/#{@user.id}/products"
  end


  private
  def product_params
    params.require(:product).permit(:title, :description, :deadline)
  end

  def make_user
    @user = User.find_by(id: params[:user_id])
  end

  def make_product
    @product = @user.products.find_by(id: params[:id])
  end
end
