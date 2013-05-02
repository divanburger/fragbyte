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
    float s = 0.5 + 0.5*sin(3.0*a + iGlobalTime);
    float g = sin(1.57+3.0*a+iGlobalTime);
    float d = 0.15 + 0.3*sqrt(s) + 0.15*g*g;
    float h = r/d;
    float f = 1.0-smoothstep( 0.95, 1.0, h );
    h *= 1.0-0.5*(1.0-h)*smoothstep(0.95+0.05*h,1.0,sin(3.0*a+iGlobalTime));
	
	vec3 bcol = vec3(0.9+0.1*q.y,1.0,0.9-0.1*q.y);
	bcol *= 1.0 - 0.5*r;
	h = 0.1 + h;
    vec3 col = mix( bcol, vec3(0.6*h,0.2+0.5*h,0.0)*1.2, f );

    gl_FragColor = vec4( col, 1.0 );
}