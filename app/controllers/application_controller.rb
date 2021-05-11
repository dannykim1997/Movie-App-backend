class ApplicationController < ActionController::API

    def check_if_logged_in?
        if request.headers['user-id'].nil?
            render json: { "msg": "Login first..."}
        end
        user = User.find_by(id: request.headers['user-id'])
    end
end
