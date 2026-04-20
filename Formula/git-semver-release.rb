class GitSemverRelease < Formula
  desc "Semantic versioning tool for Git using conventional commits"
  homepage "https://github.com/michalstutzmann/git-semver-release"
  url "https://github.com/michalstutzmann/git-semver-release/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "a655f1a42703a318c3746f22faa9be17d0dc087aa63a0280423d816adc43f524"
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
