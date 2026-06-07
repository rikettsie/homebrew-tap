class Rdrop < Formula
  desc "P2P streamed file transfer with ring-based access control"
  homepage "https://github.com/rikettsie/ringdrop"
  url "https://github.com/rikettsie/ringdrop/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "9555d52b5d70b11664e02d88e2eb70b434a9f734622477d82ce5e92d39d6c42b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rdrop --version")
  end
end
