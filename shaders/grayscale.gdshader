shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	//vec4(0.0,0.0,0.0,1.0)
	//vec4(1.0,1.0,1.0,1.0)
	
	vec4 original_color=texture(TEXTURE,UV);
	
	float gray_tint=(original_color.r+original_color.g+original_color.b)/3.0;
	
	COLOR=vec4(gray_tint,gray_tint,gray_tint,1.0);
	
	COLOR.a *= original_color.a;
	
	
	
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
