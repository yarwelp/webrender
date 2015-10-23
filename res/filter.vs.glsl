#version 110

attribute vec3 aPosition;
attribute vec2 aColorTexCoord;
attribute vec2 aMaskTexCoord;

uniform mat4 uTransform;

varying vec2 vColorTexCoord;
varying vec2 vMaskTexCoord;

void main(void)
{
	vColorTexCoord = aColorTexCoord / 65535.0;
	vMaskTexCoord = aMaskTexCoord / 65535.0;
    gl_Position = uTransform * vec4(aPosition, 1.0);
}