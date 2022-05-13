require "test_helper"

class FinishingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finishing = finishings(:one)
  end

  test "should get index" do
    get finishings_url
    assert_response :success
  end

  test "should get new" do
    get new_finishing_url
    assert_response :success
  end

  test "should create finishing" do
    assert_difference("Finishing.count") do
      post finishings_url, params: { finishing: { title: @finishing.title } }
    end

    assert_redirected_to finishing_url(Finishing.last)
  end

  test "should show finishing" do
    get finishing_url(@finishing)
    assert_response :success
  end

  test "should get edit" do
    get edit_finishing_url(@finishing)
    assert_response :success
  end

  test "should update finishing" do
    patch finishing_url(@finishing), params: { finishing: { title: @finishing.title } }
    assert_redirected_to finishing_url(@finishing)
  end

  test "should destroy finishing" do
    assert_difference("Finishing.count", -1) do
      delete finishing_url(@finishing)
    end

    assert_redirected_to finishings_url
  end
end
