# typed: false

class Odin < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.3.0-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.0-beta/odin_darwin_amd64.tar.gz"
    sha256 "00b5284435bdcffa3a3cd729d5b38f8c918938d49c79c62b97f2c7541965040c"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.3.0-beta/odin_darwin_arm64.tar.gz"
    sha256 "a33a1b0890ebed9128096076a726a4aba60dddf0dea59cfedd76681ee0d5b76f"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.0-beta/odin_linux_amd64.tar.gz"
    sha256 "7cb4d6a32e7babc045aa3312688a7141b57fb5b2f16a55ad89223673d869a66d"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
