require "xmlrpc/client"

#bundle exec rake hatena
#上記の命令でテニスの関連キーワードを返します。
#しかし、rakeのエラーは出ます。

namespace :hatena do
    
  desc "get hello"
  task :get, [:option] => [:environment] do |t, args|
    ary = Set.new   
    puts args[:option]
    server = XMLRPC::Client.new("d.hatena.ne.jp", "/xmlrpc")
    result = server.call("hatena.getSimilarWord", {
      "wordlist" => args[:option].split(",")
    })

    array = result['wordlist'].map {|v| ary.add(v['word']) }
    
    ary1 = Set.new
    for word in ary do
      puts word
      server = XMLRPC::Client.new("d.hatena.ne.jp", "/xmlrpc")
      result = server.call("hatena.getSimilarWord", {
        "wordlist" => word
      })

      array = result['wordlist'].map {|v| ary1.add(v['word']) }
    end
    
    puts ary1.to_json
    puts ary1.length

  end
end
