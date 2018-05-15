class FigureTitleController < ApplicationController

  get "/figuretitlecontroller" do
    @figuretitlescontroller = Figure_Title.all
    erb :'/figuretitlecontroller'
  end

end
