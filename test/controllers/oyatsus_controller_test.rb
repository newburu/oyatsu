require 'test_helper'

class OyatsusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oyatsu = oyatsus(:one)
  end

  test "should get index" do
    get oyatsus_url
    assert_response :success
  end

  test "should get new" do
    get new_oyatsu_url
    assert_response :success
  end

  test "should create oyatsu" do
    assert_difference('Oyatsu.count') do
      post oyatsus_url, params: { oyatsu: { category: @oyatsu.category, detail: @oyatsu.detail, image: @oyatsu.image, maker: @oyatsu.maker, name: @oyatsu.name, site_url: @oyatsu.site_url, watch_at: @oyatsu.watch_at } }
    end

    assert_redirected_to oyatsu_url(Oyatsu.last)
  end

  test "should show oyatsu" do
    get oyatsu_url(@oyatsu)
    assert_response :success
  end

  test "should get edit" do
    get edit_oyatsu_url(@oyatsu)
    assert_response :success
  end

  test "should update oyatsu" do
    patch oyatsu_url(@oyatsu), params: { oyatsu: { category: @oyatsu.category, detail: @oyatsu.detail, image: @oyatsu.image, maker: @oyatsu.maker, name: @oyatsu.name, site_url: @oyatsu.site_url, watch_at: @oyatsu.watch_at } }
    assert_redirected_to oyatsu_url(@oyatsu)
  end

  test "should destroy oyatsu" do
    assert_difference('Oyatsu.count', -1) do
      delete oyatsu_url(@oyatsu)
    end

    assert_redirected_to oyatsus_url
  end
end
