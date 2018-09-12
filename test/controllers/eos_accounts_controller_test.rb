require 'test_helper'

class EosAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eos_account = eos_accounts(:one)
  end

  test "should get index" do
    get eos_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_eos_account_url
    assert_response :success
  end

  test "should create eos_account" do
    assert_difference('EosAccount.count') do
      post eos_accounts_url, params: { eos_account: { description: @eos_account.description, email: @eos_account.email, pubkey: @eos_account.pubkey, username: @eos_account.username } }
    end

    assert_redirected_to eos_account_url(EosAccount.last)
  end

  test "should show eos_account" do
    get eos_account_url(@eos_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_eos_account_url(@eos_account)
    assert_response :success
  end

  test "should update eos_account" do
    patch eos_account_url(@eos_account), params: { eos_account: { description: @eos_account.description, email: @eos_account.email, pubkey: @eos_account.pubkey, username: @eos_account.username } }
    assert_redirected_to eos_account_url(@eos_account)
  end

  test "should destroy eos_account" do
    assert_difference('EosAccount.count', -1) do
      delete eos_account_url(@eos_account)
    end

    assert_redirected_to eos_accounts_url
  end
end
