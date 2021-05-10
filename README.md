# App Tracking Transparency plugin for Godot Engine

## Installation

Use [NativeLib-Addon](http://godotengine.org/asset-library/asset/824) or [NativeLib-CLI](https://github.com/DrMoriarty/nativelib-cli) for installation.

## Usage

You should ask user about permission before you start collecting any private data:
```
  ATT.connect('requestCompleted', self, '_att_completed')
  ATT.request()
 
 func _att_completed(status: int) -> void:
    print('ATT Status: %d'%status)
    # if status == 3 the user permitted data collection
    
```

Also you can get tracking status at any time by calling:
```
  var status = ATT.status()
```
