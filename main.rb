require 'sinatra'
require 'rss'

get '/' do
    @hatena = RSS::Parser.parse("http://b.hatena.ne.jp/hotentry.rss")
    @tokyoshinbun = RSS::Parser.parse("http://www.zou3.net/php/rss/tokyo2rss.php?cat=main")
    @cnn = RSS::Parser.parse("http://feeds.cnn.co.jp/cnn/rss")
    @gihyo = RSS::Parser.parse("https://gihyo.jp/feed/rss2")
    @array = [@hatena, @tokyoshinbun, @cnn, @gihyo]
    erb :index
end