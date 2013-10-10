require File.expand_path('../support/helpers', __FILE__)

describe 'packages::default' do

  include Helpers::Packages

  # Example spec tests can be found at http://git.io/Fahwsw
  it 'ensures all packages are installed' do
  	node['packages'].each do |pkg|
  		package(pkg).must_be_installed
  	end
  end

end
