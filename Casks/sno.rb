cask "sno" do
  version "0.13.0"
  sha256 "852e247bdada04f87edd3269c06d718d3810d1a4cae2d9eae3636ffa4770fad6"

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
