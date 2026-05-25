shader_type canvas_item;

uniform float brightness = 1.0;

void fragment() {
    vec4 tex = texture(TEXTURE, UV);
    tex.rgb *= brightness;
    COLOR = tex;
}