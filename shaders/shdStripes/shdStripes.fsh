varying vec2 v_vTexcoord;

uniform float u_time;
uniform vec3 u_color1;
uniform vec3 u_color2;
uniform float u_stripeWidth;

void main() 
{
    float stripe = step(0.5, mod(v_vTexcoord.x + v_vTexcoord.y + u_time * 0.1, u_stripeWidth));
    
    vec3 color = mix(u_color1, u_color2, stripe);
    
    gl_FragColor = vec4(color, 1.0);
}
