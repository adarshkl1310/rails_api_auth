class V1::AdminController < ApplicationController
	skip_before_action :verify_authenticity_token

	def login
		admin = Admin.where(email: params[:email]).first
	      
		if admin&.valid_password?(params[:password])
		  	render json: admin.as_json(only:[:email,:authentication_token]), status: :created
		else
		  	head(:unauthorized)
		end
	end


	def signup
		admin = Admin.new(adn_params)

		if admin.save
		    render json: {status: 'success', data:admin}, status: :ok
		else
		    render json: {status: 'error', message:'There was some error in registering the user.', data:admin.errors}, status: :unprocessable_entity
		end
	end


	private 

	def adn_params
		params.permit(:email,:password)
	end

end
 	 