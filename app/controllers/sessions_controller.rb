class SessionsController < Devise::SessionsController
	skip_before_action :verify_signed_out_user
end