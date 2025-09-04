
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

// Modify these constants to change the wave effect
const float xSpeed = 0.002; // Speed of the wave
const float xFreq = 8.0;  // Frequency of the wave
const float xSize = 10.0;   // Size of the wave
const float chromaOffset = 0.002; // Offset for chromatic distortion

void main()
{
    // Calculate the wave distortion
    float xWave = sin(Time * xSpeed + v_vTexcoord.y * xFreq) * (xSize * Texel.x);
    
    // Sample the texture with chromatic offsets
    vec4 colorR = texture2D(gm_BaseTexture, v_vTexcoord + vec2(xWave + chromaOffset, 0.0));
    vec4 colorG = texture2D(gm_BaseTexture, v_vTexcoord + vec2(xWave, 0.0));
    vec4 colorB = texture2D(gm_BaseTexture, v_vTexcoord + vec2(xWave - chromaOffset, 0.0));
    
    // Combine the colors to create a chromatic effect
    gl_FragColor = v_vColour * vec4(colorR.r, colorG.g, colorB.b, 1.0);
}