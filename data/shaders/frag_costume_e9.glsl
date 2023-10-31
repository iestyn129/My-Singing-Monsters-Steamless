precision mediump float;			// Set the default precision to medium. We don't need as high of a precision in the fragment shader.

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform float u_Time;
uniform lowp sampler2D u_TextureSequence;

uniform vec4 u_ClipRect;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	float alpha = texture2D(u_alpha, v_TexCoordinate).a;	

	//convert from original texture sheet uv space to texture strip uv space

	//normalize
	float sheetPaddedWidth = 512.0;
	float sheetPaddedHeight = 512.0;
	float sheetOffsetX = 335.0;
	float sheetOffsetY = 188.0;

	vec2 uv = vec2((v_TexCoordinate.x * sheetPaddedWidth  - sheetOffsetX), (v_TexCoordinate.y * sheetPaddedHeight - sheetOffsetY)) / 2.0;
	
	float frame = 0.0;
	float cycleTime = 3.0;
	float t = mod(u_Time, cycleTime);
	
	if (t < 0.03)
		frame = 1.0;
	else if (t < 0.09 )
		frame = 2.0;
	else if (t < 0.17 )
		frame = 1.0;
	else if (t < 0.24 )
		frame = 2.0;
	else if (t < 0.3 )
		frame = 3.0;
	else if (t < 0.38 )
		frame = 2.0;
	else if (t < 0.51 )
		frame = 3.0;
	else if (t < 0.56 )
		frame = 2.0;	
	else if (t < 0.68 )
		frame = 3.0;
	else if ( t < 0.76 )
		frame = 2.0;
	else if ( t < 0.8 )
		frame = 1.0;	
	else if ( t < 0.88 )
		frame = 2.0;
	else if ( t < 0.95 )
		frame = 3.0;
	else if ( t < 0.99 )
		frame = 1.0;
	else
		frame = 0.0;

	float stripImagePaddedWidth = 64.0;
	float stripImagePaddedHeight = 128.0;

	float frameHeight = 26.0;

	float frameOffset = frame * (frameHeight / stripImagePaddedHeight);

	//convert to the strip's texture space...(using padded width)
	vec2 uv2 = vec2(uv.x / stripImagePaddedWidth, uv.y / stripImagePaddedHeight + frameOffset);

	lowp vec4 final = texture2D(u_TextureSequence, uv2) * v_Color * alpha;
	gl_FragColor = vec4(final.rgb, alpha) * clipping;
}
