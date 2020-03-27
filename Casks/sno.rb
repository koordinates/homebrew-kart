cask 'sno' do
  version '0.3.1'
  sha256 '0879e38ecb605888390056a6289005f3c679555beae5a95d17e9169bc431fb43'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg "Sno-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
