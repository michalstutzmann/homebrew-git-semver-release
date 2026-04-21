class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "c2701ad85ecf8d88a81b0775ba1d3fe4ee6184ac3f2897b506ad2dd773de2602"
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
