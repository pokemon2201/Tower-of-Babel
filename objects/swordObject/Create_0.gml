/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 676C900C
/// @DnDApplyTo : {swordObject}
/// @DnDArgument : "steps" "controller.shootSpeed"
/// @DnDArgument : "alarm" "1"
with(swordObject) {
alarm_set(1, controller.shootSpeed);

}