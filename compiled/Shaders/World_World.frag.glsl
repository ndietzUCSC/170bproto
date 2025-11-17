#version 450
#include "compiled.inc"
in vec3 normal;
out vec4 fragColor;
void main() {
	vec3 n = normalize(normal);
	fragColor.rgb = vec3(0.2531198263168335, 0.25095728039741516, 0.25914236903190613);
	fragColor.a = 0.0;
}
