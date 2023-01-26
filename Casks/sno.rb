cask "sno" do
  version "0.12.0"
  sha256 "a967fcdab82b2229f4f8ad7096a99d6bc8657b7143e085aeeb53a9ab316856f3"

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
