class OrdersController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]

  http_basic_authenticate_with name: "andryplekhanov", password: "a25662566", only: :index

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(params.require(:order).permit!)
    @order.save

    redirect_to '/ty'
  end
end