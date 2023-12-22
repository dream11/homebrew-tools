# typed: false

class OdinAT132 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.3.2"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.2/odin_darwin_amd64.tar.gz"
      sha256 "6be4fadf0b5d77a4445668c5b3bcff28e446cbc0a34c61614d41ec385e57e5ec"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.3.2/odin_darwin_arm64.tar.gz"
      sha256 "68e01e6a83074dfc26a8beb73ab0996a795f89605311c629acc6270e146c49aa"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.2/odin_linux_amd64.tar.gz"
      sha256 "9828397d37acb3a58eb6fbbae2283a94fc164817538c2cf0ef30a2ae13e6d630"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
