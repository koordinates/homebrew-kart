cask "kart" do
  version "0.12.3"
  sha256 "ddb202e466fda6f85c63b380905d72ea78b63d443442a949cc0b246a8515b431"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-x86_64.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Kart"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  conflicts_with cask: "sno"

  pkg "Kart-#{version}-macOS-x86_64.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"
end
