class Pipet < Formula
  desc "A swiss-army tool for scraping and extracting data from online assets"
  homepage "https://github.com/bjesus/pipet"
  url "https://github.com/bjesus/pipet/archive/refs/tags/0.1.tar.gz"
  sha256 "e50586f01ac5b7e30fa59ef2279d9a34d80363f5b8eafec61a3e7cd6f373491b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/pipet"
  end

  test do
    assert_match "Pipet version 0.1.0", shell_output("#{bin}/pipet --version")
  end
end
