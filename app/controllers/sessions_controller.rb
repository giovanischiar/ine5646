class SessionsController < Devise::SessionsController
	skip_before_action :verify_authenticity_token
	skip_before_action :verify_signed_out_user
end