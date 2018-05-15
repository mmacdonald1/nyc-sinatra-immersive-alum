class FiguresController < ApplicationController

  get "/figures" do
    @figures = Figure.all
    erb :'/figures'
  end

end
