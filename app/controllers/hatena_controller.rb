require "xmlrpc/client"

class HatenaController < ApplicationController
    #!/usr/bin/env ruby

    $KCODE = "u"
    
    server = XMLRPC::Client.new("d.hatena.ne.jp", "/xmlrpc")
    result = server.call("hatena.getSimilarWord", {
      "wordlist" => %w[ テニス ]
    })
    
    puts result['wordlist'].map {|v| v['word'] }.join(', ')
end
