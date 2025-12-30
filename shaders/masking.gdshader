shader_type canvas_item;

uniform sampler2D masked_texture;


void fragment() {
	vec4 masked_texture_color=texture(masked_texture,UV);
	vec4 original_color=texture(TEXTURE,UV);
	COLOR = original_color;
	
	if(masked_texture_color.r<1.0){
		COLOR.a=0.0;
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
