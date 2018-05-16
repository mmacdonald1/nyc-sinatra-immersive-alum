class FiguresController < ApplicationController

  get "/figures/new" do
    @figures = Figure.all
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'/figures/new'
  end

end
