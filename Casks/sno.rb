cask "sno" do
  version "0.12.3"
  sha256 "ddb202e466fda6f85c63b380905d72ea78b63d443442a949cc0b246a8515b431"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-x86_64.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  conflicts_with cask: "kart"

  pkg "Kart-#{version}-macOS-x86_64.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"

  caveats <<~EOS
    Sno has been renamed to Kart.

    In the meantime, sno will install kart for you, but you should update your scripts.

    To migrate now, do:
      brew uninstall sno
      brew install kart
  EOS
end
