class ValidateSchema < Formula
  desc "Internal CLI tool to validate GraphQL schemas"
  homepage "https://github.com/dream11/validate-schema-cli"
  url "https://github.com/dream11/validate-schema-cli/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "1.0.5"

  def install
    bin.install "validateSchema.sh" => "validate-schema"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/validate-schema --help", 0)
  end
end
