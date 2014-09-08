class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]

  # GET /things
  # GET /things.json
  def index
    @things = Thing.rank(:row_order).all
  end

  # GET /things/1
  # GET /things/1.json
  def show
  end

  def update_row_order
    @thing = Thing.find(thing_params[:thing_id])
    @thing.row_order_position = thing_params[:row_order_position]
    @thing.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_params
      params.require(:thing).permit(:thing_id, :title, :description, :row_order_position)
    end
end
