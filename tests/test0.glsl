uniform vec3 iResolution;
uniform float iGlobalTime;

void main()
{
	vec2 uv = abs(gl_FragCoord.xy/iResolution.xy);
	uv = abs(uv * 2.0 - 1.0);
	gl_FragColor = vec4(uv.x, uv.y, 0.0, 1.0);
}