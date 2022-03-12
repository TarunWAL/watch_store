class AdminController < ApplicationController
  def login
    if request.post?
      if params[:name] == "admin" && params[:password] == "nimma"
        session[:admin] = "admin"
         flash[:notice] = "Hi admin"
         redirect_to stores_path
      else 
        flash[:notice] = "Invalid Credentials"
        render :action => :login
      end
    end
  end

  def logout
    session[:admin] = nil
    flash[:notice] = "Admin Logged Out"
    redirect_to :action=>:login
  end

end

