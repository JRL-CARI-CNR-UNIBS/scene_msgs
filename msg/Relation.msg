# A relation "object_a <type> object_b", e.g. "lid screwed_to box".

string FAMILY_GEOMETRIC="geometric"     # derived from the boxes by scene_db
string FAMILY_MECHANICAL="mechanical"   # real constraints: fastenings, closures

string SOURCE_GEOMETRIC="geometric"     # computed by scene_db
string SOURCE_A_PRIORI="a_priori"       # CAD / kit description; prevails on conflicts
string SOURCE_INFERRED="inferred"       # scene graph network

string STATE_ACTIVE="active"            # geometric relations
string STATE_TIGHTENED="tightened"      # mechanical relations
string STATE_LOOSENED="loosened"
string STATE_REMOVED="removed"

uint64 id                # assigned by scene_db (ignored in requests)
string object_a          # object id; in UpdateScene also "#<n>" = n-th object of the request
string object_b
string type              # geometric: on_top_of, inside, near, left_of, right_of
                         # mechanical: screwed_to, bracketed_to, closed_by, held_by, ...
string family
string fastener          # mechanical: screw, bracket, clip, ... (optional)
string state
string source
float32 confidence       # [0, 1]
bool confirmed           # false: low-confidence inferred relation seen only once
uint32 observations
builtin_interfaces/Time stamp
