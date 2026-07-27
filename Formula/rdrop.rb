class Rdrop < Formula
  desc "P2P streamed file transfer with ring-based access control"
  homepage "https://github.com/rikettsie/ringdrop"
  url "https://github.com/rikettsie/ringdrop/archive/refs/tags/v0.19.1.tar.gz"
  sha256 "809ae5d6786b6062bac6309099975935701f0b2d79a0b02158a858125d7dd51a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rdrop --version")
  end
end
