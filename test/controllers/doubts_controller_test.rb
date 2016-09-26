require 'test_helper'

class DoubtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doubt = doubts(:one)
  end

  test "should get index" do
    get doubts_url, as: :json
    assert_response :success
  end

  test "should create doubt" do
    assert_difference('Doubt.count') do
      post doubts_url, params: { doubt: { description: @doubt.description, title: @doubt.title } }, as: :json
    end

    assert_response 201
  end

  test "should show doubt" do
    get doubt_url(@doubt), as: :json
    assert_response :success
  end

  test "should update doubt" do
    patch doubt_url(@doubt), params: { doubt: { description: @doubt.description, title: @doubt.title } }, as: :json
    assert_response 200
  end

  test "should destroy doubt" do
    assert_difference('Doubt.count', -1) do
      delete doubt_url(@doubt), as: :json
    end

    assert_response 204
  end
end
