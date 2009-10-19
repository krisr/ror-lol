require 'test_helper'

class MotdsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motd" do
    assert_difference('Motd.count') do
      post :create, :motd => { }
    end

    assert_redirected_to motd_path(assigns(:motd))
  end

  test "should show motd" do
    get :show, :id => motds(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => motds(:one).to_param
    assert_response :success
  end

  test "should update motd" do
    put :update, :id => motds(:one).to_param, :motd => { }
    assert_redirected_to motd_path(assigns(:motd))
  end

  test "should destroy motd" do
    assert_difference('Motd.count', -1) do
      delete :destroy, :id => motds(:one).to_param
    end

    assert_redirected_to motds_path
  end
end
