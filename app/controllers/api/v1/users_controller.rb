module Api
    module V1
        class UsersController < ApplicationController
            protect_from_forgery with: :null_session
            def index
                users = User.all

                render json: UserSerializer.new(users,options).serialized_json
            end

            def show
                user = User.find_by(id: params[:id])

                render json: UserSerializer.new(user,options).serialized_json
            end

            def create
                user = User.new(user_params)

                if user.save
                    render json: UserSerializer.new(user).serialized_json
                else
                    render "Please save your details first!"
                end
            end

            def update
                user = User.find_by(id: params[:id])

                if user.update(user_params)
                    render json: UserSerializer.new(user,options).serialized_json
                else
                    render json: UserSerializer.new(user,options).serialized_json
                end
            end

            def destroy
                user = User.find_by(id: params[:id])
                if user
                    if user.articles.destroy && user.destroy
                        head :no_content
                    else
                        head :no_content
                    end
                else
                    head :no_content
                end
            end

            def share_article
                shared_users = []
                article = Article.find(params[:article_id])
                params[:shared_ids].each do |shared_id|
                    shared_user = User.find(shared_id)
                    shared_users << shared_user
                end
                article.update(shared: shared_users)
                render json:ArticleSerializer.new(article).serialized_json
            end

            private 

            def user_params
                params.permit(:name, :image_url)
            end

            def options
                @options ||= {include: %i[articles]}
            end
        end
    end
end