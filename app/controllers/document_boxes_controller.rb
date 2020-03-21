class DocumentBoxesController < ApplicationController
  before_action :set_document_box, only: [:show, :edit, :update, :destroy]

  # GET /document_boxes
  # GET /document_boxes.json
  def index
    @document_boxes = DocumentBox.all
  end

  # GET /document_boxes/1
  # GET /document_boxes/1.json
  def show
  end

  # GET /document_boxes/new
  def new
    @document_box = DocumentBox.new
  end

  # GET /document_boxes/1/edit
  def edit
  end

  # POST /document_boxes
  # POST /document_boxes.json
  def create
    @document_box = DocumentBox.create({'document' => params.require(:file)})
    # @document_box = DocumentBox.new(document_box_params)

    # respond_to do |format|
    #   if @document_box.save
    #     format.html { redirect_to @document_box, notice: 'Document box was successfully created.' }
    #     format.json { render :show, status: :created, location: @document_box }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @document_box.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /document_boxes/1
  # PATCH/PUT /document_boxes/1.json
  def update
    respond_to do |format|
      if @document_box.update(document_box_params)
        format.html { redirect_to @document_box, notice: 'Document box was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_box }
      else
        format.html { render :edit }
        format.json { render json: @document_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_boxes/1
  # DELETE /document_boxes/1.json
  def destroy
    @document_box.destroy
    respond_to do |format|
      format.html { redirect_to document_boxes_url, notice: 'Document box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_box
      @document_box = DocumentBox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def document_box_params
      params.require(:document_box).permit(:document)
    end
end
