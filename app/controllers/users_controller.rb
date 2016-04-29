enable :sessions
# require 'byebug'

post '/signup' do

  user = User.new(params[:user])
  #validations happen here
  if user.save
   
    redirect "/"
  else

    redirect "/"
  end
end 


get "/login" do

erb :"static/login"

end 

get "/userQA" do

erb :"static/userQA"

end 

post "/login_user" do

  @user = User.user_auth(params[:email], params[:password])

  if @user.present?
   session[:user_id] = @user.id
	 redirect '/'
	else
	 redirect "/"
	end
end 

get '/user_profile' do

erb :"static/user_profile" 
  end 

get "/logout_user" do
	
  session[:user_id] = nil
	redirect "/"


end 




