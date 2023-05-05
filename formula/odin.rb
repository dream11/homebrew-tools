# typed: false

class Odin < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version "1.3.2-beta"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_darwin_amd64.tar.gz"
    sha256 "4b6bf398e9a16f2e33afada60bb427cc3835086b8d062825a169c4d88ba89674"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_darwin_arm64.tar.gz"
    sha256 "9acb9a52f65dea646d105775526713f59c7914d80a8fb0e6c09fdef2d76fb64d"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dream11/odin/releases/download/1.3.1-beta/odin_linux_amd64.tar.gz"
    sha256 "194154325cc17ba3e54b21accafa5ee59e1e70520125b9d0fc813df91f143f2d"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
