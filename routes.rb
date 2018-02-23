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

  get "/buildyourown/:id/edit" do
    @ingredients = Ingredient.find(params[:id])
    erb :edit
  end

  delete "/buildyourown/:id" do
    Ingredient.find(params[:id]).destroy
    redirect "/buildyourown"
  end

  put "/buildyourown/:id" do
    ingredient = Ingredient.find(params[:id])
    ingredient.update(name: params[:name], spread: params[:spread])
    redirect "/buildyourown"
  end

  post "/buildyourown" do
    Ingredient.create(name: params[:name], spread: params[:spread])
    redirect "/buildyourown"
  end

end