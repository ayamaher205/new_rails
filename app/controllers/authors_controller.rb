class AuthorsController < ApplicationController
    
    def index
        @authors = Author.all
    end 
    
    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to @author 
        else
            render :new
        end
    end
    def show
        @author = Author.find(params[:id])
    end
    def edit
        @author = Author.find(params[:id])
    end
    def update
        @author = Author.find(params[:id])
        if @author.update(author_params)
            redirect_to @author
        else
            render :update, status:422
        end
    end
    def destroy
        @author = Author.find(params[:id])
        @author.destroy
        redirect_to @authors
    end
    def author_params
        params.require(:author).permit(:name, :email, :DOB, :phone_number)
    end
end