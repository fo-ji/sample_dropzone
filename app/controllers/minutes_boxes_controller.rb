class MinutesBoxesController < ApplicationController
  def create
    @minutes_box = MinutesBox.create({'meeting': params.require(:file)})
  end
end
