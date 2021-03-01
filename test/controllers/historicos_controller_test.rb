require 'test_helper'

class HistoricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historico = historicos(:one)
  end

  test "should get index" do
    get historicos_url, as: :json
    assert_response :success
  end

  test "should create historico" do
    assert_difference('Historico.count') do
      post historicos_url, params: { historico: { user_id: @historico.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show historico" do
    get historico_url(@historico), as: :json
    assert_response :success
  end

  test "should update historico" do
    patch historico_url(@historico), params: { historico: { user_id: @historico.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy historico" do
    assert_difference('Historico.count', -1) do
      delete historico_url(@historico), as: :json
    end

    assert_response 204
  end
end
