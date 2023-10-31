precision mediump float;			// Set the default precision to medium. We don't need as high of a precision in the fragment shader.
uniform lowp sampler2D u_Texture;	// The input texture.
uniform lowp sampler2D u_alpha;		// The alpha image
varying lowp vec4 v_Color;			// This is the color from the vertex shader interpolated across the triangle per fragment.
varying vec2 v_TexCoordinate;		// Interpolated texture coordinate per fragment.

uniform vec4 u_ClipRect; // = vec4(100, 100, 200, 200); // clip is in viewport space; y = 0 is bottom of screen 

uniform vec4 tintA; //outline color A
uniform vec4 tintB; //outline color B

uniform float u_Time; //tint will oscillate between tintA and tint B

float getClipping(vec2 position, vec4 clipRect)
{
	vec2 inside = step(clipRect.xy, position.xy) * step(position.xy, clipRect.zw);
	return inside.x * inside.y;
}

#define speed  1.0 

mat3 sx = mat3(
 	1.0, 2.0, 1.0, 
    0.0, 0.0, 0.0, 
   -1.0, -2.0, -1.0 
);

mat3 sy = mat3(
	1.0, 0.0, -1.0, 
    2.0, 0.0, -2.0, 
    1.0, 0.0, -1.0 
);


void main()
{
	float clipping = getClipping(gl_FragCoord.xy, u_ClipRect);

	float time = u_Time * speed;
	float tintVal = (1.0 + sin(time)) * 0.5;
	vec4 tint = mix(tintA, tintB, tintVal);

	lowp vec4 textureSample;
	textureSample.rgb = texture2D(u_Texture, v_TexCoordinate).rgb;
	textureSample.a = texture2D(u_alpha, v_TexCoordinate).a;

	//ivec2 size = textureSize(u_Texture, 0); // not supported
	vec2 size = vec2(512.0, 512.0); //size of pieces sheet, scaled to desired size of outline...TODO: pass in as uniform
	vec2 texelSize = 1.0 / size;
	
	//apply a sobel filter to the alpha detect the edges
	mat3 I;
	for (int i=0; i<3; i++) {
        for (int j=0; j<3; j++) {
            I[i][j] = texture2D(u_alpha, v_TexCoordinate + vec2(float(i-1)*texelSize.x, float(j-1)*texelSize.y)).a;
		}
    }

	float gx = dot(sx[0], I[0]) + dot(sx[1], I[1]) + dot(sx[2], I[2]); 
	float gy = dot(sy[0], I[0]) + dot(sy[1], I[1]) + dot(sy[2], I[2]);
	float edge = sqrt(pow(gx, 2.0)+pow(gy, 2.0));
	
	float blackIntensity = 0.999;
	float grey = (1.0-blackIntensity)*0.21 * textureSample.r 
		+ (1.0-blackIntensity)*0.71 * textureSample.g 
		+ (1.0-blackIntensity)*0.07 * textureSample.b;
	vec3 baseColor = vec3(grey, grey, grey);

	vec3 final = mix(baseColor, tint.rgb, edge) * textureSample.a;
	gl_FragColor = vec4(final, textureSample.a) * clipping;

}
