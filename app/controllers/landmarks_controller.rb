class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  post "/landmarks" do
    Landmark.create(params)
    redirect("/landmarks")
  end

  get "/landmarks/new" do
    erb :'/landmarks/new'
  end

  get "/landmarks/:id" do
    id = params[:id]
    @landmark = Landmark.find(id)
    erb :'/landmarks/show'
  end
  get "/landmarks/:id/edit" do
    id = params[:id]
    @landmark = Landmark.find(id)
    erb :'/landmarks/edit'
  end
  patch "/landmarks/:id" do
    id = params[:id]
    landmark_params = params[:landmark]
    @landmark = Landmark.find(id)
    @landmark.update(landmark_params)

    redirect("/landmarks/#{@landmark.id}")
  end
  delete "/landmarks/:id" do
    id = params[:id]
    @landmark = Landmark.find(id)
    @landmark.destroy
    redirect("/landmarks")
  end

end
