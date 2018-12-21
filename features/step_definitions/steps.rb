Given("I have this stuff") do
  @site = Google.new
end

Given("I visit the Google site") do
  @site = Google.new
end

When("I search for {string}") do |string|
  @site.search_page.search_field.set string
  @site.browser.send_keys(:enter)
end

Then("I should see {string}") do |string|
  @site.search_results_page.results_page.wait_until(&:present?)
  expect(@site.search_results_page.result_titles).to include string
end
