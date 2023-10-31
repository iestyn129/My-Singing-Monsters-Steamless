precision mediump float;			// Set the default precision to medium. We don't need as high of a precision in the fragment shader.

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform float u_Time;
uniform vec4 u_ClipRect;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);
	vec3 orig =  texture2D(u_Texture, v_TexCoordinate).rgb;
	float alpha = texture2D(u_alpha, v_TexCoordinate).a;
	float offset = 0.75 + ((sin(u_Time*2.0) + 1.0) * 0.5) * 0.5;
	lowp vec3 final = orig * offset * v_Color.rgb * alpha;
	gl_FragColor = vec4(final.rgb, alpha) * clipping;
}
