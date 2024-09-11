shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, filter_linear_mipmap;
uniform vec4 base : source_color;

void fragment() {
	vec4 c = texture(screen_texture, SCREEN_UV);
	float v = dot(c, vec4(0.45, 0, -0.25, 0));
	
	COLOR.rgb = base.rgb + v;
}
