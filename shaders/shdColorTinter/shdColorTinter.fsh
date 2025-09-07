//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 targetColor; 
uniform float tintStrength; 

void main() 
{
    vec4 baseColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    float distance = length(baseColor.rgb - targetColor);
    
	
    vec3 tintedColor = mix(baseColor.rgb, targetColor, distance * tintStrength);

	if(baseColor.a <= 0.7)
	{
		discard;
	}
	
	if(baseColor.rgb != vec3(0., 0., 0.))
	{
		gl_FragColor = vec4(tintedColor, baseColor.a);
	}
    else
	{
		gl_FragColor = baseColor.rgba;
	}
	
}