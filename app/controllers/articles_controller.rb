class ArticlesController < ApplicationController

	def index
      #@articles = Article.all
      @articles = Article.search(params[:search])
  	end

	def show
    	@article = Article.find(params[:id])
  	end

	def new
		@article = Article.new
    respond_to do |format|
      format.html
      format.js
    end
	end

	def edit
 		@article = Article.find(params[:id])
	end

	def create
  		@article = Article.new(article_params)
 
  		 if @article.save
    		redirect_to @article
  		else
    		render partial: 'new'
  		end
	end

 	def update
  		@article = Article.find(params[:id])
      
      respond_to do |format|
    		if @article.update(article_params)
          format.js
      		#redirect_to @article
    		else
          format.js
      		render 'edit'
    		end
      end
	end

	def destroy
  		@article = Article.find(params[:id])
  		@article.destroy

      respond_to do |format|
        format.html
        format.js
      end
 
  		redirect_to articles_path
	end
	
	private
  		def article_params
    		params.require(:article).permit(:title, :text)
  		end
end
