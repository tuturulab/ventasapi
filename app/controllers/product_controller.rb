class ProductController < ApplicationController
  before_action :authorize_request

  #GET /products
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  #GET /products/{id}
  def show
    @product = Product.find_by_id(params[:id])
    if @product
      render json: @product, status: :ok 
    else 
      render json: { errors: "Product doesn't exist or has been deleted"} , status: :not_found
    end
  end

  #POST /products
  def create 
    @product = Product.create (product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity          
    end
  end

  #PUT /products/{id}
  def update 
    @product = Product.find_by_id(params[:id])
    if @product
      if @product.update(product_params)
        render json: @product, status: :ok
      else
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { errors: "Product doesn't exist or has been deleted"} , status: :not_found
    end
  end

  #DELETE /products/{id}
  def destroy 
    @product = Product.find_by_id(params[:id])
    if @product
      @product.destroy
      render json: { info: "Product deleted correctly" }, status: :ok 
    else 
      render json: { errors: "Product doesn't exist or has been deleted"} , status: :not_found
    end
  end

  private 

  #Params Permit
  def product_params
    params.permit(
      :brand, :model, :sell_price, :credit_available, :warranty_available, :imei_available
    )
  end

end
