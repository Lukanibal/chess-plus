attribute vec2 gm_Position;
attribute vec2 gm_Texture;

varying vec2 v_vTexcoord;

void main() 
{
    gl_Position = vec4(gm_Position.x, gm_Position.y, 0.0, 1.0);
    v_vTexcoord = gm_Texture;
}

