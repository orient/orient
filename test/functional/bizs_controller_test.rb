require 'test_helper'

class BizsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biz" do
    assert_difference('Biz.count') do
      post :create, :biz => { }
    end

    assert_redirected_to biz_path(assigns(:biz))
  end

  test "should show biz" do
    get :show, :id => bizs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bizs(:one).to_param
    assert_response :success
  end

  test "should update biz" do
    put :update, :id => bizs(:one).to_param, :biz => { }
    assert_redirected_to biz_path(assigns(:biz))
  end

  test "should destroy biz" do
    assert_difference('Biz.count', -1) do
      delete :destroy, :id => bizs(:one).to_param
    end

    assert_redirected_to bizs_path
  end
end
