require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do
    erb :'index'
  end #end get /

  get '/new' do
    erb :'create_puppy'
  end

  post '/' do
    # binding.pry
    # prob need this somewhere
    @puppy = Puppy.new(params['name'], params['breed'], params['age'])
    erb :'display_puppy'
  end

end #end of app class
