cask "sno" do
  version "0.17.1"

  sha256 "fed1ba69990d4c2912e3cc66db0c8de93f4c8d97dda543f16714ffde47590bb4"

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
