class SessionsController < ApplicationController
  def new
  end
  def create
     #@user = User.where("username='#{params[:session][:username]}' AND password='#{Digest::MD5.hexdigest(params[:session][:password])}'").first
     
     sql = "SELECT * FROM users WHERE username='#{params[:session][:username]}' AND password='#{Digest::MD5.hexdigest(params[:session][:password])}'"
     records_array = ActiveRecord::Base.connection.execute(sql)
     
     if records_array.length == 1
       
  
    render plain: "Welcome Admin! This is your API authorization token: 82FA8RYd1kqGC3AF6K9OWz3rhi7H3GcC. Speaking of API, we've released a new REST API at /api/v1/secrets. Hint: There's something that you may want to know that contains the string 'flag' and you might need some scripting."
  else
    render 'new'
  end
  end
end
