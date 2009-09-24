# This code added to allow us to use mocks in cucumber steps. This is not
# recommended for standard usage, but there are cases when it can be useful. In
# our case for removing the need for an image to have an actual image which
# helps performance no end.
require "spec/mocks"

Before do
  $rspec_mocks ||= Spec::Mocks::Space.new
end

After do
  begin
    $rspec_mocks.verify_all
  ensure
    $rspec_mocks.reset_all
  end
end