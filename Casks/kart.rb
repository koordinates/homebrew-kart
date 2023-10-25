cask "kart" do
  version "0.14.2"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "",
         intel: "88550e3c022c88293220f9a25ca30b8e5a770c48986bdd30457224d6820c0e87"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-#{arch}.pkg",
      verified: "github.com/koordinates/kart/"
  appcast "https://github.com/koordinates/kart/releases.atom"
  name "Kart"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  conflicts_with cask: "sno"

  pkg "Kart-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"
end
