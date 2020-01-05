class CreateEddyRailsFGroupControlNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :eddy_rails_f_group_control_numbers do |t|
      t.integer(:number, null: false)
      t.string(:f_group, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(
      :eddy_rails_f_group_control_numbers,
      [:number, :f_group],
      unique: true,
    )
  end
end
