require 'test_helper'

class PromosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promo = promos(:one)
  end

  test "should get index" do
    get promos_url, as: :json
    assert_response :success
  end

  test "should create promo" do
    assert_difference('Promo.count') do
      post promos_url, params: { promo: { description: @promo.description, title: @promo.title, user_id: @promo.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show promo" do
    get promo_url(@promo), as: :json
    assert_response :success
  end

  test "should update promo" do
    patch promo_url(@promo), params: { promo: { description: @promo.description, title: @promo.title, user_id: @promo.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy promo" do
    assert_difference('Promo.count', -1) do
      delete promo_url(@promo), as: :json
    end

    assert_response 204
  end
end
