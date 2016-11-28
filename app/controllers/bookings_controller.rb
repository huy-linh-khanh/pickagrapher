class BookingsController < ApplicationController
  def index
    if is_photographer?
      @orders = Order.where(:photographer => current_photographer)
      @orders.order("status ASC").all
    else
      @orders = Order.where(:user => current_user)
    end
    @count = 0
  end

  def update

  end

  def accept
    @order = Order.find(params[:order])
    if @order.update_attribute(:status, 1)
      redirect_to bookings_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def cancel
    @order = Order.find(params[:order])
    if @order.update_attribute(:status, 2)
      redirect_to bookings_path
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
