class ValidateSchema < Formula
  desc "Internal CLI tool to validate GraphQL schemas"
  homepage "https://github.com/dream11/validate-schema-cli"
  url "git@github.com:dream11/validate-schema-cli.git", using: :git, tag: "v1.0.4"
  version "1.0.4"

  def install
    bin.install "validateSchema.sh" => "validate-schema"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/validate-schema --help", 0)
  end
end
