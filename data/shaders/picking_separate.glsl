
precision mediump float;        // Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform sampler2D u_Texture;    // The input texture.
varying vec4 v_Color;           // This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.

uniform sampler2D palette;

void main()
{
	if(texture2D(palette, v_TexCoordinate ).a > 0.1)
		gl_FragColor = v_Color;
	else
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);

}
