require 'test_helper'

class GastosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gasto = gastos(:one)
  end

  test "should get index" do
    get gastos_url, as: :json
    assert_response :success
  end

  test "should create gasto" do
    assert_difference('Gasto.count') do
      post gastos_url, params: { gasto: { code: @gasto.code, pending: @gasto.pending, title: @gasto.title, type: @gasto.type, user_id: @gasto.user_id, value: @gasto.value } }, as: :json
    end

    assert_response 201
  end

  test "should show gasto" do
    get gasto_url(@gasto), as: :json
    assert_response :success
  end

  test "should update gasto" do
    patch gasto_url(@gasto), params: { gasto: { code: @gasto.code, pending: @gasto.pending, title: @gasto.title, type: @gasto.type, user_id: @gasto.user_id, value: @gasto.value } }, as: :json
    assert_response 200
  end

  test "should destroy gasto" do
    assert_difference('Gasto.count', -1) do
      delete gasto_url(@gasto), as: :json
    end

    assert_response 204
  end
end
