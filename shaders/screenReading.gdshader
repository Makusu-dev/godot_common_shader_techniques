shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;

void fragment() {
	vec4 screen_color = texture(screen_texture,SCREEN_UV);// Called for every pixel the material is visible on.
	float grayscale = (screen_color.r+screen_color.g+screen_color.b)/3.0;
	vec4 grayscale_texture = vec4(grayscale,grayscale,grayscale,screen_color.a);
	COLOR = grayscale_texture;
} 

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
