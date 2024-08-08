class ApiFetcher
    include HTTParty
    base_uri 'http://jsonplaceholder.typicode.com'
  
    def fetch_posts
      response = self.class.get('/posts')
       if response.success?
           response.parsed_response
       else
           { error: 'Failed to fetch posts' }
       end
    end
  end