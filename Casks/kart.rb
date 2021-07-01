cask "kart" do
  version "0.10.1"
  sha256 "03a0f1029e8d277ad9301a203d2944ae887621a2aea61df5caa31a602d105dbf"

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
