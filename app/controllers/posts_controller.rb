class PostsController < ApplicationController
    def post_form
        puts 'hello'
    end
    
    def new
        @post = Post.new
    end
    
    def get_posts
        @posts = Post.all
    end
    
    def add
        @post = Post.create({title:params[:post][:title],content:params[:post][:content]})
        if @post.save 
            redirect_to posts_url(@posts)
        else
            render :new, status:422
        end
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update({title:params[:post][:title],content:params[:post][:content]})
            redirect_to post_url(@post)
        else
            render :update, status:422
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to authors_path
    end
    
    def get_post
        @post = Post.find(params[:id])
    end
end
