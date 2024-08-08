class GetPostsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    api_handler = ApiHandler.new
    posts = api_handler.get_posts

    if posts
      posts.each do |post|
        Post.create(title: post['title'], body: post['body'], user_id: post['userId'])
      end
  end
end
end
 