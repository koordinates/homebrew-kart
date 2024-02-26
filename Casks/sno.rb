cask "sno" do
  version "0.15.1"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "70dd9b3a0a4cf8d0d141ba7634de148128185b6247475a97c65d96c3420eaebf",
         intel: "9316a4ca680c711851d1a433f408353272d2cea1ef5286dc47b2df47eaa36a07"

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
