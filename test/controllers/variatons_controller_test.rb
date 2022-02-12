require 'test_helper'

class VariatonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variaton = variatons(:one)
  end

  test "should get index" do
    get variatons_url
    assert_response :success
  end

  test "should get new" do
    get new_variaton_url
    assert_response :success
  end

  test "should create variaton" do
    assert_difference('Variaton.count') do
      post variatons_url, params: { variaton: { color_id: @variaton.color_id, price: @variaton.price, product_id: @variaton.product_id, size_id: @variaton.size_id, sku: @variaton.sku, stock: @variaton.stock } }
    end

    assert_redirected_to variaton_url(Variaton.last)
  end

  test "should show variaton" do
    get variaton_url(@variaton)
    assert_response :success
  end

  test "should get edit" do
    get edit_variaton_url(@variaton)
    assert_response :success
  end

  test "should update variaton" do
    patch variaton_url(@variaton), params: { variaton: { color_id: @variaton.color_id, price: @variaton.price, product_id: @variaton.product_id, size_id: @variaton.size_id, sku: @variaton.sku, stock: @variaton.stock } }
    assert_redirected_to variaton_url(@variaton)
  end

  test "should destroy variaton" do
    assert_difference('Variaton.count', -1) do
      delete variaton_url(@variaton)
    end

    assert_redirected_to variatons_url
  end
end
