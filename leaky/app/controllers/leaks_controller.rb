class LeaksController < ApplicationController
  before_action :leak

  def index
    @leak = $leak.sample(200)
  end

  private

  def leak
    1000.times { $an_array << "A" + "B" + "C" }
  end
end
