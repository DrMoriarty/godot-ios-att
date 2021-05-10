extends Node

signal requestCompleted(status)
var _att = null

# Authorisation statuses:

# 0 = notDetermined
# 1 = restricted
# 2 = denied
# 3 = authorized

func _ready() -> void:
    if Engine.has_singleton('ATT'):
        _att = Engine.get_singleton('ATT')
        _att.connect('requestCompleted', self, '_on_request_completed')
    else:
        push_warning('App Tracking Transparency plugin not found')

func request() -> void:
    if _att != null:
        _att.requestTracking()

func status() -> int:
    if _att != null:
        return _att.status()
    return 0

func _on_request_completed(status: int) -> void:
    emit_signal('requestCompleted', status)
