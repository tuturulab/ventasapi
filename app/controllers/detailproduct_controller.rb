class DetailproductController < ApplicationController
  before_action :authorize_request

  # GET product/{id}/detailproduct
  def index 
    @DetailProducts = DetailProduct.where("product_id = #{params[:product_id]}")
    render json: { data: @DetailProducts }, status: :ok 
  end

  # POST product/{id}/detailproduct
  def create 
    @DetailProduct = DetailProduct.new ( detailproduct_params)
    if @DetailProduct.save
      render json: @DetailProduct, status: :created
    else
      render json: { errors: @DetailProduct.errors.full_messages }, status: :unprocessable_entity          
    end
  end


  private
  #Params Permit
  def detailproduct_params
    params.permit(
      :description, :original_warranty, :imei, :cost_price, :product_id
    )
  end

end
