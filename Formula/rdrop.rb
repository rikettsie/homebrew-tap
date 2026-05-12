class Rdrop < Formula
  desc "P2P streamed file transfer with ring-based access control"
  homepage "https://github.com/rikettsie/ringdrop"
  url "https://github.com/rikettsie/ringdrop/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f40ecc9439ecb1402f99075b90858e40273d8892799d0d86ff39891650c40546"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rdrop --version")
  end
end
