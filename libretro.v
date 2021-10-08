module libretrov

#include "@VROOT/thirdparty/libretro.h"

type Retro_vfs_get_path_t = fn (C.retro_vfs_file_handle) charptr

type Retro_vfs_open_t = fn (charptr, u32, u32) C.retro_vfs_file_handle

type Retro_vfs_close_t = fn (C.retro_vfs_file_handle) int

type Retro_vfs_size_t = fn (C.retro_vfs_file_handle) i64

type Retro_vfs_truncate_t = fn (C.retro_vfs_file_handle, i64) i64

type Retro_vfs_tell_t = fn (C.retro_vfs_file_handle) i64

type Retro_vfs_seek_t = fn (C.retro_vfs_file_handle, i64, int) i64

type Retro_vfs_read_t = fn (C.retro_vfs_file_handle, voidptr, u64) i64

type Retro_vfs_write_t = fn (C.retro_vfs_file_handle, voidptr, u64) i64

type Retro_vfs_flush_t = fn (C.retro_vfs_file_handle) int

type Retro_vfs_remove_t = fn (charptr) int

type Retro_vfs_rename_t = fn (charptr, charptr) int

type Retro_vfs_stat_t = fn (charptr, int) int

type Retro_vfs_mkdir_t = fn (charptr) int

type Retro_vfs_opendir_t = fn (charptr, bool) C.retro_vfs_dir_handle

type Retro_vfs_readdir_t = fn (C.retro_vfs_dir_handle) bool

type Retro_vfs_dirent_get_name_t = fn(C.retro_vfs_dir_handle) charptr

type Retro_vfs_dirent_is_dir_t = fn(C.retro_vfs_dir_handle) charptr

type Retro_vfs_closedir_t = fn(C.retro_vfs_dir_handle) int

type Retro_set_led_state_t = fn(int, int)

type Retro_midi_input_enabled_t = fn() bool

type Retro_midi_output_enabled_t = fn() bool

type Retro_midi_read_t = fn(byte) bool

type Retro_midi_write_t = fn(byte, u32) bool

type Retro_midi_flush_t = fn() bool

type Retro_proc_address_t = fn()

type Retro_get_proc_address_t = fn(charptr) Retro_proc_address_t

type Retro_log_printf_t = fn(Retro_log_level, s ...charptr)

type Retro_perf_tick_t = u64

type Retro_time_t = i64

type Retro_perf_get_time_usec_t = fn() Retro_time_t

type Retro_perf_get_counter_t = fn() Retro_perf_tick_t

type Retro_get_cpu_features_t = fn() u64

type Retro_perf_log_t = fn()

type Retro_perf_register_t = fn(C.retro_perf_counter)

type Retro_perf_start_t = fn(C.retro_perf_counter)

type Retro_perf_stop_t = fn(C.retro_perf_counter)

type Retro_set_sensor_state_t = fn(u32, Retro_sensor_action, u32) bool

type Retro_sensor_get_input_t = fn(u32, u32) f32

type Retro_camera_start_t = fn() bool

type Retro_camera_stop_t = fn()

type Retro_camera_lifetime_status_t = fn()

type Retro_camera_frame_raw_framebuffer_t = fn(u32, u32, u32, usize)

type Retro_camera_frame_opengl_texture_t = fn(u32, u32, f64)

type Retro_location_set_interval_t = fn(u32, u32)

type Retro_location_start_t = fn() bool

type Retro_location_stop_t = fn()

type Retro_location_get_position_t = fn(f64, f64, f64, f64) bool

type Retro_location_lifetime_status_t = fn()

type Retro_set_rumble_state_t = fn(u32, Retro_rumble_effect, u16) bool

type Retro_audio_callback_t = fn()

type Retro_audio_set_state_callback_t = fn(bool)

type Retro_usec_t = i64

type Retro_frame_time_callback_t = fn(Retro_usec_t)

type Retro_audio_buffer_status_callback_t = fn(bool, u32, bool)

type Retro_hw_context_reset_t = fn()

type Retro_hw_get_current_framebuffer_t = fn() u64

type Retro_hw_get_proc_address_t = fn(charptr) Retro_proc_address_t

type Retro_keyboard_event_t = fn(bool, u32, u32, u16)

type Retro_set_eject_state_t = fn(bool) bool

type Retro_get_eject_state_t = fn() bool

type Retro_get_image_index_t = fn() u32

type Retro_set_image_index_t = fn(u32) bool

type Retro_replace_image_index_t = fn(u32, &C.retro_game_info) bool

type Retro_add_image_index_t = fn() bool

type Retro_set_initial_image_t = fn(u32, charptr) bool

type Retro_get_image_path_t = fn(u32, charptr, usize) bool

type Retro_get_image_label_t = fn(u32, charptr, usize) bool

type Retro_core_options_update_display_callback_t = fn() bool

type Retro_get_num_images_t = fn() u32

type Retro_environment_t = fn (u32, voidptr) bool

type Retro_video_refresh_t = fn(voidptr, u32, u32, usize)

type Retro_audio_sample_t = fn(i16, i16)

type Retro_audio_sample_batch_t = fn(&i16, usize) usize

type Retro_input_poll_t = fn()

type Retro_input_state_t = fn(u32, u32, u32, u32) i16
