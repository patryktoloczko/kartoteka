require 'test_helper'

class PacjentsControllerTest < ActionController::TestCase
  setup do
    @pacjent = pacjents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacjents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacjent" do
    assert_difference('Pacjent.count') do
      post :create, pacjent: { email: @pacjent.email, haslo: @pacjent.haslo, imie: @pacjent.imie, nazwisko: @pacjent.nazwisko, nrtelefonu: @pacjent.nrtelefonu, pesel: @pacjent.pesel }
    end

    assert_redirected_to pacjent_path(assigns(:pacjent))
  end

  test "should show pacjent" do
    get :show, id: @pacjent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacjent
    assert_response :success
  end

  test "should update pacjent" do
    patch :update, id: @pacjent, pacjent: { email: @pacjent.email, haslo: @pacjent.haslo, imie: @pacjent.imie, nazwisko: @pacjent.nazwisko, nrtelefonu: @pacjent.nrtelefonu, pesel: @pacjent.pesel }
    assert_redirected_to pacjent_path(assigns(:pacjent))
  end

  test "should destroy pacjent" do
    assert_difference('Pacjent.count', -1) do
      delete :destroy, id: @pacjent
    end

    assert_redirected_to pacjents_path
  end
end
