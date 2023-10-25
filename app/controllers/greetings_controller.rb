class GreetingsController < ApplicationController
  def index
    random_message = Greeting.order('RANDOM()').first
    response.headers['Content-Type'] = 'application/json'
    render json: { greeting: random_message.message }
  end
end
