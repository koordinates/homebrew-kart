cask "kart" do
  version "0.12.0"
  sha256 "a967fcdab82b2229f4f8ad7096a99d6bc8657b7143e085aeeb53a9ab316856f3"

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
