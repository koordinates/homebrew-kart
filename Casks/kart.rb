cask "kart" do
  version "0.17.0"

  sha256 "406617e29e507e4fe4c56ba4ea266d73398a9ecce0c97b5bbfbfc12b640fa6e2"

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
