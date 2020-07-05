cask 'sno' do
  version '0.4.1'
  sha256 '921a9e25449be0cef1c26c9ac6bf2b0dabe216354844c2788036b85756fca21f'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg "Sno-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
