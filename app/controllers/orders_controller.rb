class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    p = Product.find(params[:product_id])
    o = Order.find_or_create_by(user: current_user, product: p, payed: false)
    o.quantity_product += 1
    o.total_price = p.unit_price
    
    if o.save
      redirect_to products_path, notice: "El producto ha sido agregado al carro."
    else
      redirect_to products_path, alert: "El producto NO ha sido agregado al carro"
    end
  end
  
  def clean
    @orders = Order.where(user: current_user, payed: false)
    @orders.destroy_all
    redirect_to orders_path, notice: 'El carro se ha vaciado.'
  end
  
  def index
    @orders = current_user.orders.where(payed: false)
    @total = @orders.pluck("total_price * quantity_product").sum()
  end
end
