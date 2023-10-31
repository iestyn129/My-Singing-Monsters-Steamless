
precision mediump float;		// Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image

varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.

void main()
{
	float alpha = texture2D(u_alpha, v_TexCoordinate).a * v_Color.a;
	lowp vec4 final = texture2D(u_Texture, v_TexCoordinate) * alpha;
	
	gl_FragColor = vec4(final.rgb, alpha); // remove vertex color
}
