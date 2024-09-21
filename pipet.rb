class Pipet < Formula
  desc "A swiss-army tool for scraping and extracting data from online assets"
  homepage "https://github.com/bjesus/pipet"
  url "https://github.com/bjesus/pipet/archive/refs/tags/0.2.0.tar.gz"
  sha256 "30d9ba0ba2115dc69fe83d170e55dca6f08852c880c0ce0ee2bd274d7f513d4a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pipet"
  end

  test do
    assert_predicate bin/"pipet", :exist?
  end
end
