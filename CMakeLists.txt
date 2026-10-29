cmake_minimum_required(VERSION 3.8)
project(scene_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(grasp_detection_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(vision_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/KeyValue.msg"
  "msg/SceneGrasp.msg"
  "msg/SceneObject.msg"
  "msg/SceneObjectArray.msg"
  "msg/Relation.msg"
  "msg/ObjectUpdate.msg"
  "msg/SceneEvent.msg"
  "srv/QueryObjects.srv"
  "srv/QueryRelations.srv"
  "srv/Query.srv"
  "srv/UpdateScene.srv"
  "srv/SetRelationState.srv"
  "srv/AddRelation.srv"
  "srv/RemoveRelation.srv"
  "srv/RemoveObject.srv"
  "srv/SetProperties.srv"
  "srv/RemoveProperties.srv"
  "srv/Acquire.srv"
  "srv/CaptureView.srv"
  "srv/AcquireGrasps.srv"
  "srv/SetGrasps.srv"
  DEPENDENCIES builtin_interfaces geometry_msgs grasp_detection_msgs std_msgs vision_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
