class OtherBoxesController < ApplicationController
  def create
    @other_box = OtherBox.create({'other': params.require(:file)})
  end
end
