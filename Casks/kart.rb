cask "kart" do
  version "0.10.5"
  sha256 "b8e0bd9261235152190b6fdb8ce06b1ae2a059954710391666569a1a5578e00e"

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
