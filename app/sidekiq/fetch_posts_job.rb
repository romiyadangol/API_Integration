class FetchPostsJob
  include Sidekiq::Job

  def perform(title, body)
    puts "hello world"
    # Do something
    # api_fetcher = ApiFetcher.new
    # response = api_fetcher.get_posts
    # posts = response.body

    # puts posts
    # if posts
    #   posts.each do |post|
        Blog.create(title: title, body: body)
    # end
  # end
  end
end
