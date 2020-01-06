class AddEddyTables < ActiveRecord::Migration[6.0]

  def self.up
    create_table :eddy_rails_interchange_control_numbers do |t|
      t.integer(:number, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(:eddy_rails_interchange_control_numbers, :number, unique: true)

    create_table :eddy_rails_f_group_control_numbers do |t|
      t.integer(:number, null: false)
      t.string(:f_group, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(:eddy_rails_f_group_control_numbers, [:number, :f_group], unique: true)

    create_table :eddy_rails_t_set_control_numbers do |t|
      t.integer(:number, null: false)
      t.string(:t_set, null: false)
      t.boolean(:received, default: false)
      t.boolean(:sent, default: false)
      t.timestamps(null: false)
    end
    add_index(:eddy_rails_t_set_control_numbers, [:number, :t_set], unique: true)
  end

  def self.down
    drop_table(:eddy_interchange_control_numbers)
    drop_table(:eddy_f_group_control_numbers)
    drop_table(:eddy_t_set_control_numbers)
  end

end
