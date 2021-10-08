module libretrov

pub struct C.retro_vfs_file_handle {
}

pub struct C.retro_vfs_dir_handle {
}

pub struct C.retro_vfs_interface {
pub:
	// VFS API v1
	get_path Retro_vfs_get_path_t
	open     Retro_vfs_open_t
	close    Retro_vfs_close_t
	size     Retro_vfs_size_t
	tell     Retro_vfs_tell_t
	seek     Retro_vfs_seek_t
	read     Retro_vfs_read_t
	write    Retro_vfs_write_t
	flush    Retro_vfs_flush_t
	remove   Retro_vfs_remove_t
	rename   Retro_vfs_rename_t
	// VFS API v2
	truncate Retro_vfs_truncate_t
	// VFS API v3
	stat            Retro_vfs_stat_t
	mkdir           Retro_vfs_mkdir_t
	opendir         Retro_vfs_opendir_t
	readdir         Retro_vfs_readdir_t
	dirent_get_name Retro_vfs_dirent_get_name_t
	dirent_is_dir   Retro_vfs_dirent_is_dir_t
	closedir        Retro_vfs_closedir_t
}

pub struct C.retro_vfs_interface_info {
pub:
	required_interface_version u32
	/*
	Frontend writes interface pointer here. The frontend also sets the actual
    * version, must be at least required_interface_version.
    * Introduced in VFS API v1
	*/
	iface &C.retro_vfs_interface
}

pub struct C.retro_hw_render_interface {
pub:
	interface_type    Retro_hw_render_interface_type
	interface_version u32
}

pub struct C.retro_led_interface {
pub:
	set_led_state Retro_set_led_state_t
}

pub struct C.retro_midi_interface {
pub:
	input_enabled  Retro_midi_input_enabled_t
	output_enabled Retro_midi_output_enabled_t
	read           Retro_midi_read_t
	write          Retro_midi_write_t
	flush          Retro_midi_flush_t
}

pub struct C.retro_hw_render_context_negotiation_interface {
pub:
	interface_type    Retro_hw_render_context_negotiation_interface_type
	interface_version u32
}

pub struct C.retro_memory_descriptor {
pub mut:
	flags      u64
	ptr        voidptr
	offset     usize
	start      usize
	c_select   usize
	disconnect usize
	len        usize
	addrspace  &char
}

pub struct C.retro_memory_map {
pub:
	descriptors     &C.retro_memory_descriptor
	num_descriptors u32
}

pub struct C.retro_controller_description {
pub:
	desc &char
	id   u32
}

pub struct C.retro_controller_info {
pub:
	types     &C.retro_controller_description
	num_types u32
}

pub struct C.retro_subsystem_memory_info {
pub:
	extension &char
	c_type    u32
}

pub struct C.retro_subsystem_rom_info {
pub:
	desc             &char
	valid_extensions &char
	need_fullpath    bool
	block_extract    bool
	required         bool
	memory           C.retro_subsystem_memory_info
	num_memory       u32
}

pub struct C.retro_subsystem_info {
pub:
	desc     &char
	ident    &char
	roms     C.retro_subsystem_rom_info
	num_roms u32
	id       u32
}

pub struct C.retro_get_proc_address_interface {
pub:
	get_proc_address Retro_get_proc_address_t
}

pub struct C.retro_log_callback {
pub:
	log Retro_log_printf_t
}

pub struct C.retro_perf_counter {
pub:
	ident      &char
	start      Retro_perf_tick_t
	total      Retro_perf_tick_t
	call_cnt   Retro_perf_tick_t
	registered bool
}

pub struct C.retro_perf_callback {
pub:
	get_time_usec    Retro_perf_get_time_usec_t
	get_cpu_features Retro_get_cpu_features_t

	get_perf_counter Retro_perf_get_counter_t
	perf_register    Retro_perf_register_t
	perf_start       Retro_perf_start_t
	perf_stop        Retro_perf_stop_t
	perf_log         Retro_perf_log_t
}

pub struct C.retro_sensor_interface {
pub:
	set_sensor_state Retro_set_sensor_state_t
	get_sensor_input Retro_sensor_get_input_t
}

pub struct C.retro_camera_callback {
pub:
	caps                  u64
	width                 u32
	height                u32
	start                 Retro_camera_start_t
	stop                  Retro_camera_stop_t
	frame_raw_framebuffer Retro_camera_frame_raw_framebuffer_t
	frame_opengl_texture  Retro_camera_frame_opengl_texture_t
	initialized           Retro_camera_lifetime_status_t
	deinitialized         Retro_camera_lifetime_status_t
}

pub struct C.retro_location_callback {
pub:
	start        Retro_location_start_t
	stop         Retro_location_stop_t
	get_position Retro_location_get_position_t
	set_interval Retro_location_set_interval_t

	initialized   Retro_location_lifetime_status_t
	deinitialized Retro_location_lifetime_status_t
}

pub struct C.retro_rumble_interface {
pub:
	set_rumble_state Retro_set_rumble_state_t
}

pub struct C.retro_audio_callback {
pub:
	callback  Retro_audio_callback_t
	set_state Retro_audio_set_state_callback_t
}

pub struct C.retro_frame_time_callback {
pub:
	callback Retro_frame_time_callback_t

	reference Retro_usec_t
}

pub struct C.retro_audio_buffer_status_callback {
pub:
	callback Retro_audio_buffer_status_callback_t
}

pub struct C.retro_hw_render_callback {
pub:
	context_type            Retro_hw_context_type
	context_reset           Retro_hw_context_reset_t
	get_current_framebuffer Retro_hw_get_current_framebuffer_t
	get_proc_address        Retro_hw_get_proc_address_t
	depth                   bool
	stencil                 bool
	bottom_left_origin      bool
	version_major           u32
	version_minor           u32
	cache_context           bool
	context_destroy         Retro_hw_context_reset_t
	debug_context           bool
}

pub struct C.retro_keyboard_callback {
pub:
	callback Retro_keyboard_event_t
}

pub struct C.retro_disk_control_callback {
pub:
	set_eject_state Retro_set_eject_state_t
	get_eject_state Retro_get_eject_state_t

	get_image_index Retro_get_image_index_t
	set_image_index Retro_set_image_index_t
	get_num_images  Retro_get_num_images_t

	replace_image_index Retro_replace_image_index_t
	add_image_index     Retro_add_image_index_t
}

pub struct C.retro_disk_control_ext_callback {
pub:
	set_eject_state Retro_set_eject_state_t
	get_eject_state Retro_get_eject_state_t

	get_image_index Retro_get_image_index_t
	set_image_index Retro_set_image_index_t
	get_num_images  Retro_get_num_images_t

	replace_image_index Retro_replace_image_index_t
	add_image_index     Retro_add_image_index_t

	set_initial_image Retro_set_initial_image_t

	get_image_path  Retro_get_image_path_t
	get_image_label Retro_get_image_label_t
}

pub struct C.retro_message {
pub:
	msg    &char
	frames u32
}

pub struct C.retro_message_ext {
pub:
	msg      &char
	duration u32
	priority u32
	level    Retro_log_level
	target   Retro_message_target
	c_type   Retro_message_type
	progress i8
}

pub struct C.retro_input_descriptor {
pub:
	port   u32
	device u32
	index  u32
	id     u32

	description &char
}

pub struct C.retro_system_info {
pub mut:
	library_name    &char
	library_version &char

	valid_extensions &char
	need_fullpath    bool
	block_extract    bool
}

pub struct C.retro_system_content_info_override {
pub:
	extensions      &char
	need_fullpath   bool
	persistent_data bool
}

pub struct C.retro_game_info_ext {
pub:
	full_path       &char
	archive_path    &char
	archive_file    &char
	dir             &char
	name            &char
	ext             &char
	meta            &char
	data            voidptr
	size            usize
	file_in_archive bool
	persistent_data bool
}

pub struct C.retro_game_geometry {
pub mut:
	base_width  u32
	base_height u32
	max_width   u32
	max_height  u32

	aspect_ratio f32
}

pub struct C.retro_system_timing {
pub mut:
	fps         f64
	sample_rate f64
}

pub struct C.retro_system_av_info {
pub mut:
	geometry C.retro_game_geometry
	timing   C.retro_system_timing
}

pub struct C.retro_variable {
pub:
	key &char

	value &char
}

pub struct C.retro_core_option_display {
pub:
	key     &char
	visible bool
}

pub struct C.retro_core_option_value {
pub:
	value &char

	label &char
}

pub struct C.retro_core_option_definition {
pub:
	key &char

	desc &char

	info &char

	values [retro_num_core_options_values_max]C.retro_core_option_value

	default_value &char
}

pub struct C.retro_core_options_intl {
pub:
	us &C.retro_core_option_definition

	local &C.retro_core_option_definition
}

pub struct C.retro_core_option_v2_category {
pub:
	key  &char
	desc &char
	info &char
}

pub struct C.retro_core_option_v2_definition {
pub:
	key              &char
	desc             &char
	desc_categorized &char
	info             &char
	info_categorized &char
	category_key     &char
	values           [retro_num_core_options_values_max]C.retro_core_option_value
	default_value    &char
}

pub struct C.retro_core_options_v2 {
pub:
	categories  &C.retro_core_option_v2_category
	definitions &C.retro_core_option_v2_definition
}

pub struct C.retro_core_options_v2_intl {
pub:
	us    &C.retro_core_options_v2
	local &C.retro_core_options_v2
}

pub struct C.retro_core_options_update_display_callback {
pub:
	callback Retro_core_options_update_display_callback_t
}

pub struct C.retro_game_info {
pub:
	path &char
	data voidptr
	size usize
	meta &char
}

pub struct C.retro_framebuffer {
pub mut:
	data         voidptr
	width        u32
	height       u32
	pitch        usize
	format       Retro_pixel_format
	access_flags u32
	memory_flags u32
}

pub struct C.retro_fastforwarding_override {
pub:
	ratio          f32
	fastforward    bool
	notification   bool
	inhibit_toggle bool
}
