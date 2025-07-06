class CreatePresets < ActiveRecord::Migration[8.0]
  def change
    create_table :presets do |t|
      t.string :title
      t.float :ripple_speed
      t.float :ripple_sustain
      t.float :rain_speed
      t.integer :octave
      t.float :filter_frequency
      t.float :filter_q

      t.timestamps
    end
  end
end
