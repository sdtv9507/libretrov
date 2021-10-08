module libretrov

// retro_language Id values for LANGUAGE
enum Retro_language {
	retro_language_english = 0
	retro_language_japanese = 1
	retro_language_french = 2
	retro_language_spanish = 3
	retro_language_german = 4
	retro_language_italian = 5
	retro_language_dutch = 6
	retro_language_portuguese_brazil = 7
	retro_language_portuguese_portugal = 8
	retro_language_russian = 9
	retro_language_korean = 10
	retro_language_chinese_traditional = 11
	retro_language_chinese_simplified = 12
	retro_language_esperanto = 13
	retro_language_polish = 14
	retro_language_vietnamese = 15
	retro_language_arabic = 16
	retro_language_greek = 17
	retro_language_turkish = 18
	retro_language_slovak = 19
	retro_language_persian = 20
	retro_language_hebrew = 21
	retro_language_asturian = 22
	retro_language_finnish = 23
	retro_language_last
	// ensure sizeof(enum) == sizeof(int)
	retro_language_dummy = C.INT_MAX
}

enum Retro_key {
	retrok_unknown = 0
	retrok_backspace = 8
	retrok_tab = 9
	retrok_clear = 12
	retrok_return = 13
	retrok_pause = 19
	retrok_escape = 27
	retrok_space = 32
	retrok_exclaim = 33
	retrok_quotedbl = 34
	retrok_hash = 35
	retrok_dollar = 36
	retrok_ampersand = 38
	retrok_quote = 39
	retrok_leftparen = 40
	retrok_rightparen = 41
	retrok_asterisk = 42
	retrok_plus = 43
	retrok_comma = 44
	retrok_minus = 45
	retrok_period = 46
	retrok_slash = 47
	retrok_0 = 48
	retrok_1 = 49
	retrok_2 = 50
	retrok_3 = 51
	retrok_4 = 52
	retrok_5 = 53
	retrok_6 = 54
	retrok_7 = 55
	retrok_8 = 56
	retrok_9 = 57
	retrok_colon = 58
	retrok_semicolon = 59
	retrok_less = 60
	retrok_equals = 61
	retrok_greater = 62
	retrok_question = 63
	retrok_at = 64
	retrok_leftbracket = 91
	retrok_backslash = 92
	retrok_rightbracket = 93
	retrok_caret = 94
	retrok_underscore = 95
	retrok_backquote = 96
	retrok_a = 97
	retrok_b = 98
	retrok_c = 99
	retrok_d = 100
	retrok_e = 101
	retrok_f = 102
	retrok_g = 103
	retrok_h = 104
	retrok_i = 105
	retrok_j = 106
	retrok_k = 107
	retrok_l = 108
	retrok_m = 109
	retrok_n = 110
	retrok_o = 111
	retrok_p = 112
	retrok_q = 113
	retrok_r = 114
	retrok_s = 115
	retrok_t = 116
	retrok_u = 117
	retrok_v = 118
	retrok_w = 119
	retrok_x = 120
	retrok_y = 121
	retrok_z = 122
	retrok_leftbrace = 123
	retrok_bar = 124
	retrok_rightbrace = 125
	retrok_tilde = 126
	retrok_delete = 127
	retrok_kp0 = 256
	retrok_kp1 = 257
	retrok_kp2 = 258
	retrok_kp3 = 259
	retrok_kp4 = 260
	retrok_kp5 = 261
	retrok_kp6 = 262
	retrok_kp7 = 263
	retrok_kp8 = 264
	retrok_kp9 = 265
	retrok_kp_period = 266
	retrok_kp_divide = 267
	retrok_kp_multiply = 268
	retrok_kp_minus = 269
	retrok_kp_plus = 270
	retrok_kp_enter = 271
	retrok_kp_equals = 272
	retrok_up = 273
	retrok_down = 274
	retrok_right = 275
	retrok_left = 276
	retrok_insert = 277
	retrok_home = 278
	retrok_end = 279
	retrok_pageup = 280
	retrok_pagedown = 281
	retrok_f1 = 282
	retrok_f2 = 283
	retrok_f3 = 284
	retrok_f4 = 285
	retrok_f5 = 286
	retrok_f6 = 287
	retrok_f7 = 288
	retrok_f8 = 289
	retrok_f9 = 290
	retrok_f10 = 291
	retrok_f11 = 292
	retrok_f12 = 293
	retrok_f13 = 294
	retrok_f14 = 295
	retrok_f15 = 296
	retrok_numlock = 300
	retrok_capslock = 301
	retrok_scrollock = 302
	retrok_rshift = 303
	retrok_lshift = 304
	retrok_rctrl = 305
	retrok_lctrl = 306
	retrok_ralt = 307
	retrok_lalt = 308
	retrok_rmeta = 309
	retrok_lmeta = 310
	retrok_lsuper = 311
	retrok_rsuper = 312
	retrok_mode = 313
	retrok_compose = 314
	retrok_help = 315
	retrok_print = 316
	retrok_sysreq = 317
	retrok_break = 318
	retrok_menu = 319
	retrok_power = 320
	retrok_euro = 321
	retrok_undo = 322
	retrok_oem_102 = 323
	retrok_last
	retrok_dummy = C.INT_MAX // ensure sizeof(enum) == sizeof(int)
}

enum Retro_mod {
	retrokmod_none = 0x0000
	retrokmod_shift = 0x01
	retrokmod_ctrl = 0x02
	retrokmod_alt = 0x04
	retrokmod_meta = 0x08
	retrokmod_numlock = 0x10
	retrokmod_capslock = 0x20
	retrokmod_scrollock = 0x40
	retrokmod_dummy = C.INT_MAX // ensure sizeof(enum) == sizeof(int)
}

enum Retro_hw_render_interface_type {
	retro_hw_render_interface_vulkan = 0
	retro_hw_render_interface_d3d9 = 1
	retro_hw_render_interface_d3d10 = 2
	retro_hw_render_interface_d3d11 = 3
	retro_hw_render_interface_d3d12 = 4
	retro_hw_render_interface_gskit_ps2 = 5
	retro_hw_render_interface_dummy = C.INT_MAX
}

enum Retro_hw_render_context_negotiation_interface_type {
	retro_hw_render_context_negotiation_interface_vulkan = 0
	retro_hw_render_context_negotiation_interface_dummy = C.INT_MAX
}

enum Retro_log_level {
	retro_log_debug = 0
	retro_log_info
	retro_log_warn
	retro_log_error
	retro_log_dummy = C.INT_MAX
}

enum Retro_sensor_action {
	retro_sensor_accelerometer_enable = 0
	retro_sensor_accelerometer_disable
	retro_sensor_gyroscope_enable
	retro_sensor_gyroscope_disable
	retro_sensor_illuminance_enable
	retro_sensor_illuminance_disable
	retro_sensor_dummy = C.INT_MAX
}

enum Retro_camera_buffer {
	retro_camera_buffer_opengl_texture = 0
	retro_camera_buffer_raw_framebuffer
	retro_camera_buffer_dummy = C.INT_MAX
}

enum Retro_rumble_effect {
	retro_rumble_strong = 0
	retro_rumble_weak = 1
	retro_rumble_dummy = C.INT_MAX
}

enum Retro_hw_context_type {
	retro_hw_context_none = 0
	retro_hw_context_opengl = 1
	retro_hw_context_opengles2 = 2
	retro_hw_context_opengl_core = 3
	retro_hw_context_opengles3 = 4
	retro_hw_context_opengles_version = 5
	retro_hw_context_vulkan = 6
	retro_hw_context_direct3d = 7
	retro_hw_context_dummy = C.INT_MAX
}

enum Retro_pixel_format {
	retro_pixel_format_0rgb1555 = 0
	retro_pixel_format_xrgb8888 = 1
	retro_pixel_format_rgb565 = 2
	retro_pixel_format_unknown = C.INT_MAX
}

enum Retro_message_target {
	retro_message_target_all = 0
	retro_message_target_osd
	retro_message_target_log
}

enum Retro_message_type {
	retro_message_type_notification = 0
	retro_message_type_notification_alt
	retro_message_type_status
	retro_message_type_progress
}
