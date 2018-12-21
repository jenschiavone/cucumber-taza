require 'rubygems'
require 'taza/page'

module Google
  class SearchPage < ::Taza::Page

    element(:search_field) { browser.text_field(name: 'q')}

  end
end
