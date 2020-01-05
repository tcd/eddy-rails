class CreateEddyRailsTSetControlNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :eddy_rails_t_set_control_numbers do |t|
      t.integer(:number, null: false)
      t.string(:t_set, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(
      :eddy_rails_t_set_control_numbers,
      [:number, :t_set],
      unique: true,
    )
  end
end
