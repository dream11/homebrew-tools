# typed: false

class OdinAT131Beta1 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.3.1-beta.1"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta.1/odin_darwin_amd64.tar.gz"
      sha256 "c4850b897e55340c5cf5bdaa113bad6ca782ad124cc9d87f84cc758d98dacf05"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta.1/odin_darwin_arm64.tar.gz"
      sha256 "36cbe042957ccf96ae51be2b6d99624c62fa98576f2fd2c42b7add3cc4d996d1"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.3.1-beta.1/odin_linux_amd64.tar.gz"
      sha256 "2fdcb78ff1ebfd924da7883111065891c7fa6ce2f01534766fd369c2374360d6"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
