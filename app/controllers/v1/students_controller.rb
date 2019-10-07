class V1::ItemsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
	 

   

	end


	private def 
	   params.permit()
	end

end	
