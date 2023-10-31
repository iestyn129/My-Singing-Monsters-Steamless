precision mediump float;

uniform float u_Time;
uniform vec3 u_Resolution;

uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image

varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

void main()
{
	//screen space?
	//vec2 uv = gl_FragCoord.xy / u_Resolution.xy;
	//float nomalizedPos = uv.x;

	//rotate?
	//float nomalizedPos = cos(0.7) * v_TexCoordinate.x + sin(0.7) * v_TexCoordinate.y;

	float nomalizedPos = v_TexCoordinate.x;

	float location = mod(u_Time * 0.8, 5.0);

	float width = 0.08;
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