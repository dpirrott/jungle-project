class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]

  def show
    @productCount = Product.all.count
    @categoryCount = Category.all.count
  end
end
