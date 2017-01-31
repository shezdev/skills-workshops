require 'sinatra/base'
require_relative "./struggle_table_flipper"
require_relative "./random_happy_emoji"

class StruggleTableFlipperApp < Sinatra::Base
  get "/" do
    erb :index, { locals: { happy_emoji: RandomHappyEmoji.new } } #changed from emoji to happy_emoj
  end

  post "/flipped_struggle" do #change from get to post
    # p "im here #{params[:struggle]}"
    flipped_struggle = StruggleTableFlipper.new(params[:struggle]).flipped_struggle
    erb :flipped_struggle, { locals: { flipped_struggle: flipped_struggle } }
  end

  run! if app_file == $0
end
