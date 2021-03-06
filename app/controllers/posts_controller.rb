class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        post_params = params.require(:post).permit(:content)
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.save
            redirect_to posts_path
        else
            render :new
        end
        
        
    end

end