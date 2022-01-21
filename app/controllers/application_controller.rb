class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/' do 
    redirect to "/recipes"
  end

   
  #loads new page 
  get '/recipes/new' do
    erb :new_recipe
  end

  #index pages
  get '/recipes' do 
    @recipes = Recipe.all
    erb :index
  end

  #loads show page 
  get '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    erb :show_recipe
  end

  #loads edit form
    get '/recipes/:id/edit' do 
      @recipe = Recipe.find(params[:id])
      erb :edit_recipe
  end

  #update a recipe 
  patch '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save

    redirect to "/recipes/#{@recipe.id}"
  end

#creates a recipe
  post '/recipes' do
    recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time] )
    redirect to "/recipes/#{Recipe.last.id}"
  end

  

  #delete page
  delete '/recipes/:id' do 
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect to '/recipes'
  end







end

# recipe_object = instance_variable_get("@recipe#{index}") >%
