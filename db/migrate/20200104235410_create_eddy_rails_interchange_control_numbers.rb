class CreateEddyRailsInterchangeControlNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :eddy_rails_interchange_control_numbers do |t|
      t.integer(:control_number, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(:eddy_rails_interchange_control_numbers, :control_number, unique: true)
  end
end
