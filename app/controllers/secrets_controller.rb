class SecretsController < ApplicationController
TOKEN = "82FA8RYd1kqGC3AF6K9OWz3rhi7H3GcC"
before_action :authenticate
def index
  if request.format.json?
    @secrets = Secret.all
    render json: @secrets
  elsif 
    render plain: 'Page not found (aka site isnt viewable via html. This is an API...)'
  end
end
def show
  if request.format.json?
    @secret = Secret.find(params[:id])
    render json: @secret.text
  elsif 
    render plain: 'Page not found (aka site isnt viewable via html. This is an API...)'
  end
  
end

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        token == TOKEN
      end
    end
  end
    

