class SetLogCount < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:clients, :log_count, 0)
  end
end
