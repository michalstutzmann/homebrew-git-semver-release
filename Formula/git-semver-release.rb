class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/archive/refs/tags/v1.6.2.tar.gz"
  sha256 "8527b13f0ef5ca93d9244a1c8dd689afad9051e4abdaefccd53816bf407478b3"
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
