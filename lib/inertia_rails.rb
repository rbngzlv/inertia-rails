require 'inertia_rails/renderer'
require 'inertia_rails/engine'

ActionController::Renderers.add :inertia do |component, options|
  InertiaRails::Renderer.new(
    component,
    self,
    request,
    response,
    method(:render),
    options,
  ).render
end

module InertiaRails
  class Error < StandardError; end
end
