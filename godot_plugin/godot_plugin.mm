
#import <Foundation/Foundation.h>
#import "godot_plugin.h"
#import "godot_plugin_class.h"
#import "core/engine.h"

PluginClass *plugin;

void ios_att_init() {
    plugin = memnew(PluginClass);
    Engine::get_singleton()->add_singleton(Engine::Singleton("ATT", plugin));
}

void ios_att_deinit() {
   if (plugin) {
       memdelete(plugin);
   }
}
