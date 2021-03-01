require 'test_helper'

class TetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teto = tetos(:one)
  end

  test "should get index" do
    get tetos_url, as: :json
    assert_response :success
  end

  test "should create teto" do
    assert_difference('Teto.count') do
      post tetos_url, params: { teto: { user_id: @teto.user_id, value: @teto.value } }, as: :json
    end

    assert_response 201
  end

  test "should show teto" do
    get teto_url(@teto), as: :json
    assert_response :success
  end

  test "should update teto" do
    patch teto_url(@teto), params: { teto: { user_id: @teto.user_id, value: @teto.value } }, as: :json
    assert_response 200
  end

  test "should destroy teto" do
    assert_difference('Teto.count', -1) do
      delete teto_url(@teto), as: :json
    end

    assert_response 204
  end
end
