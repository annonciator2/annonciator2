require 'test_helper'

class KebabsControllerTest < ActionController::TestCase
  setup do
    @kebab = kebabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kebabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kebab" do
    assert_difference('Kebab.count') do
      post :create, kebab: { addresse: @kebab.addresse, latlong: @kebab.latlong, name: @kebab.name, note_moyenne: @kebab.note_moyenne, tel: @kebab.tel }
    end

    assert_redirected_to kebab_path(assigns(:kebab))
  end

  test "should show kebab" do
    get :show, id: @kebab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kebab
    assert_response :success
  end

  test "should update kebab" do
    patch :update, id: @kebab, kebab: { addresse: @kebab.addresse, latlong: @kebab.latlong, name: @kebab.name, note_moyenne: @kebab.note_moyenne, tel: @kebab.tel }
    assert_redirected_to kebab_path(assigns(:kebab))
  end

  test "should destroy kebab" do
    assert_difference('Kebab.count', -1) do
      delete :destroy, id: @kebab
    end

    assert_redirected_to kebabs_path
  end
end
