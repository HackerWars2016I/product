require "xmlrpc/client"

#bundle exec rake hatena
#上記の命令でテニスの関連キーワードを返します。
#しかし、rakeのエラーは出ます。

namespace :hatena do
    
    server = XMLRPC::Client.new("d.hatena.ne.jp", "/xmlrpc")
    result = server.call("hatena.getSimilarWord", {
      "wordlist" => %w[ テニス ]
    })
    
    array = result['wordlist'].map {|v| v['word'] }.join(', ')
    puts array
end
