cask "sno" do
  version "0.10.7"
  sha256 "1df2c7e61a5000d4cf817a3914de6a11c46e570b6664fb43a541a16822864ed2"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  conflicts_with cask: "kart"

  pkg "Kart-#{version}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"

  caveats <<~EOS
    Sno has been renamed to Kart.

    In the meantime, sno will install kart for you, but you should update your scripts.

    To migrate now, do:
      brew uninstall sno
      brew install kart
  EOS
end