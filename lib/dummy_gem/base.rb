module DummyGem
  class Base 
    # Define all the common methods to be used

    # To get the configuration variables set through the app initalizers
    def config
      DummyGem.configuration
    end
  end
end