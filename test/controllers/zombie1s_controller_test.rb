require 'test_helper'

class Zombie1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zombie1 = zombie1s(:one)
  end

  test "should get index" do
    get zombie1s_url
    assert_response :success
  end

  test "should get new" do
    get new_zombie1_url
    assert_response :success
  end

  test "should create zombie1" do
    assert_difference('Zombie1.count') do
      post zombie1s_url, params: { zombie1: { humanoMordido1: @zombie1.humanoMordido1, integer: @zombie1.integer, name: @zombie1.name } }
    end

    assert_redirected_to zombie1_url(Zombie1.last)
  end

  test "should show zombie1" do
    get zombie1_url(@zombie1)
    assert_response :success
  end

  test "should get edit" do
    get edit_zombie1_url(@zombie1)
    assert_response :success
  end

  test "should update zombie1" do
    patch zombie1_url(@zombie1), params: { zombie1: { humanoMordido1: @zombie1.humanoMordido1, integer: @zombie1.integer, name: @zombie1.name } }
    assert_redirected_to zombie1_url(@zombie1)
  end

  test "should destroy zombie1" do
    assert_difference('Zombie1.count', -1) do
      delete zombie1_url(@zombie1)
    end

    assert_redirected_to zombie1s_url
  end
end
