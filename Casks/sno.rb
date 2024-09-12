cask "sno" do
  version "0.15.3"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "6c3264fc7f9a80bbe1dc7450d645976597966b573a2bb7a636a6a43eddfe8e56",
         intel: "bf6fa7e7b7ef2bed2af00f42e3caf5cd76c372af243c820da74665074c7e7cfc"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-#{arch}.pkg",
      verified: "github.com/koordinates/kart/"

  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  livecheck do
    url "https://github.com/koordinates/kart"
    strategy :github_latest
  end

  conflicts_with cask: "kart"

  pkg "Kart-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"

  caveats <<~EOS
    Sno has been renamed to Kart.

    In the meantime, sno will install kart for you, but you should update your scripts.

    To migrate now, do:
      brew uninstall sno
      brew install kart
  EOS
end
