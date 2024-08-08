require 'httparty'

class ApiHandler
  include HTTParty
  base_uri 'http://jsonplaceholder.typicode.com'

  def initialize
    @options = {}
  end

  def get_posts
    self.class.get('/posts', @options)
    # response = self.class.get('/posts')
    # if response.success?
    #   response.body.parsed_response
    # else
    #   { error: 'Failed to fetch posts' }
    # end
  end
end
