require 'test_helper'

class NamecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @namecard = namecards(:one)
  end

  test "should get index" do
    get namecards_url
    assert_response :success
  end

  test "should get new" do
    get new_namecard_url
    assert_response :success
  end

  test "should create namecard" do
    assert_difference('Namecard.count') do
      post namecards_url, params: { namecard: { address: @namecard.address, company: @namecard.company, name: @namecard.name, tel: @namecard.tel } }
    end

    assert_redirected_to namecard_url(Namecard.last)
  end

  test "should show namecard" do
    get namecard_url(@namecard)
    assert_response :success
  end

  test "should get edit" do
    get edit_namecard_url(@namecard)
    assert_response :success
  end

  test "should update namecard" do
    patch namecard_url(@namecard), params: { namecard: { address: @namecard.address, company: @namecard.company, name: @namecard.name, tel: @namecard.tel } }
    assert_redirected_to namecard_url(@namecard)
  end

  test "should destroy namecard" do
    assert_difference('Namecard.count', -1) do
      delete namecard_url(@namecard)
    end

    assert_redirected_to namecards_url
  end
end
