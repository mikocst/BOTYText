varying vec2 vUv;
uniform float uTime;

void main() {
    vUv = uv;

    vec3 transformed = position;
    transformed.y += cos(position.y + uTime) * 0.2;
    transformed.z += sin(position.x + uTime) * 1.5;

    gl_Position = projectionMatrix * modelViewMatrix * vec4(transformed, 1.0);
}