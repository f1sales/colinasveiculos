require "colinasveiculos/version"
require "f1sales_custom/parser"
require "f1sales_custom/source"
require "f1sales_custom/hooks"
require "f1sales_helpers"

module Colinasveiculos
  class Error < StandardError; end
  class F1SalesCustom::Email::Source
    def self.all
      [
        {
          email_id: 'website',
          name: 'Website'
        },
        {
          email_id: 'vernazzamultimarcas',
          name: 'OLX'
        },
      ]
    end
  end

  class F1SalesCustom::Email::Parser
    def parse
      p = OLXParser.new(@email)
      p.parse
    end
  end
end
