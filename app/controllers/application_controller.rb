class ApplicationController < ActionController::Base
    # before_action :set_query

    # def set_query
    #     @query = Post.ransack(params[:q])
    # end

    def after_sign_up_path_for(resource)
        redirect_to root_ppath
    end
end
