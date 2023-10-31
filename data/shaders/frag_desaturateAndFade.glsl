precision mediump float;			// Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform vec4 u_ClipRect; // = vec4(100, 100, 200, 200); // clip is in viewport space; y = 0 is bottom of screen 

uniform float blackIntensity;  //default is 0

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	lowp vec4 textureSample;
	textureSample.rgb = texture2D(u_Texture, v_TexCoordinate).rgb;
	textureSample.a = texture2D(u_alpha, v_TexCoordinate).a;
	float grey = (1.0-blackIntensity)*0.21 * textureSample.r + (1.0-blackIntensity)*0.71 * textureSample.g + (1.0-blackIntensity)*0.07 * textureSample.b;
	gl_FragColor = vec4(grey, grey, grey, textureSample.a) * clipping;
}
