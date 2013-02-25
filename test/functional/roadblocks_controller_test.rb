require 'test_helper'

class RoadblocksControllerTest < ActionController::TestCase
  setup do
    @roadblock = roadblocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roadblocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roadblock" do
    assert_difference('Roadblock.count') do
      post :create, roadblock: { description: @roadblock.description, status: @roadblock.status }
    end

    assert_redirected_to roadblock_path(assigns(:roadblock))
  end

  test "should show roadblock" do
    get :show, id: @roadblock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roadblock
    assert_response :success
  end

  test "should update roadblock" do
    put :update, id: @roadblock, roadblock: { description: @roadblock.description, status: @roadblock.status }
    assert_redirected_to roadblock_path(assigns(:roadblock))
  end

  test "should destroy roadblock" do
    assert_difference('Roadblock.count', -1) do
      delete :destroy, id: @roadblock
    end

    assert_redirected_to roadblocks_path
  end
end
