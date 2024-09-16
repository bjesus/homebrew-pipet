class Pipet < Formula
  desc "A swiss-army tool for scraping and extracting data from online assets"
  homepage "https://github.com/bjesus/pipet"
  url "https://github.com/bjesus/pipet/archive/refs/tags/0.1.1.tar.gz"
  sha256 "fa683fdca820dcc513f2554bc90b5b520aafc11eec138a78a09987f7ed830e56"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pipet"
  end

  test do
    assert_predicate bin/"pipet", :exist?
  end
end
