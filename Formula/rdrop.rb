class Rdrop < Formula
  desc "P2P streamed file transfer with ring-based access control"
  homepage "https://github.com/rikettsie/ringdrop"
  url "https://github.com/rikettsie/ringdrop/archive/refs/tags/v0.22.1.tar.gz"
  sha256 "87133d0c2827037692edeaa7bb233f37dfa9a1f0a916af92fd92162c494032b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rdrop --version")
  end
end
