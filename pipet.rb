class Pipet < Formula
  desc "A swiss-army tool for scraping and extracting data from online assets"
  homepage "https://github.com/bjesus/pipet"
  url "https://github.com/bjesus/pipet/archive/refs/tags/0.2.2.tar.gz"
  sha256 "66e93172ad9e6706044bac6e815053a85312896588de1306102e65aa40db7569"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pipet"
  end

  test do
    assert_predicate bin/"pipet", :exist?
  end
end
