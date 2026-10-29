# One observed object in an UpdateScene request (written by scene_updater).

# detection.id: id of the matched database object, or empty for a new object.
# detection.results[0].hypothesis: class name and score.
# detection.bbox: box in the fixed frame.
vision_msgs/Detection3D detection
bool moved                           # matched object whose pose changed (emits object_moved)
string color
std_msgs/ColorRGBA rgb
bool update_grasps                   # replace the stored grasps with "grasps"
grasp_detection_msgs/Grasp[] grasps  # grasps assigned to this object, fixed frame
