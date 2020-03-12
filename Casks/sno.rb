cask 'sno' do
  version '0.3.0'
  sha256 '5f2dc6baa133cccf96540f71c1ad1e7eb216518c58903ae56567a4f8ac441efb'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg 'Sno-0.3.0.pkg'

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
