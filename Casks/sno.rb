cask "sno" do
  version "0.15.0"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "c931f8ad4375518318aabd2b8d23a585fab0d4c642e113d1fd28bf9443a4cff2",
         intel: "d363da90d17242fc2adc5e258f9cb1a1f977010b9583fb325a2f662754b6fa68"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-#{arch}.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

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
