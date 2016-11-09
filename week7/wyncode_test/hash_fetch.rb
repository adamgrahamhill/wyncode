require "rspec/autorun"

class MyHash < Hash
  undef_method :fetch

  # Implement the method fetch without using `super`
  # def fetch(key, default="default" )
  def fetch(key, optional = {} )

    # self[key]
    if self.has_key?(key)
     self[key]
    else
      if optional.empty?
        raise KeyError
      else
        optional
      end
    end
  end
end


RSpec.describe MyHash do
  subject{ MyHash[:foo, "foo", :bar, nil] }

  # return the value for the key that was passed
  it "gets the value by key" do
    expect(subject.fetch(:foo)).to eq("foo")
    expect(subject.fetch(:bar)).to be_nil
  end

  # return a KeyError if the key does not exist and there is no default value
  it "raises KeyError when trying to access non-existing key" do
    expect { subject.fetch(:fake) }.to raise_error(KeyError)
  end

  # returns the default value when the key does not exist
  it "returns the second argument when trying to access non-existing key" do
    expect(subject.fetch(:fake, "default")).to eq("default")
  end

end

