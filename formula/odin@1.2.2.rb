# typed: false

class OdinAT122 < Formula
    desc "Interface for service definitions & deployments into self-managed environments"
    homepage "https://github.com/dream11/odin"
    version "1.2.2"

    # For MacOs Intel based systems
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_darwin_amd64.tar.gz"
      sha256 "bf72d9864f42ff2b526dbda1cb623d1ad2552aa6e79a9f797ae72ad98d6e26e3"
    end

    # For MacOs M1 based systems
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_darwin_arm64.tar.gz"
      sha256 "90879d6ea4a00b6adf54895fb512798a539f7e6048ccf466c960a441987f4fbc"
    end

    # For Linux X64 based systems
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/dream11/odin/releases/download/1.2.2/odin_linux_amd64.tar.gz"
      sha256 "cb95b52146238bf429cb1aba49b9c0f3acdd25e83f0113b84c2f42f8d3d3853f"
    end

    def install
      bin.install "odin"
    end

    test do
      system "#{bin}/odin --version && #{bin}/odin --help"
    end

  end
