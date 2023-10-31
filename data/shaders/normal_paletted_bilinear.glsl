
precision mediump float;        // Set the default precision to medium. We don't need as high of a precision in the fragment shader.
//uniform vec3 u_LightPos;        // The position of the light in eye space.
uniform sampler2D u_Texture;    // The input texture.
//varying vec3 v_Position;        // Interpolated position for this fragment.
varying vec4 v_Color;           // This is the color from the vertex shader interpolated across the triangle per fragment.
//varying vec3 v_Normal;          // Interpolated normal for this fragment.
varying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.

//uniform vec4 palette[256];    //	gl_FragColor = v_Color * palette[1];
uniform sampler2D palette;
uniform vec2 textureSize;
uniform vec2 pixelSize;

void main()
{
//	gl_FragColor = v_Color * texture2D(u_Texture, v_TexCoordinate);//32bit texture
/*
	vec4 textureColor = texture2D(u_Texture, v_TexCoordinate).rgba;
	
	float index = textureColor.r;
	//slightly more than 16 * 255/256 and slightly less than 256/255
	vec4 paletteColor = texture2D(palette, vec2(index*15.938, index/1.0039) ).rgba;

	gl_FragColor = v_Color * paletteColor;
*/
//this might be stuff for bilinear filtering?
// gvec texelFetch(gsampler sampler?, ivec texCoord?[, int lod?] [, int sample?]);
// gvec texelFetchOffset(gsampler sampler?, ivec texCoord?, int lod?, ivec offset?);
vec2 texCoord = v_TexCoordinate - (pixelSize*0.5);
	vec4 textureColor1 = texture2D(u_Texture, texCoord).rgba;
	vec4 textureColor2 = texture2D(u_Texture, texCoord+vec2(pixelSize.x,0)).rgba;
	vec4 textureColor3 = texture2D(u_Texture, texCoord+vec2(0,pixelSize.y)).rgba;
	vec4 textureColor4 = texture2D(u_Texture, texCoord+pixelSize).rgba;
	
	float index1 = textureColor1.r;
	float index2 = textureColor2.r;
	float index3 = textureColor3.r;
	float index4 = textureColor4.r;
	//slightly more than 16 * 255/256 and slightly less than 256/255
	vec4 paletteColor1 = texture2D(palette, vec2(fract(index1*15.938), index1/1.0039) ).rgba;
	vec4 paletteColor2 = texture2D(palette, vec2(fract(index2*15.938), index2/1.0039) ).rgba;
	vec4 paletteColor3 = texture2D(palette, vec2(fract(index3*15.938), index3/1.0039) ).rgba;
	vec4 paletteColor4 = texture2D(palette, vec2(fract(index4*15.938), index4/1.0039) ).rgba;

float dx = fract(textureSize.x*texCoord.s);
float dy = fract(textureSize.y*texCoord.t);
	paletteColor1 = mix(paletteColor1, paletteColor2, dx);
	paletteColor3 = mix(paletteColor3, paletteColor4, dx);
	paletteColor1 = mix(paletteColor1, paletteColor3, dy);
	gl_FragColor = v_Color * paletteColor1;

}


//some non es reference code

/*
uniform sampler2D texture;
uniform sampler2D palette;
void main()
{
	vec4 textureColor = texture2D(texture, gl_TexCoord[0].xy).rgba;
	vec3 paletteColor = texture2D(palette, vec2(textureColor.r, 0)).rgb;
	gl_FragColor = vec4(paletteColor.r, paletteColor.g, paletteColor.b, textureColor.a);
}


//and the vertex shader part
void main()
{
	gl_Position = ftransform();
	gl_TexCoord[0] = gl_MultiTexCoord0;
}

//and the stupid part
int paletteLocation = GL20.glGetUniformLocation(shaderProgram, "palette");
GL20.glUniform1i(paletteLocation, 1);
GL13.glActiveTexture(GL13.GL_TEXTURE1);
GL11.glBindTexture(GL11.GL_TEXTURE_2D, palette.getTextureID());
int textureLocation = GL20.glGetUniformLocation(shaderProgram, "texture");
GL20.glUniform1i(textureLocation, 0);
GL13.glActiveTexture(GL13.GL_TEXTURE0);
GL11.glBindTexture(GL11.GL_TEXTURE_2D, texture.getTextureID());

*/