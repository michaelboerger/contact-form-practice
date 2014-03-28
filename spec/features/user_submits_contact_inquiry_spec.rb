require 'spec_helper'

feature "User submits contact inquiry", %Q{
  As a site visitor
I want to contact the site's staff
So that I can tell them how awesome they are
} do

# Acceptance Criteria:

# * I must specify a valid email address
# * I must specify a subject
# * I must specify a description
# * I must specify a first name
# * I must specify a last name

  context "with valid attributes" do
    it "creates an issue with valid attributes" do
      visit '/contact_inquiries/new'

      fill_in "Email", with: "Broken@link.com"
      fill_in "Subject", with: "The sign in link is broken"
      fill_in "Description", with: "aslkdhfqsdhj? haskdjhaksjdhkag!"
      fill_in "First name", with: "Guy"
      fill_in "Last name", with: "Incognito"

      click_on "Submit a contact inquiry"

      expect(page).to have_content "Inquiry was succesfully created"
    end
  end

  context "with invalid attributes" do
    it "sees errors for invalid attributes"
  end
end
