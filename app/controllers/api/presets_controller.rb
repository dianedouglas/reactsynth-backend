class Api::PresetsController < ApplicationController
  before_action :set_preset, only: %i[ show update destroy ]

  # GET /presets
  def index
    @presets = Preset.all

    render json: @presets
  end

  # GET /presets/1
  def show
    render json: @preset
  end

  # POST /presets
  def create
    @preset = Preset.new(preset_params)

    if @preset.save
      render json: @preset, status: :created
    else
      render json: @preset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /presets/1
  def update
    if @preset.update(preset_params)
      render json: @preset
    else
      render json: @preset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /presets/1
  def destroy
    @preset.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preset
      @preset = Preset.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def preset_params
      params.expect(preset: [ :title, :ripple_speed, :ripple_sustain, :amount_of_rain, :octave, :filter_frequency, :filter_q ])
    end
end
