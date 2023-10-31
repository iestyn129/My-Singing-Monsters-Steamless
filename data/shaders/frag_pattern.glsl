precision mediump float;

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image

uniform vec4 u_ClipRect;
uniform float u_Time;
uniform float u_dX;
uniform float u_dY;
uniform vec4 u_TexParams;

varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	vec2 texCoord = (v_TexCoordinate / u_TexParams.xy) * u_TexParams.zw;

	texCoord.xy -= v_TexCoordinate.xy + u_Time * vec2(u_dX, u_dY);
	
	float alpha = texture2D(u_alpha, texCoord).a;
	lowp vec4 final = texture2D(u_Texture, texCoord);
	
	gl_FragColor = v_Color * vec4(final.rgb, alpha) * clipping;
}