cask 'kart' do
  version '0.9.0'
  sha256 '068d92c3c052e4e93b379fd701f813f61cd7dfdb49910c5dff1a089816319d1a'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Kart-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Kart'
  homepage 'https://kartproject.org'

  pkg "Kart-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
