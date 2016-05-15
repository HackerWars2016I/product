class SpacemapController < ApplicationController

def map
  @twitters = Tweet.all
end

end
