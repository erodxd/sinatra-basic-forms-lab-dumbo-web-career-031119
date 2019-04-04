require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    #renders a form that can POST a puppy
    get '/new' do
        erb :create_puppy
    end

    #recieves a request from /new @ /puppy
    #@puppy instance variable created, with params for name, breed, & age
    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])

        erb :display_puppy
    end

end
