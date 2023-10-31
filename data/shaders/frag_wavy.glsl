precision mediump float;

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image

uniform float u_Time;
uniform float u_Speed;
uniform float u_Frequency;
uniform float u_Power;

varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform vec4 u_ClipRect;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	float speed = u_Speed;
	float frequency = u_Frequency;
	float power = u_Power;

	vec2 texCoord = v_TexCoordinate;
	texCoord.y += (sin((v_TexCoordinate.x + (u_Time * speed )) * frequency) * power) 
		+ (sin((v_TexCoordinate.x + (u_Time * speed * 2.0 )) * frequency * 0.5) * power * 0.5);
	
	float alpha = texture2D(u_alpha, texCoord).a;
	lowp vec4 final = texture2D(u_Texture, texCoord);
	
	gl_FragColor = v_Color * vec4(final.rgb, alpha) * clipping;
}