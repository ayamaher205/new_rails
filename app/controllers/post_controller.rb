class PostController < ApplicationController
    def get_posts
        Post.create({title: "post1", content: "content1"})
    end
end