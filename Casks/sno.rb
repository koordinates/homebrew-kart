cask 'sno' do
  version '0.7.1'
  sha256 'd68b72868f85dcbc56421f0d1e8ba9c45f3a4bdd97e6071376d5e7a59d8cc4e2'

  # github.com/koordinates/sno was verified as official when first introduced to the cask
  url "https://github.com/koordinates/sno/releases/download/v#{version}/Sno-#{version}.pkg"
  appcast 'https://github.com/koordinates/sno/releases.atom'
  name 'Sno'
  homepage 'https://sno.earth/'

  pkg "Sno-#{version}.pkg"

  uninstall pkgutil: 'com.koordinates.Sno.SnoCore'
end
