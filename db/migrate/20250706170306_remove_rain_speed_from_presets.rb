class RemoveRainSpeedFromPresets < ActiveRecord::Migration[8.0]
  def change
    remove_column :presets, :rain_speed, :float
  end
end
