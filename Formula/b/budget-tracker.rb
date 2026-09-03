class BudgetTracker < Formula
  desc "Feature rich TUI budget tracker app"
  homepage "https://github.com/Feromond/budget-tracker-tui"
  url "https://github.com/Feromond/budget-tracker-tui/archive/refs/tags/v1.5.2.tar.gz"
  sha256 "7d97021b93dc1299976a1059ebb0b78453148095987eda9453ea2aa2146134e4"
  license "GPL-3.0-only"
  head "https://github.com/Feromond/budget-tracker-tui.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "budget-tracker #{version}", shell_output("#{bin}/budget-tracker --version")
    assert_match "Usage:", shell_output("#{bin}/budget-tracker --help")
  end
end
