require "application_system_test_case"

class EosAccountsTest < ApplicationSystemTestCase
  setup do
    @eos_account = eos_accounts(:one)
  end

  test "visiting the index" do
    visit eos_accounts_url
    assert_selector "h1", text: "Eos Accounts"
  end

  test "creating a Eos account" do
    visit eos_accounts_url
    click_on "New Eos Account"

    fill_in "Description", with: @eos_account.description
    fill_in "Email", with: @eos_account.email
    fill_in "Pubkey", with: @eos_account.pubkey
    fill_in "Username", with: @eos_account.username
    click_on "Create Eos account"

    assert_text "Eos account was successfully created"
    click_on "Back"
  end

  test "updating a Eos account" do
    visit eos_accounts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @eos_account.description
    fill_in "Email", with: @eos_account.email
    fill_in "Pubkey", with: @eos_account.pubkey
    fill_in "Username", with: @eos_account.username
    click_on "Update Eos account"

    assert_text "Eos account was successfully updated"
    click_on "Back"
  end

  test "destroying a Eos account" do
    visit eos_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eos account was successfully destroyed"
  end
end
