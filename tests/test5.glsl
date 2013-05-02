uniform vec3 iResolution;
uniform float iGlobalTime;

void main(void)
{
	vec2 uv = gl_FragCoord.xy / iResolution.xy;
	
	// To create the BG pattern
	vec3 final_color = vec3(1.0, 1.0, 1.0);
	vec3 bg_color = vec3(0.0, 0.0, 0.0);
	vec3 wave_color = vec3(0.0, 0.0, 0.0);
	
	float c1 = mod(uv.x, 2.0 * 0.01);
	c1 = step(0.01, c1);
	
	float c2 = mod(uv.y, 2.0 * 0.01);
	c2 = step(0.01, c2);
	
	bg_color = mix(vec3(0.0, 0.0, 0.3) * uv.x, vec3(0.5, 0.0, 0.0) * uv.y, c1 * c2);
	
	
	// To create the waves
	float wave_width = 0.01;
	uv  = uv * 2.0 - 1.0;
	uv.y += 0.1;
	float s = 0.0;
	for(int i = 0; i < 10; i++) {
		uv.y += (0.07 * sin(uv.x + s + iGlobalTime ));
		wave_width = abs(1.0 / (150.0 * uv.y));
		wave_color += vec3(wave_width * 1.9, wave_width, wave_width * 1.5);
		s += 1.0/7.0;
	}
	
	final_color = bg_color + wave_color;
	
	
	gl_FragColor = vec4(final_color, 1.0);
}