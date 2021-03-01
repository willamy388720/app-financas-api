require 'test_helper'

class ListaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listum = lista(:one)
  end

  test "should get index" do
    get lista_url, as: :json
    assert_response :success
  end

  test "should create listum" do
    assert_difference('Listum.count') do
      post lista_url, params: { listum: { description: @listum.description, type: @listum.type, user_id: @listum.user_id, value: @listum.value } }, as: :json
    end

    assert_response 201
  end

  test "should show listum" do
    get listum_url(@listum), as: :json
    assert_response :success
  end

  test "should update listum" do
    patch listum_url(@listum), params: { listum: { description: @listum.description, type: @listum.type, user_id: @listum.user_id, value: @listum.value } }, as: :json
    assert_response 200
  end

  test "should destroy listum" do
    assert_difference('Listum.count', -1) do
      delete listum_url(@listum), as: :json
    end

    assert_response 204
  end
end
