cask "kart" do
  version "0.15.2"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "442b1e9f628d9cb73873919c517c818ac8a9d0ede4968deb4464f289c59fd597",
         intel: "9340fb7afbc9191e48d2949b006904d6d2198c27caf0be35c621a226c17364ab"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-#{arch}.pkg",
      verified: "github.com/koordinates/kart/"

  name "Kart"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  livecheck do
    url "https://github.com/koordinates/kart"
    strategy :github_latest
  end

  conflicts_with cask: "sno"

  pkg "Kart-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"
end
