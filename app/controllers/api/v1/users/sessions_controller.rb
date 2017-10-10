module Api
  module V1
    class Users::SessionsController < Devise::SessionsController
      require 'auth_token'
      skip_before_action :verify_authenticity_token

      def create
        self.resource = warden.authenticate!(auth_options)
        set_flash_message(:notice, :signed_in) if is_flashing_format?
        sign_in(resource_name, resource)
        yield resource if block_given?
        token = AuthToken.issue_token({ user_id: resource.id })
        respond_to do |format|
          format.json { render json: {user: resource.email, token: token} }
        end
      end

      protected

      def resource_name
        :user
      end
    end
  end
end