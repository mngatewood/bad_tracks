class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# before_action :set_breadcrumb
# before_action :set_cart, only: [:create, :destroy]

  #this lets the view acces the helper method
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  # def set_breadcrumb
  #   @breadcrumbs ||= session[:breadcrumbs]
  #   @breadcrumbs.push(request.path_info)
  # end

  # def create
  #   @cart.add_product(params)

  #   if @cart.save
  #     redirect_to cart_path
  #   else
  #     flash[:error] = "There was a problem adding this item to your cart."
  #     redirect_to @song
  #   end
  # end

  # def destroy
  #   @cart_item.destroy
  #   redirect_to cart_path
  # end

  # private

  # def set_cart
  #   @cart = Cart.find(session[:cart_id])
  # rescue ActiveRecord::RecordNotFound
  #   @cart = Cart.create
  #   session[:cart_id] = @cart.id
  # end

end
