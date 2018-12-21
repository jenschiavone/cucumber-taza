require 'rubygems'
require 'taza/page'

module Google
  class SearchResultsPage < ::Taza::Page

    element(:results_page) {browser.body(class: 'srp')}
    element(:results_headers) {browser.divs(class: 'r')}

    def result_titles
      h3_text = []
      results_headers.each do |header|
        h3_text << header.h3.text
      end
      h3_text
    end

  end
end
