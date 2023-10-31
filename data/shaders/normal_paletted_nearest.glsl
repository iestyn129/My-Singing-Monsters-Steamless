
precision mediump float;        // Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform sampler2D u_Texture;    // The input texture.
varying vec4 v_Color;           // This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.

uniform sampler2D palette;

void main()
{
	float index = texture2D(u_Texture, v_TexCoordinate).r;
	//slightly more than 16 * 255/256 and slightly less than 256/255
	gl_FragColor = v_Color * texture2D(palette, vec2(fract(index*15.938), index/1.0039));
}
