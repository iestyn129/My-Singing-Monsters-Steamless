precision mediump float;			// Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.

varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform vec4 u_ClipRect; // = vec4(100, 100, 200, 200); // clip is in viewport space; y = 0 is bottom of screen 
uniform float u_Factor;
uniform vec3  u_TargetColor;
uniform float u_Fade;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	vec4 textureSample = texture2D(u_Texture, v_TexCoordinate);
	vec4 alphaSample = texture2D(u_alpha, v_TexCoordinate);
	vec4 base = vec4(textureSample.rgb, alphaSample.a * u_Fade);
	
	vec4 targetColor = vec4(u_TargetColor * base.a, base.a); //premult target color

	vec4 mixedColor = mix(v_Color * base, targetColor, u_Factor);

	gl_FragColor = mixedColor * clipping;
}
