class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  post "/landmarks" do
    landmark= Landmark.create(params)
  end

end
