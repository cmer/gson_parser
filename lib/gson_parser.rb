require "gson_parser/version"
require "node_js"

class GsonParser
  def self.parse(str)
    script = File.dirname(__FILE__) + "/nodejs/parser.js"
    NodeJs.execute script, str
  end
end
