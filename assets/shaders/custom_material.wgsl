struct CustomMaterial {
    time: f32,
};

@group(1) @binding(0)
var<uniform> material: CustomMaterial;


@fragment
fn fragment(@location(0) world_position: vec4<f32>, @location(1) world_normal: vec3<f32>, @location(2) uv: vec2<f32>) -> @location(0) vec4<f32> {
    return vec4<f32>(material.time % 5.0 / 5.0, 0.0, 0.0, 1.0);
}
