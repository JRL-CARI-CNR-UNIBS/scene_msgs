# An object of the scene database. Geometry is in the fixed frame
# (scene_db parameter "fixed_frame").

string STATE_OK="ok"                 # consistent with the latest observations
string STATE_TO_VERIFY="to_verify"   # its support was removed: check before using it

string id                            # persistent id, e.g. "cup_3", never reused
string class_name
string color                         # dominant color name
std_msgs/ColorRGBA rgb               # measured mean color, in [0, 1]
geometry_msgs/Pose pose              # box center and orientation (rotation about z)
geometry_msgs/Vector3 size           # box size along the object axes (m)
string state
float32 confidence                   # mean detection score
uint32 observations                  # number of updates that observed the object
builtin_interfaces/Time first_seen
builtin_interfaces/Time last_seen    # stamp of the latest observation
builtin_interfaces/Time grasps_stamp # stamp of the images the grasps come from (0 = no grasps)
SceneGrasp[] grasps                  # sorted by decreasing score
KeyValue[] properties                # user properties (see SetProperties)
