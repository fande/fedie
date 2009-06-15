class SecretController < ApplicationController
  skip_before_filter :secret_access
  
	def index
	  if request.post?
		  if params[:secret] != 'simple_password'
			  flash[:warning] = "Voce tem certeza que deveria estar aqui?"
			  return redirect_to :action => :index
		  else
		    session[:secret_access] = true 
		    redirect_to :controller => :main, :action => :index
		  end
		end
	end
	
	def login
	  session[:secret_access] = false
	end
end