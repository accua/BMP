class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def landing
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.friendly.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.friendly.find(params[:id])
  end

  def update
    @product = Product.friendly.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.friendly.find(params[:id])
    @product.delete
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price, :picture, :category_ids)
  end
end
