class Restaurant < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/menu" do
    erb :menu
  end

  get "/buildyourown" do
    @ingredients = Ingredient.all
    erb :buildyourown
  end

  get "/contactus" do
    erb :contactus
  end

  post "/buildyourown" do
    Ingredient.create(name: params[:ingredient], spread: params[:spread])
    redirect "/buildyourown"
  end
end