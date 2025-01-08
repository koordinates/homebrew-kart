cask "kart" do
  version "0.16.0"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "32fc29f1f62b6b20681139fe18d9ab5fea169f1e493e43e1d9fd28f27fbe2f4f",
         intel: "5f721c9f128ac070f0109a0e047f18ac016c982a2c156f766c9d7046a888d537"

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
