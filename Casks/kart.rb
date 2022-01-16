cask "kart" do
  version "0.10.8"
  sha256 "8734b30f3443945983ad6c0e7ed3c95cea65f2a025dca39f0e279d6fa8352690"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Kart"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  conflicts_with cask: "sno"

  pkg "Kart-#{version}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"
end
