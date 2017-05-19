class MylikesController < ApplicationController

def index
  @likes = Like.all
  render("my_likes/index.html.erb")
end
end
