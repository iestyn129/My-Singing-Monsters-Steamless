
precision mediump float;        // Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform sampler2D u_Texture;    // The input texture.
uniform sampler2D u_alpha;    // The alpha texture.
varying lowp vec4 v_Color;           // This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.

uniform vec4 u_ClipRect;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	lowp vec4 textureSample;

	textureSample = texture2D(u_Texture, v_TexCoordinate) * texture2D(u_alpha, v_TexCoordinate);
	textureSample.rgb = textureSample.rgb * textureSample.a;

	gl_FragColor = v_Color * textureSample * clipping;

}
