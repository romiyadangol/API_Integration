class ApiController < ApplicationController
  def index
    GetPostsJob.perform_later
    render json: { message: "Posts are being fetched in the background. Refresh this page in a few seconds." }
end
end