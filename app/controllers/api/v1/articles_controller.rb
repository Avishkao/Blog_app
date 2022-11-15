module Api
    module V1
        class ArticlesController < ApplicationController
            protect_from_forgery with: :null_session
            def index
                articles = Article.all

                render json: ArticleSerializer.new(articles).serialized_json
            end

            def show
                article = Article.find_by(id: params[:id])

                render json: ArticleSerializer.new(article).serialized_json
            end

            def create
                article = Article.new(article_params)

                if article.save
                    render json: ArticleSerializer.new(article).serialized_json
                else
                    head :no_content
                end
            end

            def update
                article = Article.find_by(id: params[:id])

                if article.update(article_params)
                    render json: ArticleSerializer.new(article).serialized_json
                else
                    head :no_content
                end
            end

            def destroy
                article = Article.find_by(id: params[:id])

                if article.destroy
                    render plain: "Destoyed"
                else
                    head :no_content
                end
            end

            private 

            def article_params
                params.permit(:title, :description, :shared, :user)
            end

            
        end
    end
end