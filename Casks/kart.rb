cask "kart" do
  version "0.17.1"

  sha256 "fed1ba69990d4c2912e3cc66db0c8de93f4c8d97dda543f16714ffde47590bb4"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-arm64.pkg",
      verified: "github.com/koordinates/kart/"

  name "Kart"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  livecheck do
    url "https://github.com/koordinates/kart"
    strategy :github_latest
  end

  depends_on arch: :arm64
  conflicts_with cask: "sno"

  pkg "Kart-#{version}-macOS-arm64.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"
end
