uniform vec3 iResolution;
uniform float iGlobalTime;

float dist(vec3 pos)
{
	return length(pos - vec3(0.0, 0.0, 3.0)) - 1.0;
}

void main() 
{
	vec2 uv = gl_FragCoord.xy / iResolution.xy;
	vec2 xy = (uv - 0.5) * 2.0;

	vec3 b = normalize(vec3(xy, 1.0));

	float t = 0.0;
	for (int i = 0; i < 10; i++) 
	{
		float h = dist(b*t);

		t += h;
	}

	vec3 col = vec3(t, t, t) * 0.1;

	gl_FragColor = vec4(col, 1.0);
}