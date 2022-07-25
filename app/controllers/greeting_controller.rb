class GreetingController < ApplicationController
  def index
    @greetings = SayGreeting.all
  end

  def new
    @say_greeting = SayGreeting.new
  end

  def create
    @say_greeting = SayGreeting.new(title: params['say_greeting']['title'], greeting_text: params['say_greeting']['greeting_text'])

    if @say_greeting.save
      flash[:notice] = "This article was saved successfully"
      redirect_to '/greeting/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def greeting
    abort(params.to_json)
  end
end
