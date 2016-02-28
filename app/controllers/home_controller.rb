class HomeController < ApplicationController
    before_action :authenticate_user!,:user_signed_in?
    def index
           @posts = Post.all.order('created_at DESC')
           @Gigs = Gig.all.order('created_at ASC')
    end
end
