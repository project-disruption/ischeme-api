require 'test_helper'

class SchemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheme = schemes(:one)
  end

  test "should get index" do
    get schemes_url, as: :json
    assert_response :success
  end

  test "should create scheme" do
    assert_difference('Scheme.count') do
      post schemes_url, params: { scheme: { description: @scheme.description, excess: @scheme.excess, name: @scheme.name, payout_limit: @scheme.payout_limit, premium: @scheme.premium } }, as: :json
    end

    assert_response 201
  end

  test "should show scheme" do
    get scheme_url(@scheme), as: :json
    assert_response :success
  end

  test "should update scheme" do
    patch scheme_url(@scheme), params: { scheme: { description: @scheme.description, excess: @scheme.excess, name: @scheme.name, payout_limit: @scheme.payout_limit, premium: @scheme.premium } }, as: :json
    assert_response 200
  end

  test "should destroy scheme" do
    assert_difference('Scheme.count', -1) do
      delete scheme_url(@scheme), as: :json
    end

    assert_response 204
  end
end
