require "mini_suffix/version"
require 'ffi'

module MiniSuffix
  extend FFI::Library

  ffi_lib [
    File.join(File.dirname(File.expand_path('..', __FILE__)), 'vendor/libpsl.so'),
    File.join(File.dirname(File.expand_path('..', __FILE__)), 'vendor/libpsl.ppc64le.so'),
    File.join(File.dirname(File.expand_path('..', __FILE__)), 'vendor/libpsl.dylib'),
  ]

  attach_function :psl_builtin, [], :pointer
  attach_function :psl_registrable_domain, [:pointer, :string], :string
  attach_function :psl_get_version, [], :string

  @@context = psl_builtin

  # Extracts the shortest private suffix part of the hostname
  #
  # @param [String] hostname
  # @return [String] private_suffix
  def self.domain(hostname)
    self.psl_registrable_domain(@@context, hostname)
  end
end
