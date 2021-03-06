/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F15F16A
/// @DnDApplyTo : {controller}
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "moveSpeed"
with(controller) {
moveSpeed += 2;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 36070F4C
/// @DnDArgument : "soundid" "sound_item"
/// @DnDSaveInfo : "soundid" "sound_item"
audio_play_sound(sound_item, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 09FF0FCB
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60DC946D
/// @DnDArgument : "var" "controller.testing"
/// @DnDArgument : "value" "false"
if(controller.testing == false)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 59F19D8B
	/// @DnDApplyTo : {upgradeHealth}
	/// @DnDParent : 60DC946D
	with(upgradeHealth) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5F7BEFE0
	/// @DnDApplyTo : {upgradeFireRate}
	/// @DnDParent : 60DC946D
	with(upgradeFireRate) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6460B1B7
	/// @DnDApplyTo : {upgradeSpeed}
	/// @DnDParent : 60DC946D
	with(upgradeSpeed) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5FC1F060
	/// @DnDApplyTo : {upgradeDamage}
	/// @DnDParent : 60DC946D
	with(upgradeDamage) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CAEA57F
	/// @DnDApplyTo : {upgradeShield}
	/// @DnDParent : 60DC946D
	with(upgradeShield) instance_destroy();
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 03D1C9F0
/// @DnDApplyTo : {controller}
/// @DnDArgument : "score" "-50"
/// @DnDArgument : "score_relative" "1"
with(controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(-50);
}