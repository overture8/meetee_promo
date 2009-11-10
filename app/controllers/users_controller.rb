class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid do |exception|
    render :action => (exception.record.new_record? ? :new : :edit)
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.save!
    flash[:notice] = "Thank you! We'll email you when we get there!"
    redirect_to root_url
  end
end
