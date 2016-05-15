class SpacemapController < ApplicationController

def map
  @twitters = Tweet.all
  @nevers = Never.all
end

end
