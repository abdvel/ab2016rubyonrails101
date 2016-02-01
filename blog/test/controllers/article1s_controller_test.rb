require 'test_helper'

class Article1sControllerTest < ActionController::TestCase
  setup do
    @article1 = article1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article1" do
    assert_difference('Article1.count') do
      post :create, article1: { text: @article1.text, title: @article1.title }
    end

    assert_redirected_to article1_path(assigns(:article1))
  end

  test "should show article1" do
    get :show, id: @article1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article1
    assert_response :success
  end

  test "should update article1" do
    patch :update, id: @article1, article1: { text: @article1.text, title: @article1.title }
    assert_redirected_to article1_path(assigns(:article1))
  end

  test "should destroy article1" do
    assert_difference('Article1.count', -1) do
      delete :destroy, id: @article1
    end

    assert_redirected_to article1s_path
  end
end
