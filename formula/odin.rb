# typed: false

class Odin < Formula
  desc "Interface for service definitions & deployments into self-managed environments"
  homepage "https://github.com/dream11/odin"
  version 1.0.0
  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "sdf"
    sha256 "Dfsd"
  end

  def install
    bin.install "odin"
  end

  test do
    system "#{bin}/odin --version && #{bin}/odin --help"
  end

end
