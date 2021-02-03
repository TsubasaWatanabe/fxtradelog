require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get trades_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_url
    assert_response :success
  end

  test "should create trade" do
    assert_difference('Trade.count') do
      post trades_url, params: { trade: { currency_pair: @trade.currency_pair, entry_datetime: @trade.entry_datetime, entry_memo: @trade.entry_memo, entry_price: @trade.entry_price, exit_datetime: @trade.exit_datetime, exit_memo: @trade.exit_memo, exit_price: @trade.exit_price, expected_profit: @trade.expected_profit, expected_profit_pips: @trade.expected_profit_pips, loss_cut: @trade.loss_cut, loss_cut_pips: @trade.loss_cut_pips, lot: @trade.lot, position: @trade.position, profit_and_loss: @trade.profit_and_loss, profit_and_loss_pips: @trade.profit_and_loss_pips, user_id: @trade.user_id } }
    end

    assert_redirected_to trade_url(Trade.last)
  end

  test "should show trade" do
    get trade_url(@trade)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_url(@trade)
    assert_response :success
  end

  test "should update trade" do
    patch trade_url(@trade), params: { trade: { currency_pair: @trade.currency_pair, entry_datetime: @trade.entry_datetime, entry_memo: @trade.entry_memo, entry_price: @trade.entry_price, exit_datetime: @trade.exit_datetime, exit_memo: @trade.exit_memo, exit_price: @trade.exit_price, expected_profit: @trade.expected_profit, expected_profit_pips: @trade.expected_profit_pips, loss_cut: @trade.loss_cut, loss_cut_pips: @trade.loss_cut_pips, lot: @trade.lot, position: @trade.position, profit_and_loss: @trade.profit_and_loss, profit_and_loss_pips: @trade.profit_and_loss_pips, user_id: @trade.user_id } }
    assert_redirected_to trade_url(@trade)
  end

  test "should destroy trade" do
    assert_difference('Trade.count', -1) do
      delete trade_url(@trade)
    end

    assert_redirected_to trades_url
  end
end
