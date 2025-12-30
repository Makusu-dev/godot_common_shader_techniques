shader_type canvas_item;

uniform sampler2D gradient_texture;

void fragment() {
	//vec4(0.0,0.0,0.0,1.0)
	//vec4(1.0,1.0,1.0,1.0)
	
	vec4 original_color=texture(TEXTURE,UV);
	
	float gray_tint=(original_color.r+original_color.g+original_color.b)/3.0;
	
	vec2 gray_uv = vec2(gray_tint);
	
	vec4 gradient_color=texture(gradient_texture,gray_uv);
	
	COLOR=vec4(gradient_color.rgb,original_color.a);
	
	
	
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
