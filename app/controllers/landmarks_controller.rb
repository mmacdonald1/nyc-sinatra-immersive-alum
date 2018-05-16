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

end
