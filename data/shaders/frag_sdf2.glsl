precision mediump float;

varying vec2 		v_TexCoordinate;
varying float 		v_Scale;
varying float 		v_BiasIn;
varying float 		v_BiasOut;
varying vec4 		v_FaceColor;
varying vec4 		v_OutlineColor;

uniform sampler2D 	u_Texture;
uniform vec4 		u_ClipRect; // clip is in viewport space; y = 0 is bottom of screen 

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	float sdf = texture2D(u_Texture, v_TexCoordinate).a * v_Scale;
	vec4 finalColor = mix(v_OutlineColor, v_FaceColor, clamp(sdf - v_BiasOut, 0.0, 1.0));
	finalColor *= clamp(sdf - v_BiasIn, 0.0, 1.0);

	gl_FragColor = finalColor * clipping;
 }