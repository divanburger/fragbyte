// Created by inigo quilez - iq/2013
// License Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.

uniform vec3 iResolution;
uniform float iGlobalTime;

void main(void)
{
	vec2  q = gl_FragCoord.xy/iResolution.xy;
    float x = -1.0 + 2.0*q.x;
    float y = -1.0 + 2.0*q.y;
	y *= iResolution.y / iResolution.x;

    float a = atan(x,y);
    float r = sqrt(x*x+y*y);

    vec3 bcol = vec3(0.9+0.1*q.y,1.0,0.9-0.1*q.y);
	bcol *= 1.0 - 0.5*r;

    gl_FragColor = vec4(bcol, 1.0 );
}