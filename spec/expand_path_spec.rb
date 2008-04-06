require File.dirname(__FILE__) + '/spec_helper.rb'

describe String, "#expand_path" do
  it { "/dir1/file1".expand_path.should == "/dir1" }
  it { "/dir1/file1/../dir2/file2".expand_path.should == "/dir1/dir2" }
end

describe String, "#expand_path('foo')" do
  it { "/dir1/file1".expand_path("foo").should == "/dir1/foo" }
  it { "/dir1/file1/../dir2/file2".expand_path("foo").should == "/dir1/dir2/foo" }
end

describe String, "#expand_path('..', 'foo')" do
  it { "/dir1/dir2/file1".expand_path("..", "dir3").should == "/dir1/dir3" }
end
