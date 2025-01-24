cask "sno" do
  version "0.16.1"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "74f7626e3d26d537e992643890e8dda4fed269bf1fb7476e757aadea7f3cd883",
         intel: "1a633c43666be78abe838e4d709f2a3a3f0c9709844759c3d41dad6b024c8ecf"

  url "https://github.com/koordinates/kart/releases/download/v#{version}/Kart-#{version}-macOS-#{arch}.pkg",
      verified: "github.com/koordinates/kart/"

  name "Sno (now Kart)"
  desc "Distributed version-control for geospatial and tabular data"
  homepage "https://kartproject.org/"

  livecheck do
    url "https://github.com/koordinates/kart"
    strategy :github_latest
  end

  conflicts_with cask: "kart"

  pkg "Kart-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.koordinates.Sno.SnoCore"

  caveats <<~EOS
    Sno has been renamed to Kart.

    In the meantime, sno will install kart for you, but you should update your scripts.

    To migrate now, do:
      brew uninstall sno
      brew install kart
  EOS
end
