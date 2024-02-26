cask "kart" do
  version "0.15.1"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "70dd9b3a0a4cf8d0d141ba7634de148128185b6247475a97c65d96c3420eaebf",
         intel: "9316a4ca680c711851d1a433f408353272d2cea1ef5286dc47b2df47eaa36a07"

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
