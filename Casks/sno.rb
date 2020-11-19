cask 'sno' do
  version '0.6.0'
  sha256 '36d2ab27a0d0833b9f73427b3babb791026c4db7fc9f9d135234419d27682ea4'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg "Sno-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
