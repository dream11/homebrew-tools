# typed: false

class OdinAT120 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.2.0"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.0/odin_darwin_amd64.tar.gz"
      sha256 "92d237e0fa5b9683747c912ae7fe518bf0ce68a75dbf110efbfd4d21d1cc83f8"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.2.0/odin_darwin_arm64.tar.gz"
      sha256 "1b31a3c3a5e84086313e5c9b9071703717ff6d251fe153b830b6dad597078d4c"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.0/odin_linux_amd64.tar.gz"
      sha256 "efe20674835554adea4eb42187fbcd39ccc2ff6619ce8bf3ad2fa123d4d90631"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
