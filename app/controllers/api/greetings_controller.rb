class Api::GreetingsController < ApplicationController
  def random
    random_greeting = Greeting.all.sample
    render json: { greeting: random_greeting }
  end
end
