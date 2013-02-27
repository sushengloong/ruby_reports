require "minitest_helper"

describe "Reports integration" do
  it "displays available data source" do
    visit reports_path
    page.text.must_include "Oracle"
  end

  it "displays some database table names" do
    visit reports_path
    page.text.must_include "SI_USERS"
    page.text.must_include "USER_INVOICES"
  end
end
