require 'test_helper'

class HomepageFlowTest < ActionDispatch::IntegrationTest
  test "home page should load correctly" do
    get home_path
    assert_template "static_pages/home"
    assert_select "a[href=?]", root_path
    assert_select "nav.navbar.navbar-default"
  end
end
