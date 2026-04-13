class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b00164554bba499aa27d229f96334497ae1627206691976fff9fb3c8ea45f939"
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
