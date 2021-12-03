import PluginManagerExampleAPI

// The protocol implemented by a plugin instance
public protocol PluginExampleAPI {
  init()
  /// Just returns a "name" for this instance
  func name() -> String
  /// Set up an hosting application API that the plugin instance can use
  mutating func setPluginManagerExampleAPI(_ pluginAPI: PluginManagerExampleAPI)
}
