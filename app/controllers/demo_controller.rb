class DemoController < ApplicationController
  layout false

  def index
    # render(:template => 'demo/hello')
    # or
    # render('demo/hello')
    # or
    # render('hello')
  end

  def hello
    # render('index')
    @array = [1,2,3,4,5]        # instance variable
    @id = params['id'].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def google
    redirect_to("https://google.com")
  end
end
