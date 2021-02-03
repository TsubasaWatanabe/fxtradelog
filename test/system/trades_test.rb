require "application_system_test_case"

class TradesTest < ApplicationSystemTestCase
  setup do
    @trade = trades(:one)
  end

  test "visiting the index" do
    visit trades_url
    assert_selector "h1", text: "Trades"
  end

  test "creating a Trade" do
    visit trades_url
    click_on "New Trade"

    fill_in "Currency pair", with: @trade.currency_pair
    fill_in "Entry datetime", with: @trade.entry_datetime
    fill_in "Entry memo", with: @trade.entry_memo
    fill_in "Entry price", with: @trade.entry_price
    fill_in "Exit datetime", with: @trade.exit_datetime
    fill_in "Exit memo", with: @trade.exit_memo
    fill_in "Exit price", with: @trade.exit_price
    fill_in "Expected profit", with: @trade.expected_profit
    fill_in "Expected profit pips", with: @trade.expected_profit_pips
    fill_in "Loss cut", with: @trade.loss_cut
    fill_in "Loss cut pips", with: @trade.loss_cut_pips
    fill_in "Lot", with: @trade.lot
    fill_in "Position", with: @trade.position
    fill_in "Profit and loss", with: @trade.profit_and_loss
    fill_in "Profit and loss pips", with: @trade.profit_and_loss_pips
    fill_in "User", with: @trade.user_id
    click_on "Create Trade"

    assert_text "Trade was successfully created"
    click_on "Back"
  end

  test "updating a Trade" do
    visit trades_url
    click_on "Edit", match: :first

    fill_in "Currency pair", with: @trade.currency_pair
    fill_in "Entry datetime", with: @trade.entry_datetime
    fill_in "Entry memo", with: @trade.entry_memo
    fill_in "Entry price", with: @trade.entry_price
    fill_in "Exit datetime", with: @trade.exit_datetime
    fill_in "Exit memo", with: @trade.exit_memo
    fill_in "Exit price", with: @trade.exit_price
    fill_in "Expected profit", with: @trade.expected_profit
    fill_in "Expected profit pips", with: @trade.expected_profit_pips
    fill_in "Loss cut", with: @trade.loss_cut
    fill_in "Loss cut pips", with: @trade.loss_cut_pips
    fill_in "Lot", with: @trade.lot
    fill_in "Position", with: @trade.position
    fill_in "Profit and loss", with: @trade.profit_and_loss
    fill_in "Profit and loss pips", with: @trade.profit_and_loss_pips
    fill_in "User", with: @trade.user_id
    click_on "Update Trade"

    assert_text "Trade was successfully updated"
    click_on "Back"
  end

  test "destroying a Trade" do
    visit trades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trade was successfully destroyed"
  end
end
