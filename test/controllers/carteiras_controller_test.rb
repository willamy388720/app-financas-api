require 'test_helper'

class CarteirasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carteira = carteiras(:one)
  end

  test "should get index" do
    get carteiras_url, as: :json
    assert_response :success
  end

  test "should create carteira" do
    assert_difference('Carteira.count') do
      post carteiras_url, params: { carteira: { user_id: @carteira.user_id, value: @carteira.value } }, as: :json
    end

    assert_response 201
  end

  test "should show carteira" do
    get carteira_url(@carteira), as: :json
    assert_response :success
  end

  test "should update carteira" do
    patch carteira_url(@carteira), params: { carteira: { user_id: @carteira.user_id, value: @carteira.value } }, as: :json
    assert_response 200
  end

  test "should destroy carteira" do
    assert_difference('Carteira.count', -1) do
      delete carteira_url(@carteira), as: :json
    end

    assert_response 204
  end
end
