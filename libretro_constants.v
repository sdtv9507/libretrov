module libretrov

pub const (
	retro_api_version                                             = 1
	retro_device_type_shift                                       = 8
	retro_device_mask                                             = ((1 << retro_device_type_shift) - 1)

	// retro_device_subclass(id, base) = (((id + 1) << retro_device_type_shift) | base)
	retro_device_none                                             = 0
	retro_device_joypad                                           = 1
	retro_device_mouse                                            = 2
	retro_device_keyboard                                         = 3
	retro_device_lightgun                                         = 4
	retro_device_analog                                           = 5
	retro_device_pointer                                          = 6
	retro_device_id_joypad_b                                      = 0
	retro_device_id_joypad_y                                      = 1
	retro_device_id_joypad_select                                 = 2
	retro_device_id_joypad_start                                  = 3
	retro_device_id_joypad_up                                     = 4
	retro_device_id_joypad_down                                   = 5
	retro_device_id_joypad_left                                   = 6
	retro_device_id_joypad_right                                  = 7
	retro_device_id_joypad_a                                      = 8
	retro_device_id_joypad_x                                      = 9
	retro_device_id_joypad_l                                      = 10
	retro_device_id_joypad_r                                      = 11
	retro_device_id_joypad_l2                                     = 12
	retro_device_id_joypad_r2                                     = 13
	retro_device_id_joypad_l3                                     = 14
	retro_device_id_joypad_r3                                     = 15

	retro_device_id_joypad_mask                                   = 256

	retro_device_index_analog_left                                = 0
	retro_device_index_analog_right                               = 1
	retro_device_index_analog_button                              = 2
	retro_device_id_analog_x                                      = 0
	retro_device_id_analog_y                                      = 1

	retro_device_id_mouse_x                                       = 0
	retro_device_id_mouse_y                                       = 1
	retro_device_id_mouse_left                                    = 2
	retro_device_id_mouse_right                                   = 3
	retro_device_id_mouse_wheelup                                 = 4
	retro_device_id_mouse_wheeldown                               = 5
	retro_device_id_mouse_middle                                  = 6
	retro_device_id_mouse_horiz_wheelup                           = 7
	retro_device_id_mouse_horiz_wheeldown                         = 8
	retro_device_id_mouse_button_4                                = 9
	retro_device_id_mouse_button_5                                = 10

	retro_device_id_lightgun_screen_x                             = 13
	retro_device_id_lightgun_screen_y                             = 14
	retro_device_id_lightgun_is_offscreen                         = 15
	retro_device_id_lightgun_trigger                              = 2
	retro_device_id_lightgun_reload                               = 16
	retro_device_id_lightgun_aux_a                                = 3
	retro_device_id_lightgun_aux_b                                = 4
	retro_device_id_lightgun_start                                = 6
	retro_device_id_lightgun_select                               = 7
	retro_device_id_lightgun_aux_c                                = 8
	retro_device_id_lightgun_dpad_up                              = 9
	retro_device_id_lightgun_dpad_down                            = 10
	retro_device_id_lightgun_dpad_left                            = 11
	retro_device_id_lightgun_dpad_right                           = 12

	retro_device_id_lightgun_x                                    = 0
	retro_device_id_lightgun_y                                    = 1
	retro_device_id_lightgun_cursor                               = 3
	retro_device_id_lightgun_turbo                                = 4
	retro_device_id_lightgun_pause                                = 5

	retro_device_id_pointer_x                                     = 0
	retro_device_id_pointer_y                                     = 1
	retro_device_id_pointer_pressed                               = 2
	retro_device_id_pointer_count                                 = 3

	retro_region_ntsc                                             = 0
	retro_region_pal                                              = 1
	retro_memory_mask                                             = 0xff

	retro_memory_save_ram                                         = 0

	retro_memory_rtc                                              = 1

	retro_memory_system_ram                                       = 2

	retro_memory_video_ram                                        = 3
	retro_environment_experimental                                = 0x10000
	retro_environment_private                                     = 0x20000
	retro_environment_set_rotation                                = 1
	retro_environment_get_overscan                                = 2
	retro_environment_get_can_dupe                                = 3
	retro_environment_set_message                                 = 6
	retro_environment_shutdown                                    = 7
	retro_environment_set_performance_level                       = 8
	retro_environment_get_system_directory                        = 9
	retro_environment_set_pixel_format                            = 10
	retro_environment_set_input_descriptors                       = 11
	retro_environment_set_keyboard_callback                       = 12
	retro_environment_set_disk_control_interface                  = 13
	retro_environment_set_hw_render                               = 14
	retro_environment_get_variable                                = 15
	retro_environment_set_variables                               = 16
	retro_environment_get_variable_update                         = 17
	retro_environment_set_support_no_game                         = 18
	retro_environment_get_libretro_path                           = 19
	retro_environment_set_frame_time_callback                     = 21
	retro_environment_set_audio_callback                          = 22
	retro_environment_get_rumble_interface                        = 23
	retro_environment_get_input_device_capabilities               = 24
	retro_environment_get_sensor_interface                        = (25 | retro_environment_experimental)
	retro_environment_get_camera_interface                        = (26 | retro_environment_experimental)
	retro_environment_get_log_interface                           = 27
	retro_environment_get_perf_interface                          = 28
	retro_environment_get_location_interface                      = 29
	retro_environment_get_content_directory                       = 30
	retro_environment_get_core_assets_directory                   = 30
	retro_environment_get_save_directory                          = 31
	retro_environment_set_system_av_info                          = 32
	retro_environment_set_proc_address_callback                   = 33
	retro_environment_set_subsystem_info                          = 34
	retro_environment_set_controller_info                         = 35
	retro_environment_set_memory_maps                             = (36 | retro_environment_experimental)
	retro_environment_set_geometry                                = 37
	retro_environment_get_username                                = 38
	retro_environment_get_language                                = 39
	retro_environment_get_current_software_framebuffer            = (40 | retro_environment_experimental)
	retro_environment_get_hw_render_interface                     = (41 | retro_environment_experimental)
	retro_environment_set_support_achievements                    = (42 | retro_environment_experimental)
	retro_environment_set_hw_render_context_negotiation_interface = (43 | retro_environment_experimental)
	retro_environment_set_serialization_quirks                    = 44
	retro_environment_set_hw_shared_context                       = (44 | retro_environment_experimental)
	retro_environment_get_vfs_interface                           = (45 | retro_environment_experimental)
	retro_environment_get_led_interface                           = (46 | retro_environment_experimental)
	retro_environment_get_audio_video_enable                      = (47 | retro_environment_experimental)
	retro_environment_get_midi_interface                          = (48 | retro_environment_experimental)
	retro_environment_get_fastforwarding                          = (49 | retro_environment_experimental)
	retro_environment_get_target_refresh_rate                     = (50 | retro_environment_experimental)
	retro_environment_get_input_bitmasks                          = (51 | retro_environment_experimental)
	retro_environment_get_core_options_version                    = 52
	retro_environment_set_core_options                            = 53
	retro_environment_set_core_options_intl                       = 54
	retro_environment_set_core_options_display                    = 55
	retro_environment_get_preferred_hw_render                     = 56
	retro_environment_get_disk_control_interface_version          = 57
	retro_environment_set_disk_control_ext_interface              = 58
	retro_environment_get_message_interface_version               = 59
	retro_environment_set_message_ext                             = 60
	retro_environment_get_input_max_users                         = 61
	retro_environment_set_audio_buffer_status_callback            = 62
	retro_environment_set_minimum_audio_latency                   = 63
	retro_environment_set_fastforwarding_override                 = 64
	retro_environment_set_content_info_override                   = 65
	retro_environment_get_game_info_ext                           = 66
	retro_environment_set_core_options_v2                         = 67
	retro_environment_set_core_options_v2_intl                    = 68
	retro_environment_set_core_options_update_display_callback    = 69

	retro_vfs_file_access_read                                    = (1 << 0)
	retro_vfs_file_access_write                                   = (1 << 1)
	retro_vfs_file_access_read_write                              = (retro_vfs_file_access_read | retro_vfs_file_access_write)
	retro_vfs_file_access_update_existing                         = (1 << 2)
	retro_vfs_file_access_hint_none                               = (0)

	retro_vfs_file_access_hint_frequent_access                    = (1 << 0)

	retro_vfs_seek_position_start                                 = 0
	retro_vfs_seek_position_current                               = 1
	retro_vfs_seek_position_end                                   = 2

	retro_vfs_stat_is_valid                                       = (1 << 0)
	retro_vfs_stat_is_directory                                   = (1 << 1)
	retro_vfs_stat_is_character_special                           = (1 << 2)
	retro_serialization_quirk_incomplete                          = (1 << 0)
	retro_serialization_quirk_must_initialize                     = (1 << 1)
	retro_serialization_quirk_core_variable_size                  = (1 << 2)
	retro_serialization_quirk_front_variable_size                 = (1 << 3)
	retro_serialization_quirk_single_session                      = (1 << 4)
	retro_serialization_quirk_endian_dependent                    = (1 << 5)
	retro_serialization_quirk_platform_dependent                  = (1 << 6)

	retro_memdesc_const                                           = (1 << 0)
	retro_memdesc_bigendian                                       = (1 << 1)
	retro_memdesc_system_ram                                      = (1 << 2)
	retro_memdesc_save_ram                                        = (1 << 3)
	retro_memdesc_video_ram                                       = (1 << 4)
	retro_memdesc_align_2                                         = (1 << 16)
	retro_memdesc_align_4                                         = (2 << 16)
	retro_memdesc_align_8                                         = (3 << 16)
	retro_memdesc_minsize_2                                       = (1 << 24)
	retro_memdesc_minsize_4                                       = (2 << 24)
	retro_memdesc_minsize_8                                       = (3 << 24)
	retro_simd_sse                                                = (1 << 0)
	retro_simd_sse2                                               = (1 << 1)
	retro_simd_vmx                                                = (1 << 2)
	retro_simd_vmx128                                             = (1 << 3)
	retro_simd_avx                                                = (1 << 4)
	retro_simd_neon                                               = (1 << 5)
	retro_simd_sse3                                               = (1 << 6)
	retro_simd_ssse3                                              = (1 << 7)
	retro_simd_mmx                                                = (1 << 8)
	retro_simd_mmxext                                             = (1 << 9)
	retro_simd_sse4                                               = (1 << 10)
	retro_simd_sse42                                              = (1 << 11)
	retro_simd_avx2                                               = (1 << 12)
	retro_simd_vfpu                                               = (1 << 13)
	retro_simd_ps                                                 = (1 << 14)
	retro_simd_aes                                                = (1 << 15)
	retro_simd_vfpv3                                              = (1 << 16)
	retro_simd_vfpv4                                              = (1 << 17)
	retro_simd_popcnt                                             = (1 << 18)
	retro_simd_movbe                                              = (1 << 19)
	retro_simd_cmov                                               = (1 << 20)
	retro_simd_asimd                                              = (1 << 21)

	retro_sensor_accelerometer_x                                  = 0
	retro_sensor_accelerometer_y                                  = 1
	retro_sensor_accelerometer_z                                  = 2
	retro_sensor_gyroscope_x                                      = 3
	retro_sensor_gyroscope_y                                      = 4
	retro_sensor_gyroscope_z                                      = 5
	retro_sensor_illuminance                                      = 6
	retro_hw_frame_buffer_valid                                   = (voidptr - 1)
	retro_memory_access_write                                     = (1 << 0)
	retro_memory_access_read                                      = (1 << 1)
	retro_memory_type_cached                                      = (1 << 0)

	retro_num_core_options_values_max                             = 128
)
