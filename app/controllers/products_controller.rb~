class ProductsController < ApplicationController

http_basic_authenticate_with :name => "carmen", :password => "fontaine", :only => :destroy
 
def create
    @customer = Customer.find(params[:customer_id])
    @product = @customer.products.create(params[:product])
    redirect_to customer_path(@customer)
  end

def destroy
    @customer = Customer.find(params[:customer_id])
    @product = @customer.comments.find(params[:id])
    @product.destroy
    redirect_to customer_path(@customer)
  end

end
