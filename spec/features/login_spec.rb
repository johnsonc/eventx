require 'rails_helper'

RSpec.feature "Login:", type: :feature do
  scenario "User visits the homepage" do

    visit root_path

    expect(page).to have_selector("h1.header", text: "EventX")
    expect(page).to have_selector("h4", text: "Sign in with:")
    expect(page).to have_selector("div.sso_option", count: 6)
    expect(page).to have_selector("h5.header", text: "Simple, Easy, Build it")
    expect(page).to have_selector("h1.header", text: "EventX")
    expect(page).to have_selector("a", text: "Create Event")

  end

  scenario "User tries to login with facebook" do

    visit root_path


    click_link 'SEE MORE'

    save_and_open_page

    expect(page).to have_selector("h5", text: "Category")
    expect(page).to have_button("Search")
    expect(page).to have_field("")
  end
end
