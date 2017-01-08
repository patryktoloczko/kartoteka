require 'test_helper'

class DiagnozasControllerTest < ActionController::TestCase
  setup do
    @diagnoza = diagnozas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnozas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnoza" do
    assert_difference('Diagnoza.count') do
      post :create, diagnoza: { opis: @diagnoza.opis, typ: @diagnoza.typ }
    end

    assert_redirected_to diagnoza_path(assigns(:diagnoza))
  end

  test "should show diagnoza" do
    get :show, id: @diagnoza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnoza
    assert_response :success
  end

  test "should update diagnoza" do
    patch :update, id: @diagnoza, diagnoza: { opis: @diagnoza.opis, typ: @diagnoza.typ }
    assert_redirected_to diagnoza_path(assigns(:diagnoza))
  end

  test "should destroy diagnoza" do
    assert_difference('Diagnoza.count', -1) do
      delete :destroy, id: @diagnoza
    end

    assert_redirected_to diagnozas_path
  end
end
