require 'json'
class ApisController < ApplicationController
  def index
    @response = ApiHandler.new.get_posts
    @posts = JSON.parse(@response.body);
    puts @posts

    @posts.each do |post|
      FetchPostsJob.perform_async(post['title'], post['body'])
    end
    # FetchPostsJob.perform_async
    # render json: { status: 'SUCCESS', message: 'Posts fetched', data: post }, status: :ok
  end
end
