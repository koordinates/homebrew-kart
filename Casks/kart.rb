cask "kart" do
  version "0.10.4"
  sha256 "2d02b9b0ec47ce31e93468c803c27484035c50a658142dc616c0e5fa94e00a34"

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
