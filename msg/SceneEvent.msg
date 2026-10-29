# Change notification (topic ~/events). Every write increments scene_version.

string OBJECT_ADDED="object_added"
string OBJECT_MOVED="object_moved"       # stored grasps are invalid unless replaced
string OBJECT_UPDATED="object_updated"   # properties, state or grasps changed
string OBJECT_REMOVED="object_removed"
string RELATION_CHANGED="relation_changed"
string SCENE_CLEARED="scene_cleared"

std_msgs/Header header       # stamp of the change, frame_id = fixed frame
string event
string object_id             # object events
uint64 relation_id           # relation events
string details               # human-readable description
uint64 scene_version         # version after the change
