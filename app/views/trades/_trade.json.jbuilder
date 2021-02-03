json.extract! trade, :id, :user_id, :entry_datetime, :entry_price, :position, :expected_profit, :expected_profit_pips, :loss_cut, :loss_cut_pips, :currency_pair, :lot, :entry_memo, :exit_datetime, :exit_price, :exit_memo, :profit_and_loss, :profit_and_loss_pips, :created_at, :updated_at
json.url trade_url(trade, format: :json)
