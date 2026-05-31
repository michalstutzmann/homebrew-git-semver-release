class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/releases/download/v2.0.1/git-semver-release"
  sha256 "9d15c0e767a1948e6f5bf9697030c7e47b2773d4a4f66264a63f2b0922a5f027"
  license "Apache-2.0"

  depends_on "bash"
  depends_on "git"

  def install
    bin.install "git-semver-release"
  end

  test do
    assert_match "not a git repository", shell_output("#{bin}/git-semver-release version 2>&1", 1)
  end
end
