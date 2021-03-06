require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)
require File.expand_path('../shared/each', __FILE__)

describe "IO#each_line" do
  it_behaves_like :io_each, :each_line
end

describe "IO#each_line" do
  it_behaves_like :io_each_default_separator, :each_line
end

describe "IO#each_line" do
  before :each do
    @io = IOSpecs.io_fixture "lines.txt"
  end

  after :each do
    @io.close
  end

  it "raises ArgumentError when given a limit of 0" do
    lambda { @io.each_line(0) }.should raise_error(ArgumentError)
  end
end