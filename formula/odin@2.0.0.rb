# typed: false

class OdinAT200 < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "2.0.0"
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.1-beta.1/odin_darwin_amd64.tar.gz"
    sha256 "c4850b897e55340c5cf5bdaa113bad6ca782ad124cc9d87f84cc758d98dacf05"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
