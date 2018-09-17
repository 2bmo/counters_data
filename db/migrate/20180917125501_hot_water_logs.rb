class HotWaterLogs < ActiveRecord::Migration[5.2]
  def up
    drop_table :hot_water_logs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
