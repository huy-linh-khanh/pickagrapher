class OrdersController < ApplicationController
  before_action :authenticate_user!
  include PhotographersHelper
  helper_method :is_photographer?

  def index
    if is_photographer?
      @orders = Order.where(:photographer => current_user.photographer)
    else
      @orders = Order.where(:user => current_user)
    end
  end

  def new

  end

  def create
    @order = Order.new order_params
    @order.create_time = Time.now
    @order.status = 0
    @order.user = current_user
    if @order.save
      redirect_to orders_path
    else
      redirect_to :back
    end
  end

  private
  def order_params
    params.require(:order).permit(:starts_date, :ends_date, :photographer_id, :location_id, :category_id)
  end
end

# t.date     "starts_date"
# t.date     "ends_date"
# t.datetime "create_time"
# t.integer  "user_id"
# t.integer  "photographer_id"
# t.integer  "status",          default: 0
# t.integer  "location_id"
