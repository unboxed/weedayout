require 'test_helper'

class ToiletsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toilets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toilet" do
    assert_difference('Toilet.count') do
      post :create, :toilet => { }
    end

    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should show toilet" do
    get :show, :id => toilets(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => toilets(:one).id
    assert_response :success
  end

  test "should update toilet" do
    put :update, :id => toilets(:one).id, :toilet => { }
    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should destroy toilet" do
    assert_difference('Toilet.count', -1) do
      delete :destroy, :id => toilets(:one).id
    end

    assert_redirected_to toilets_path
  end
end
