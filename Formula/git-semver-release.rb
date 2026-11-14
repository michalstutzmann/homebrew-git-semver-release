class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/releases/download/v3.0.0/git-semver-release"
  sha256 "26cee772012a6fc86baca69450f1851a23e09d07ede3a2f2a169522fc7c03003"
  license "Apache-2.0"

  depends_on "bash"
  depends_on "git"

  def install
    bin.install "git-semver-release"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/git-semver-release --version").strip
    assert_match "not a Git repository", shell_output("#{bin}/git-semver-release version 2>&1", 4)
  end
end
