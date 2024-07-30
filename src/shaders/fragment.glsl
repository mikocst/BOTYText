varying vec2 vUv;
uniform float uTime;
uniform sampler2D uTexture;

void main() {
    float time = uTime;

    vec2 uv = vUv;
    vec2 repeat = vec2(10.0, 12.0);
    uv.x += sin(uv.y + time) * 0.05;
    uv = fract(uv * repeat + vec2(0.0, uTime));

    vec4 color = texture2D(uTexture, uv);

    gl_FragColor = color;
}