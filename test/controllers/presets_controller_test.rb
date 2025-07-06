require "test_helper"

class PresetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preset = presets(:one)
  end

  test "should get index" do
    get presets_url, as: :json
    assert_response :success
  end

  test "should create preset" do
    assert_difference("Preset.count") do
      post presets_url, params: { preset: { filter_frequency: @preset.filter_frequency, filter_q: @preset.filter_q, octave: @preset.octave, ripple_speed: @preset.ripple_speed, ripple_sustain: @preset.ripple_sustain, title: @preset.title } }, as: :json
    end

    assert_response :created
  end

  test "should show preset" do
    get preset_url(@preset), as: :json
    assert_response :success
  end

  test "should update preset" do
    patch preset_url(@preset), params: { preset: { filter_frequency: @preset.filter_frequency, filter_q: @preset.filter_q, octave: @preset.octave, ripple_speed: @preset.ripple_speed, ripple_sustain: @preset.ripple_sustain, title: @preset.title } }, as: :json
    assert_response :success
  end

  test "should destroy preset" do
    assert_difference("Preset.count", -1) do
      delete preset_url(@preset), as: :json
    end

    assert_response :no_content
  end
end
