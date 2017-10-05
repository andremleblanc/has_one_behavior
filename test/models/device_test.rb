require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  setup do
    Device.destroy_all
    License.destroy_all
  end

  test "with dependent destroy, doesn't run validations on new association before destroying" do
    device = Device.create!
    device.license = License.new(foo: 'bar')

    assert_raises(RuntimeError) { device.license = License.new(foo: 'baz') }
  end

  test 'with dependent destroy, runs validations on new association before destroying' do
    device = Device.create!
    device.license = License.new(foo: 'bar')
    license = device.license

    device.license = License.new(foo: 'baz')
    device.reload
    assert_equal(device.license, license)
  end
end
