# typed: false

class OdinAT120Alpha < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.2.0-alpha"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-alpha/odin_darwin_amd64.tar.gz"
    sha256 "6a66cabde350ed132e8a8532ce4ed17e23b81f7d7e7f2f5aa1c3e89488740983"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.2.0-alpha/odin_darwin_arm64.tar.gz"
    sha256 "645049efc1fd75a182a80391847469387acd9598d4f80224d6dbe985aa694400"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.2.0-alpha/odin_linux_amd64.tar.gz"
    sha256 "76f88227e0ee5599211e57b8cbfb8fabf0bc465644b485771a0146c5ec0252e1"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
