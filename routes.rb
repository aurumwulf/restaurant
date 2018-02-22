class Restaurant < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/menu" do
    erb :menu
  end

  get "/buildyourown" do
    erb :buildyourown
  end

  get "/contactus" do
    erb :contactus
  end
end