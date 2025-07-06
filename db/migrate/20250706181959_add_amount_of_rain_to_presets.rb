class AddAmountOfRainToPresets < ActiveRecord::Migration[8.0]
  def change
    add_column :presets, :amount_of_rain, :integer
  end
end
