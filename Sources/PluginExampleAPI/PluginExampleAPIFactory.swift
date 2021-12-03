import Plugin

// Sample plugin factory class
public final class PluginExampleAPIFactory : PluginFactory { // you should rename the class after the name of your API...
  public typealias FactoryType = PluginExampleAPI            // ... and update this to the specific API implemented

  // Don't change anything below this comment
  public var pluginType: FactoryType.Type
    
  public init(_ pluginType: FactoryType.Type) {
    self.pluginType = pluginType
  }
  
  public func create() -> FactoryType {
    return pluginType.init()
  }
}
