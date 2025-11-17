cask "sno" do
  version "0.17.0"

  sha256 "406617e29e507e4fe4c56ba4ea266d73398a9ecce0c97b5bbfbfc12b640fa6e2"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-arm64.pkg",
      verified: "github.com/koordinates/kart/"

  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  livecheck do
    url "https://github.com/koordinates/kart"
    strategy :github_latest
  end

  depends_on arch: :arm64
  conflicts_with cask: "kart"

  pkg "Kart-#{version}-macOS-arm64.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"

  caveats <<~EOS
    Sno has been renamed to Kart.

    In the meantime, sno will install kart for you, but you should update your scripts.

    To migrate now, do:
      brew uninstall sno
      brew install kart
  EOS
end
