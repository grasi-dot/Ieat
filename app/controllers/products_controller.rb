class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { render :index, notice: 'Product created.' }
      else
        format.html { render :new }
      end
    end
  end

  respond_to do |format|
    if @restaurant.save
      format.html { redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully created." }
      format.json { render :show, status: :created, location: @restaurant }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @restaurant.errors, status: :unprocessable_entity }
    end
  end
  
  def product_params
    params.require(:product).permit(:name, :value, :Restaurant_id)
  end
end
