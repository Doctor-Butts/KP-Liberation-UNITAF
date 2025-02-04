/*
CONFIG FILE FOR KP LIBERATION
*/

// Vehicle classnames which also function as ACE medical vehicles.
KP_liberation_medical_vehicles = [
	"B_Truck_01_medical_F",
	"B_T_Truck_01_medical_F",
	"rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy",
	"rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",
	"rhsusf_m113_usarmy_medical",
	"rhsusf_m113d_usarmy_medical",
	"rhsusf_M1230a1_usarmy_d",
	"rhsusf_M1230a1_usarmy_wd",
	"RHS_UH60M_MEV",
	"RHS_UH60M_MEV2",
	"RHS_UH60M_MEV_d",
	"RHS_UH60M_MEV2_d",
	"UK3CB_BAF_LandRover_Amb_FFR_Green_A_MTP",
	"UK3CB_BAF_LandRover_Amb_FFR_Sand_A_DDPM",
    "gm_gc_army_ural375d_medic",
    "gm_gc_army_ural375d_medic_win",
    "gm_ge_army_u1300l_medic",
    "gm_ge_army_u1300l_medic_win_rc"
];

// Building classnames which also function as ACE medical facilities.
KP_liberation_medical_facilities = [
    "Land_Medevac_house_V1_F",
    "Land_Medevac_HQ_V1_F"
];

// Classnames of ACE3 crates (which have to be in the unit preset as well).
KP_liberation_ace_crates = [
	"ACE_Box_82mm_Mo_HE",
	"ACE_Box_82mm_Mo_Smoke",
	"ACE_Box_82mm_Mo_Illum",
	"ACE_medicalSupplyCrate_advanced"
];

/* - Custom unit and arsenal preset settings.
If you want to change a preset, it's recommended to set all four presets to 0 and edit the appropriate custom.sqf files in the preset folders.*/

/* BLUFOR preset:
0  = Custom (default vanilla with many optional mods supported)
1  = Apex Tanoa (apex vanilla with many optional mods supported)
2  = 3cb BAF (MTP)
3  = 3cb BAF (Desert)
4  = BWMod Bundeswehr (Flecktarn)
5  = BWMod Bundeswehr (Tropentarn)
6  = RHS USAF (Woodland)
7  = RHS USAF (Desert)
8  = RHS AFRF (VDV/MSV)
9  = Germany West (Global Mobilization)
10 = Germany West Winter (Global Mobilization)
11 = Germany East (Global Mobilization)
12 = Germany East Winter (Global Mobilization)
13 = CSAT Brown
14 = CSAT Green */
KP_liberation_preset_blufor = 0;

/* OPFOR preset:
0  = Custom (default vanilla CSAT)
1  = Apex Tanoa (apex vanilla CSAT)
2  = RHS AFRF (EMR/MSV)
3  = Project OPFOR (Takistan)
4  = Project OPFOR (Islamic State)
5  = Project OPFOR (Sahrani)
6  = AAF
7  = NATO
8  = Germany West (Global Mobilization)
9  = Germany West Winter (Global Mobilization)
10 = Germany East (Global Mobilization)
11 = Germany East Winter (Global Mobilization) */
KP_liberation_preset_opfor = 2;

/* Resistance preset:
0 = Custom (default vanilla FIA)
1 = Apex Tanoa (apex vanilla Syndikat)
2 = RHS GREF
3 = Project OPFOR (Middle Eastern)
4 = Project OPFOR (Sahrani)
5 = Germany (Global Mobilization) */
KP_liberation_preset_resistance = 2;

/* Civilians preset:
0 = Custom (default vanilla)
1 = Apex Tanoa (apex vanilla)
2 = Project OPFOR (Middle Eastern)
3 = RDS Civilians
4 = Germany (Global Mobilization) */
KP_liberation_preset_civilians = 0;

/* Which arsenal preset should be used?
0 = Use the default blacklist method (defined below).
1 = Custom arsenal preset (edit the custom.sqf in the arsenal_presets\ folder to change things for your own versions and tweaks).
2 = Killah Potatoes Gaming Community arsenal preset.
3 = RHS USAF arsenal preset.
4 = RHS USAF arsenal preset with ACE.
5 = RHS USAF arsenal preset with ACE and ACRE.
6 = 3cbBAF and RHS USAF arsenal preset.
7 = GM West arsenal preset.
8 = GM East arsenal preset.
9 = CSAT arsenal preset. */
KP_liberation_arsenal = 1;

/* - Fuel consumption settings.
Time in minutes till a full tank depletes whilst the vehicle is standing still with a running engine.	*/
KP_liberation_fuel_neutral = 200;
// Time in minutes till a full tank depletes whilst the vehicle is driving below max speed.
KP_liberation_fuel_normal = 120;
// Time in minutes till a full tank depletes whilst the vehicle is driving at max speed.
KP_liberation_fuel_max = 90;

/* - Gameplay constant settings.
Name of the savegame namespace inside of the [ServerProfileName].vars.Arma3Profile file.	*/
GRLIB_save_key = "KP_LIBERATION_" + (toUpper worldName) + "_SAVEGAME";

GRLIB_side_friendly = WEST;																						// Friendly side.
GRLIB_side_enemy = EAST;																						// Enemy side.
GRLIB_side_resistance = RESISTANCE;																				// Resistance side.
GRLIB_side_civilian = CIVILIAN;																					// Civilian side.
GRLIB_respawn_marker = "respawn";																				// Respawn marker name.

GRLIB_color_friendly = "ColorBLUFOR";																			// Friendly sector marker color.
GRLIB_color_enemy = "ColorOPFOR";																				// Enemy sector marker color.
GRLIB_color_enemy_bright = "ColorRED";																			// Enemy sector marker color (activated).

GRLIB_fob_range = 125;																							// Build range around the main FOB building.
GRLIB_halo_altitude = 2500;																						// Altitude in metres for the HALO jump.
GRLIB_secondary_missions_costs = [15, 10, 8];																	// Intel price for the secondary missions [FOB hunting, Convoy ambush, SAR].
GRLIB_secondary_objective_impact = 0.6;																			// The percentage impact against enemy combat readiness for a successful FOB hunt.
GRLIB_recycling_percentage = 0.8;																				// Percentage of resources you get back from recycling.
KP_liberation_production_interval = 30				/ GRLIB_resources_multiplier;								// Time in minutes until a production process is finished, when resources multiplier is set to 1.

GRLIB_sector_size = 1000;																						// Range to activate a sector.
GRLIB_capture_size = 175;																						// Range to capture a sector.
GRLIB_defended_buildingpos_part = 0.4;																			// Multiplier for defenders in buildings.
GRLIB_battlegroup_size = 6							* (sqrt GRLIB_unitcap) * (sqrt GRLIB_csat_aggressivity);	// Size of enemy battlegroups.
GRLIB_vulnerability_timer = 1200;																				// Time in seconds how long a captured sector is vulnerable to enemy troops.
GRLIB_radiotower_size = 2500;																					// Radio Tower scanning range.
GRLIB_surrender_chance = 80;																					// Chance that enemy infantry will surrender after heavy losses are encountered.

GRLIB_civilians_amount = 20 						* GRLIB_civilian_activity;									// Civilian count multiplier.
GRLIB_cleanup_delay = 1200;																						// Time in seconds until bodies of dead soldiers are cleaned up.

GRLIB_blufor_cap = 100								* GRLIB_unitcap;											// Cap for BLUFOR.
GRLIB_sector_cap = 180								* GRLIB_unitcap;											// Cap for sector defenders.
GRLIB_battlegroup_cap = 150							* GRLIB_unitcap;											// Cap for enemy battlegroups.
GRLIB_patrol_cap = 150								* GRLIB_unitcap;											// Cap for enemy patrols.

KP_liberation_cr_kill_penalty = 5;																				// Civil Reputation penalty for killing a civilian.
KP_liberation_cr_building_penalty = 3;																			// Civil Reputation penalty for destroying/damaging a building.
KP_liberation_cr_vehicle_penalty = 2;																			// Civil Reputation penalty for stealing a civilian vehicle.
KP_liberation_cr_resistance_penalty = 3;																		// Civil Reputation penalty for killing a friendly resistance soldier.
KP_liberation_cr_sector_gain = 5;																				// Civil Reputation gain for liberate a sector.
KP_liberation_cr_wounded_chance = 35;																			// Chance (0-100) that there are wounded civilians right after capturing a sector.
KP_liberation_cr_wounded_gain = 3;																				// Civil Reputation gain for providing medical assistance for wounded civilians.

KP_liberation_civinfo_min = 5400;																				// Civil Informant minimum spawn time. (seconds)
KP_liberation_civinfo_max = 10800;																				// Civil Informant maximum spawn time. (seconds)
KP_liberation_civinfo_chance = 75;																				// Civil Informant spawn chance. (0-100)
KP_liberation_civinfo_intel = 5;																				// Civil Informant intel amount.
KP_liberation_civinfo_duration = 1200;																			// Civil Informant staytime until despawning. (seconds)
KP_liberation_civinfo_task_chance = 40;																			// Chance (0-100) that the delivered informant will spawn a time critical task.
KP_liberation_civinfo_task_duration = 900;																		// Duration until the task will despawn if no player is near. (seconds)

KP_liberation_convoy_ambush_chance = 2;																			// Chance that a logistic convoy will be ambushed, when civil reputation is low.
KP_liberation_convoy_ambush_duration = 1200;																	// Duration of the convoy ambush event. (seconds)

KP_liberation_resistance_tier2 = 30;																			// At which strength (0-100) the guerilla forces will be at tier 2?
KP_liberation_resistance_tier3 = 70;																			// At which strength (0-100) the guerilla forces will be at tier 3?
KP_liberation_resistance_at_chance = 20;																		// Chance that a guerilla unit has a RPG. (tier 2 and 3)
KP_liberation_resistance_sector_chance = 35;																	// Chance that a guerilla squad will join an ongoing sector attack.
KP_liberation_resistance_ambush_chance = 25;																	// Chance that some guerilla units will spawn in blufor sectors for an ambush, if reputation is low.

/* - Default arsenal blacklist method.
Useless if you're using anything other than "kp_liberation_arsenal = 0;" above. A whitelisted arsenal is always more performance friendly then a blacklisted arsenal.
REMEMBER: All static turret and UAV bags should be defined here, to stop players from exploiting free resources via the virtual arsenal.	*/
blacklisted_from_arsenal = [
	"I_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"O_HMG_01_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"I_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"I_GMG_01_high_weapon_F",
	"B_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"I_Mortar_01_weapon_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_high_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_AA_01_weapon_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AT_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F",
	"I_UAV_06_backpack_F",
	"B_UAV_06_backpack_F",
	"O_UAV_06_backpack_F",
	"I_UAV_06_medical_backpack_F",
	"B_UAV_06_medical_backpack_F",
	"O_UAV_06_medical_backpack_F",
	"C_UAV_06_backpack_F",
	"C_UAV_06_medical_backpack_F",
	"C_IDAP_UAV_01_backpack_F",
	"C_IDAP_UAV_06_backpack_F",
	"C_IDAP_UAV_06_medical_backpack_F",
	"C_IDAP_UAV_06_antimine_backpack_F",
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag",
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_Kornet_Gun_Bag",
	"RHS_Kornet_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"UK3CB_BAF_L16",
	"UK3CB_BAF_L16_Tripod",
	"UK3CB_BAF_M6",
	"UK3CB_BAF_L111A1",
	"UK3CB_BAF_L134A1",
	"UK3CB_BAF_Tripod",
	"optic_Nightstalker",
	"optic_tws",
	"optic_tws_mg"
];

// Items which should be added as allowed Items, when they get blacklisted, even if they are not in the blacklisted_from_arsenal array
KP_liberation_allowed_items_extension = [/* 
	"ItemRadioAcreFlagged",
	"rhs_acc_ekp8_18b",
	"rhs_acc_ekp8_18c",
	"rhs_acc_ekp8_18d",
	"rhs_rshg2_mag",
	"rhs_rpg26_mag",
	"rhsusf_acc_g33_T1_flip",
	"rhsusf_acc_g33_xps3_flip",
	"rhsusf_acc_g33_xps3_tan_flip",
	"rhsusf_acc_anpeq15_bk_light_h",
	"rhs_m136_mag",
	"rhs_m136_hedp_mag",
	"rhs_m136_hp_mag",
	"rhs_weap_M136_used",
	"rhs_m72a7_mag",
	"BWA3_acc_LLM01_flash",
	"BWA3_acc_LLM01_laser",
	"BWA3_acc_LLM01_flash_underbarrel",
	"BWA3_acc_LLM01_laser_underbarrel",
	"BWA3_acc_LLM01_flash_tan",
	"BWA3_acc_LLM01_laser_tan",
	"BWA3_acc_VarioRay_flash",
	"BWA3_acc_VarioRay_laser",
	"BWA3_Bunkerfaust",
	"BWA3_G36A2_pip",
	"BWA3_G36A2_tan_pip",
	"BWA3_optic_CompM2_G36A2",
	"BWA3_optic_CompM2_tan_G36A2",
	"BWA3_optic_EOTech_Mag_On",
	"BWA3_optic_EOTech_Mag_Off",
	"BWA3_optic_EOTech_tan_Mag_On",
	"BWA3_optic_EOTech_tan_Mag_Off",
	"BWA3_optic_EOTech552_G36A2",
	"BWA3_optic_EOTech552_tan_G36A2",
	"BWA3_optic_EOTech_G36A2",
	"BWA3_optic_EOTech_sand_G36A2",
	"BWA3_optic_Hensoldt_NSV",
	"BWA3_optic_MicroT1_G36A2",
	"BWA3_optic_MicroT2_G36A2",
	"BWA3_optic_M5Xi_MSR_pip",
	"BWA3_optic_M5Xi_MSR_MicroT2_pip",
	"BWA3_optic_M5Xi_Tremor3_pip",
	"BWA3_optic_M5Xi_Tremor3_MicroT2_pip",
	"BWA3_optic_NSA80_G36",
	"BWA3_optic_PMII_ShortdotCC_pip",
	"BWA3_optic_PMII_DMR_pip",
	"BWA3_optic_PMII_DMR_NSV_pip",
	"BWA3_optic_PMII_DMR_MicroT1_rear_pip",
	"BWA3_optic_PMII_DMR_MicroT1_front_pip",
	"BWA3_optic_PMII_DMR_MicroT1_rear_NSV_pip",
	"BWA3_optic_PMII_DMR_MicroT1_front_NSV_pip",
	"BWA3_optic_PMII_DMR_NSV",
	"BWA3_optic_PMII_DMR_MicroT1_rear_NSV",
	"BWA3_optic_PMII_DMR_MicroT1_front_NSV",
	"BWA3_optic_RSAS_G36A2",
	"BWA3_optic_RSAS_brown_G36A2",
	"BWA3_optic_RSAS_tan_G36A2",
	"BWA3_optic_RSAS_sand_G36A2",
	"BWA3_optic_ZO4x30_pip",
	"BWA3_optic_ZO4x30_RSAS_pip",
	"BWA3_optic_ZO4x30_RSAS_NSV_pip",
	"BWA3_optic_ZO4x30_RSAS_IRV_pip",
	"BWA3_optic_ZO4x30_brown_pip",
	"BWA3_optic_ZO4x30_brown_RSAS_pip",
	"BWA3_optic_ZO4x30_brown_RSAS_NSV_pip",
	"BWA3_optic_ZO4x30_brown_RSAS_IRV_pip",
	"BWA3_optic_ZO4x30i_pip",
	"BWA3_optic_ZO4x30i_sand_pip",
	"BWA3_optic_ZO4x30i_MicroT2_pip",
	"BWA3_optic_ZO4x30i_MicroT2_sand_pip",
	"BWA3_optic_ZO4x30i_RSAS_pip",
	"BWA3_optic_ZO4x30i_RSAS_sand_pip",
	"BWA3_optic_ZO4x30_RSAS_NSV",
	"BWA3_optic_ZO4x30_RSAS_IRV",
	"BWA3_optic_ZO4x30_MicroT2_NSV",
	"BWA3_optic_ZO4x30_MicroT2_IRV",
	"BWA3_optic_ZO4x30_NSV",
	"BWA3_optic_ZO4x30_IRV",
	"BWA3_optic_ZO4x30_brown_RSAS_NSV",
	"BWA3_optic_ZO4x30_brown_RSAS_IRV",
	"BWA3_optic_ZO4x30_MicroT2_brown_NSV",
	"BWA3_optic_ZO4x30_MicroT2_brown_IRV",
	"BWA3_optic_ZO4x30_brown_NSV",
	"BWA3_optic_ZO4x30_brown_IRV",
	"BWA3_PzF3",
	"BWA3_PzF3_Used",
	"BWA3_RGW90",
	"BWA3_RGW90_Used",
	"UK3CB_BAF_AT4_CS_AP_Mag",
	"UK3CB_BAF_Javelin_Launcher",
	"sma_spitfire_03_rds_low_ard_red",
	"ACE_Chemlight_Shield_Orange",
	"ACE_Chemlight_Shield_White",
	"ACE_Chemlight_Shield_Blue",
	"ACE_Chemlight_Shield_Yellow",
	"ACE_Chemlight_Shield_Green",
	"ACE_Chemlight_Shield_Red",
	"ACE_ReserveParachute",
	"ACE_launch_NLAW_Used_F",
    "ACE_PreloadedMissileDummy_Strela_2_CUP",
	"ACE_PreloadedMissileDummy_Stinger_CUP",
	"ACE_PreloadedMissileDummy_Igla_CUP",
	"ACE_PreloadedMissileDummy_CUP",
	"ACE_PreloadedMissileDummy_M72A6_CUP",
	"ACE_PreloadedMissileDummy_NLAW_CUP",
	"ACE_PreloadedMissileDummy_RPG18_CUP" */
];

/* - Configuration settings for crates transported by vehicles.
Format = ["classname", distance behind vehicle to unload crate, attachTo positions for each box],	*/
box_transport_config = [
	["C_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["I_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["O_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["O_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["C_Truck_02_transport_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["C_Truck_02_covered_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["RHS_Ural_Open_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_Flat_MSV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Open_Flat_VDV_01", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural_open", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TKA_Ural_open", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TKA_Ural", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_ISTS_OPF_Truck", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["rhs_kamaz5350_flatbed_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_flatbed_cover_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_open_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["rhs_kamaz5350_vdv", -4.5, [0,0.67,-0.4], [0,-0.88,-0.4], [0,-2.43,-0.4]],
	["B_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["rhsusf_M977A4_usarmy_d", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_usarmy_d", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_d", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["rhsusf_M977A4_usarmy_wd", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_usarmy_wd", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["I_Heli_Transport_02_F", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["BW_AW101_Trans_Heer_F", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["B_Heli_Transport_03_F", -8, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_Heli_Transport_03_unarmed_F", -8, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_T_VTOL_01_infantry_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
	["B_T_VTOL_01_vehicle_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
	["RHS_CH_47F_10", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F_light", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F", -8, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["UK3CB_BAF_Merlin_HC3_18_DPMT", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_32_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_CSAR_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_18_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_18_GPMG_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_32_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC4_CSAR_Arctic", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["O_Truck_03_transport_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["BW_LKW7T_Trans_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_Truck_03_covered_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_transport_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_covered_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["greuh_eh101_gr", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["CUP_B_Wolfhound_GMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_HMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_LMG_GB_W", -6.5, [0,-3.5,2.3]],
	["rhsusf_m998_w_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_m998_d_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_M1078A1P2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_WD_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_D_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_CH53E_USMC", -11.0, [0,2.5,1.4], [0,2.5,2.6], [0,1.0,1.4], [0,1.0,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-2.0,1.4], [0,-2.5,2.6], [0,-3.5,1.4], [0,-3.5,2.6]],
	["rhsusf_CH53E_USMC_D", -11.0, [0,2.5,1.4], [0,2.5,2.6], [0,1.0,1.4], [0,1.0,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-0.5,1.4], [0,-0.5,2.6], [0,-2.0,1.4], [0,-2.5,2.6], [0,-3.5,1.4], [0,-3.5,2.6]],
	["RHS_C130J", -9.5, [-0.8,4.5,1.9], [0.8,4.5,1.9], [-0.8,4.5,3.1], [0.8,4.5,3.1], [-0.8,3.0,1.9], [0.8,3.0,1.9], [-0.8,3.0,3.1], [0.8,3.0,3.1], [-0.8,2.0,1.9], [0.8,2.0,1.9], [-0.8,2.0,3.1], [0.8,2.0,3.1], [-0.8,1.0,1.9], [0.8,1.0,1.9], [-0.8,1.0,3.1], [0.8,1.0,3.1], [-0.8,0.0,1.9], [0.8,0.0,1.9], [-0.8,0.0,3.1], [0.8,0.0,3.1], [-0.8,-1.0,1.9], [0.8,-1.0,1.9], [-0.8,-1.0,3.1], [0.8,-1.0,3.1]],
	// GM Default
	["gm_ge_army_kat1_454_cargo",-6.5, [-0.0217285,1.32764,0.35], [-0.00170898,-0.337891,0.35], [-0.0441895,-1.90332,0.35], [-0.0615234,-3.59033,0.35]],
	["gm_ge_army_u1300l_container", -5, [-0.0495605,-0.609863,-0.6], [0.147461,-2.06787,-0.6]],
	["gm_ge_army_kat1_451_container", -5, [-0.0280762,0.222656,-0.2], [-0.0202637,-1.31152,-0.2], [-0.0222168,-2.79834,-0.2]],
	["gm_gc_army_ural4320_cargo", -5, [0.0722656,-0.539063,-0.1], [0.076416,-1.76904,-0.1], [0.0773926,-2.85742,-0.1]],
	["gm_gc_bgs_ural4320_cargo", -5, [-0.0373535,-0.535156,-0.1], [-0.0344238,-1.76611,-0.1], [-0.0334473,-2.85547,-0.1]],
	// GM Winter
	["gm_ge_army_kat1_454_cargo_win",-6.5, [-0.0217285,1.32764,0.35], [-0.00170898,-0.337891,0.35], [-0.0441895,-1.90332,0.35], [-0.0615234,-3.59033,0.35]],
	["gm_ge_army_u1300l_container_win", -5, [-0.0495605,-0.609863,-0.6], [0.147461,-2.06787,-0.6]],
	["gm_ge_army_kat1_451_container_win", -5, [-0.0280762,0.222656,-0.2], [-0.0202637,-1.31152,-0.2],[-0.0222168,-2.79834,-0.2]],
	["gm_gc_army_ural4320_cargo_win", -5, [0.0722656,-0.539063,-0.1], [0.076416,-1.76904,-0.1], [0.0773926,-2.85742,-0.1]]
];

/* Various other settings.
Everything the AI troups should be able to resupply from.	*/
ai_resupply_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Ammo_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",
	"rhs_gaz66_ammo_msv",
    "gm_gc_army_ural4320_reammo",
    "gm_gc_army_ural4320_reammo_win",
    "gm_ge_army_kat1_451_reammo",
    "gm_ge_army_kat1_451_reammo_win"
];

// Everything that can resupply other vehicles.
vehicle_repair_sources = [
	"C_Offroad_01_repair_F",
	"B_Truck_01_Repair_F",
	"B_T_Truck_01_Repair_F",
	"B_Slingload_01_Repair_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Repair_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_REPAIR_usarmy_d",
	"rhsusf_M977A4_REPAIR_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd",
	"RHS_Ural_Repair_VDV_01",
    "gm_gc_army_ural4320_repair",
    "gm_gc_army_ural4320_repair_win",
    "gm_ge_army_u1300l_repair",
    "gm_ge_army_u1300l_repair_win"
];

vehicle_rearm_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Ammo_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",
	"rhs_gaz66_ammo_msv",
    "gm_gc_army_ural4320_reammo",
    "gm_gc_army_ural4320_reammo_win",
    "gm_ge_army_kat1_451_reammo",
    "gm_ge_army_kat1_451_reammo_win"
];

vehicle_refuel_sources = [
	"C_Van_01_fuel_F",
	"C_Truck_02_fuel_F",
	"B_Truck_01_fuel_F",
	"B_T_Truck_01_fuel_F",
	"B_Slingload_01_Fuel_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"BW_LKW15T_Fuel_F",
	"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
	"rhsusf_M978A4_usarmy_d",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M978A4_BKIT_usarmy_d",
	"rhsusf_M978A4_BKIT_usarmy_wd",
	"RHS_Ural_Fuel_VDV_01",
    "gm_gc_army_ural375d_refuel",
    "gm_gc_army_ural375d_refuel_win",
    "gm_ge_army_kat1_451_refuel",
    "gm_ge_army_kat1_451_refuel_win"
];

// Classnames of boats, so they can be built on water.
boats_names = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"B_T_Boat_Transport_01_F",
	"B_T_Boat_Armed_01_minigun_F",
	"B_SDV_01_F",
	"O_Boat_Transport_01_F",
	"O_Boat_Armed_01_hmg_F",
	"O_T_Boat_Transport_01_F",
	"O_T_Boat_Armed_01_hmg_F",
	"rhsusf_mkvsoc"
];

// Large storage area placement position offsets.
KP_liberation_large_storage_positions = [
	[-5.59961,3.60938,0.6],
	[-3.99902,3.60938,0.6],
	[-2.39941,3.60938,0.6],
	[-0.799805,3.60938,0.6],
	[0.800781,3.60938,0.6],
	[2.40039,3.60938,0.6],
	[4.00098,3.60938,0.6],
	[5.60059,3.60938,0.6],
	[-5.59961,1.80859,0.6],
	[-3.99902,1.80859,0.6],
	[-2.39941,1.80859,0.6],
	[-0.799805,1.80859,0.6],
	[0.800781,1.80859,0.6],
	[2.40039,1.80859,0.6],
	[4.00098,1.80859,0.6],
	[5.60059,1.80859,0.6],
	[-5.59961,0.00976563,0.6],
	[-3.99902,0.00976563,0.6],
	[-2.39941,0.00976563,0.6],
	[-0.799805,0.00976563,0.6],
	[0.800781,0.00976563,0.6],
	[2.40039,0.00976563,0.6],
	[4.00098,0.00976563,0.6],
	[5.60059,0.00976563,0.6],
	[-5.59961,-1.79102,0.6],
	[-3.99902,-1.79102,0.6],
	[-2.39941,-1.79102,0.6],
	[-0.799805,-1.79102,0.6],
	[0.800781,-1.79102,0.6],
	[2.40039,-1.79102,0.6],
	[4.00098,-1.79102,0.6],
	[5.60059,-1.79102,0.6],
	[-5.59961,-3.58984,0.6],
	[-3.99902,-3.58984,0.6],
	[-2.39941,-3.58984,0.6],
	[-0.799805,-3.58984,0.6],
	[0.800781,-3.58984,0.6],
	[2.40039,-3.58984,0.6],
	[4.00098,-3.58984,0.6],
	[5.60059,-3.58984,0.6]
];

// Small storage area placement position offsets.
KP_liberation_small_storage_positions = [
	[-2.34961,1.80078,0.6],
	[-0.75,1.80078,0.6],
	[0.850586,1.80078,0.6],
	[2.4502,1.80078,0.6],
	[-2.34961,0,0.6],
	[-0.75,0,0.6],
	[0.850586,0,0.6],
	[2.4502,0,0.6],
	[-2.34961,-1.79883,0.6],
	[-0.75,-1.79883,0.6],
	[0.850586,-1.79883,0.6],
	[2.4502,-1.79883,0.6]
];

// DO NOT CHANGE (unless you know what you are doing).
GRLIB_endgame = 0;
if ( GRLIB_blufor_cap > 100 ) then { GRLIB_blufor_cap = 100 };
GRLIB_offload_diag = false;

KP_liberation_production_interval = ceil KP_liberation_production_interval;
