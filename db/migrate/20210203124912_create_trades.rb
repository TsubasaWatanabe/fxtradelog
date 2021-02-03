class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.references :user, foreign_key: true
      t.datetime :entry_datetime
      t.float :entry_price
      t.string :position
      t.float :expected_profit
      t.float :expected_profit_pips
      t.float :loss_cut
      t.float :loss_cut_pips
      t.string :currency_pair
      t.float :lot
      t.text :entry_memo
      t.datetime :exit_datetime
      t.float :exit_price
      t.text :exit_memo
      t.float :profit_and_loss
      t.float :profit_and_loss_pips

      t.timestamps
    end
  end
end
