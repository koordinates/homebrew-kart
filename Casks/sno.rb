cask 'sno' do
  version '0.7.0'
  sha256 '4bc4b8f90e74bd7727c5bb050d6bcb874c40aa165ecf2105efdd15b4d7221100'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg "Sno-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
