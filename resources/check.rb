actions :create, :delete

attribute :file, :kind_of => String
attribute :type, :kind_of => String, :equal_to => %w[status metric]
attribute :command, :kind_of => String, :required => true
attribute :subscribers, :kind_of => Array
attribute :standalone, :kind_of => [TrueClass, FalseClass]
attribute :interval, :default => 60
attribute :handlers, :kind_of => Array
attribute :additional, :kind_of => Hash, :default => Hash.new

def initialize(*args)
  super
  @action = :create
end
