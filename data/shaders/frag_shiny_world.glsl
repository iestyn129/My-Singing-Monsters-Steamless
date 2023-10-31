precision mediump float;

uniform float u_Time;
uniform vec3 u_Resolution;

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image

varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.
varying vec3 v_WorldPosition;

void main()
{
	vec2 uv = v_WorldPosition.xy / u_Resolution.xy;

	float angle = 0.7;
	float nomalizedPos = cos(angle) * uv.x + sin(angle) * uv.y;

	float location = mod(u_Time * 0.2, 2.0);

	float width = 0.01;
	float softness = 1.0;
	float brightness = 1.0;
	float gloss = 1.0;

	vec4 color = texture2D(u_Texture, v_TexCoordinate);
	color.a = texture2D(u_alpha, v_TexCoordinate).a;
	vec3 originAlpha = vec3(color.a);
	color *= v_Color;

	float normalized = 1.0 - clamp(abs((nomalizedPos - location) / width), 0.0, 1.0);
	float shinePower = smoothstep(0.0, softness*2.0, normalized);
	vec3 reflectColor = mix(vec3(1.0), color.rgb * 10.0, gloss);

	color.rgb += originAlpha * (shinePower / 2.0) * brightness * reflectColor;

	gl_FragColor = color;
}