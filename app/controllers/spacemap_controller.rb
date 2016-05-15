class SpacemapController < ApplicationController

  def map
    naver = Never.all.to_json

  end

end
