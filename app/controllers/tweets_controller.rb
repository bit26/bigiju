class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def create
    @tweets = Tweet.new(tweet_params)
    @tweets.save
    redirect_to root_path , notice: 'ツイートを保存しました'
  end
  
  private
  def tweet_params
      params.require(:tweet).permit(:tweet , :username)
  end
end
