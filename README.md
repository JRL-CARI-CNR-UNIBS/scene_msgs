# scene_msgs

Interfaces of the scene database ([`scene_db`](../scene_db)): objects,
grasps, relations, change events, and the services to update and query the
scene.

All geometry is in the fixed frame of the database (default `world`). Every
service response carries `scene_version`, which increases by one at every
successful change; `SceneEvent` messages carry the version after the change,
so a client can tell whether what it read is still current.

## Messages

| Message | Description |
|---|---|
| `KeyValue` | `key`, `value` strings: filters, query parameters, user properties |
| `SceneObject` | Persistent object: id (`cup_3`, never reused), class, color, box (pose + size), state (`ok` / `to_verify`), confidence, observations, first/last seen, grasps, properties |
| `SceneObjectArray` | Whole database content with `scene_version` |
| `SceneGrasp` | Stored grasp: database id + `grasp_detection_msgs/Grasp` in the fixed frame |
| `Relation` | `object_a <type> object_b`, with family (`geometric` / `mechanical`), source (`geometric` / `a_priori` / `inferred`), state (`active` / `tightened` / `loosened` / `removed`), fastener, confidence, confirmed, observations |
| `ObjectUpdate` | One observed object in an `UpdateScene` request: `Detection3D` (id = existing object or empty for a new one), moved flag, color, grasps |
| `SceneEvent` | Change notification: `object_added`, `object_moved`, `object_updated`, `object_removed`, `relation_changed`, `scene_cleared` |

## Services

| Service | Description |
|---|---|
| `UpdateScene` | Write one acquisition atomically (objects, grasps, external relations) |
| `QueryObjects` | Typed object query with `KeyValue` filters |
| `QueryRelations` | Typed relation query with `KeyValue` filters |
| `Query` | Composite queries with JSON results: `free_objects`, `blockers_of`, `supported_by`, `disassembly_order` |
| `RemoveObject` | Remove an object, its grasps and relations; returns objects to verify |
| `SetProperties` / `RemoveProperties` | User properties (`located: blue box`) |
| `AddRelation` / `RemoveRelation` / `SetRelationState` | Mechanical relations |
| `Acquire` | Run one acquisition (served by `scene_updater`) |

Field semantics are documented in the comments of the `.msg`/`.srv` files and
in [`scene_db/docs/API.md`](../scene_db/docs/API.md).

## Dependencies

`geometry_msgs`, `std_msgs`, `builtin_interfaces`, `vision_msgs`,
`grasp_detection_msgs`.

## License

Apache License 2.0, see [LICENSE](LICENSE).
