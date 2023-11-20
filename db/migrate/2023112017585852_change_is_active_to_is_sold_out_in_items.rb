class ChangeIsActiveToIsSoldOutInItems < ActiveRecord::Migration[6.0] # あなたのRailsのバージョンに応じて変更してください
  def change
    change_table :items do |t|
      t.rename :is_active, :is_sold_out
      t.change :is_sold_out, :boolean, null: false, default: false
    end
  end
end