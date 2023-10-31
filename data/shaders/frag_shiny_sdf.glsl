precision mediump float;

uniform sampler2D 	u_Texture;
uniform vec4 		u_ClipRect;  // clip is in viewport space; y = 0 is bottom of screen 
uniform float 		u_Dilate;
uniform vec3 		u_FaceColor;
uniform float 		u_OutlineThickness;
uniform vec3 		u_OutlineColor;

uniform float 		u_Time;
uniform vec3 		u_Resolution;

varying vec4 v_Color;
varying vec2 v_TexCoordinate;
varying float v_Softness;
varying vec3 v_WorldPosition;

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);
	
	vec2 uv = v_WorldPosition.xy / u_Resolution.xy;

	float angle = 0.7;
	float nomalizedPos = cos(angle) * uv.x + sin(angle) * uv.y;

	float location = mod(u_Time * 0.2, 2.0);

	float shineWidth = 0.01;
	float shineSoftness = 1.0;
	float shineBrightness = 1.0;
	float shineGloss = 1.0;

	float d = texture2D(u_Texture, v_TexCoordinate).a;
	float outline = smoothstep(u_OutlineThickness - v_Softness, u_OutlineThickness + v_Softness, d);
	d = smoothstep(1.0 - u_Dilate - v_Softness, 1.0 - u_Dilate + v_Softness, d);
		
	vec4 finalFaceColor = vec4(u_FaceColor * v_Color.rgb, v_Color.a);
	vec4 finalOutlineColor = vec4(u_OutlineColor, v_Color.a);
	vec4 fillColor = mix(finalOutlineColor, finalFaceColor, outline);
	
	float normalized = 1.0 - clamp(abs((nomalizedPos - location) / shineWidth), 0.0, 1.0);
	float shinePower = smoothstep(0.0, shineSoftness*2.0, normalized);
	vec3 reflectColor = mix(vec3(1.0), fillColor.rgb * 10.0, shineGloss);

	fillColor.rgb += outline * (shinePower / 2.0) * shineBrightness * reflectColor;
	
	gl_FragColor = (fillColor * d) * clipping;

}