require 'net/http'
require 'uri'
require 'json'
# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'


class ApisController < ApplicationController
  def index
    url = URI.escape('http://matome.naver.jp/search?q=' + params[:key])

    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    # htmlをパース(解析)してオブジェクトを生成
    doc = Nokogiri::HTML.parse(html, nil, charset)

    ary = []
    for i in 0..doc.xpath("//h3").length-1 do
      ary.push({
        "title"   => doc.xpath("//h3")[i].inner_text,
        "picture" => URI.unescape(doc.xpath("//img")[i]["src"]).split(/[=&]/)[1],
        "star"    => doc.xpath("//span[@class='mdSocialCountList01Num']")[i*2].inner_text,
        "view"    => doc.xpath("//span[@class='mdSocialCountList01Num']")[i*2+1].inner_text,
        "link"    => doc.xpath("//h3[@class='mdMTMTtlList03Ttl']")[i].inner_html.split("\"")[1]
      })
    end
    # タイトルを表示
    render :json => ary
  end
end
