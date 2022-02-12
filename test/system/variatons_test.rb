require "application_system_test_case"

class VariatonsTest < ApplicationSystemTestCase
  setup do
    @variaton = variatons(:one)
  end

  test "visiting the index" do
    visit variatons_url
    assert_selector "h1", text: "Variatons"
  end

  test "creating a Variaton" do
    visit variatons_url
    click_on "New Variaton"

    fill_in "Color", with: @variaton.color_id
    fill_in "Price", with: @variaton.price
    fill_in "Product", with: @variaton.product_id
    fill_in "Size", with: @variaton.size_id
    fill_in "Sku", with: @variaton.sku
    fill_in "Stock", with: @variaton.stock
    click_on "Create Variaton"

    assert_text "Variaton was successfully created"
    click_on "Back"
  end

  test "updating a Variaton" do
    visit variatons_url
    click_on "Edit", match: :first

    fill_in "Color", with: @variaton.color_id
    fill_in "Price", with: @variaton.price
    fill_in "Product", with: @variaton.product_id
    fill_in "Size", with: @variaton.size_id
    fill_in "Sku", with: @variaton.sku
    fill_in "Stock", with: @variaton.stock
    click_on "Update Variaton"

    assert_text "Variaton was successfully updated"
    click_on "Back"
  end

  test "destroying a Variaton" do
    visit variatons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Variaton was successfully destroyed"
  end
end
