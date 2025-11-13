.class public final Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;
.super Landroid/graphics/RuntimeShader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$Companion;


# instance fields
.field public final baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final rippleSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;

.field public final sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->Companion:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$Companion;

    const-class v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    sget-object v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->Companion:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\n            uniform vec2 in_center;\n            uniform vec2 in_size;\n            uniform vec2 in_rippleMove;\n            uniform float in_cornerRadius;\n            uniform float in_thickness;\n            uniform float in_time;\n            uniform float in_distort_radial;\n            uniform float in_distort_xy;\n            uniform float in_fadeSparkle;\n            uniform float in_fadeFill;\n            uniform float in_fadeRing;\n            uniform float in_blur;\n            uniform float in_pixelDensity;\n            layout(color) uniform vec4 in_color;\n            uniform float in_sparkle_strength;\n            \n          \n        \n        float triangleNoise(vec2 n) {\n            n  = fract(n * vec2(5.3987, 5.4421));\n            n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n            float xy = n.x * n.y;\n            // compute in [0..2[ and remap to [-1.0..1.0[\n            return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n        }\n\n        const float PI = 3.1415926535897932384626;\n\n        float sparkles(vec2 uv, float t) {\n            float n = triangleNoise(uv);\n            float s = 0.0;\n            for (float i = 0; i < 4; i += 1) {\n                float l = i * 0.01;\n                float h = l + 0.1;\n                float o = smoothstep(n - l, h, n);\n                o *= abs(sin(PI * o * (t + 0.55 * i)));\n                s += o;\n            }\n            return s;\n        }\n\n        vec2 distort(vec2 p, float time, float distort_amount_radial,\n            float distort_amount_xy) {\n                float angle = atan(p.y, p.x);\n                  return p + vec2(sin(angle * 8 + time * 0.003 + 1.641),\n                            cos(angle * 5 + 2.14 + time * 0.00412)) * distort_amount_radial\n                     + vec2(sin(p.x * 0.01 + time * 0.00215 + 0.8123),\n                            cos(p.y * 0.01 + time * 0.005931)) * distort_amount_xy;\n        }\n\n        // Perceived luminosity (L\ufffd\ufffd), not absolute luminosity.\n        half getLuminosity(vec3 c) {\n            return 0.3 * c.r + 0.59 * c.g + 0.11 * c.b;\n        }\n\n        // Creates a luminosity mask and clamp to the legal range.\n        vec3 maskLuminosity(vec3 dest, float lum) {\n            dest.rgb *= vec3(lum);\n            // Clip back into the legal range\n            dest = clamp(dest, vec3(0.), vec3(1.0));\n            return dest;\n        }\n\n        // Return range [-1, 1].\n        vec3 hash(vec3 p) {\n            p = fract(p * vec3(.3456, .1234, .9876));\n            p += dot(p, p.yxz + 43.21);\n            p = (p.xxy + p.yxx) * p.zyx;\n            return (fract(sin(p) * 4567.1234567) - .5) * 2.;\n        }\n\n        // Skew factors (non-uniform).\n        const half SKEW = 0.3333333;  // 1/3\n        const half UNSKEW = 0.1666667;  // 1/6\n\n        // Return range roughly [-1,1].\n        // It\'s because the hash function (that returns a random gradient vector) returns\n        // different magnitude of vectors. Noise doesn\'t have to be in the precise range thus\n        // skipped normalize.\n        half simplex3d(vec3 p) {\n            // Skew the input coordinate, so that we get squashed cubical grid\n            vec3 s = floor(p + (p.x + p.y + p.z) * SKEW);\n\n            // Unskew back\n            vec3 u = s - (s.x + s.y + s.z) * UNSKEW;\n\n            // Unskewed coordinate that is relative to p, to compute the noise contribution\n            // based on the distance.\n            vec3 c0 = p - u;\n\n            // We have six simplices (in this case tetrahedron, since we are in 3D) that we\n            // could possibly in.\n            // Here, we are finding the correct tetrahedron (simplex shape), and traverse its\n            // four vertices (c0..3) when computing noise contribution.\n            // The way we find them is by comparing c0\'s x,y,z values.\n            // For example in 2D, we can find the triangle (simplex shape in 2D) that we are in\n            // by comparing x and y values. i.e. x>y lower, x<y, upper triangle.\n            // Same applies in 3D.\n            //\n            // Below indicates the offsets (or offset directions) when c0=(x0,y0,z0)\n            // x0>y0>z0: (1,0,0), (1,1,0), (1,1,1)\n            // x0>z0>y0: (1,0,0), (1,0,1), (1,1,1)\n            // z0>x0>y0: (0,0,1), (1,0,1), (1,1,1)\n            // z0>y0>x0: (0,0,1), (0,1,1), (1,1,1)\n            // y0>z0>x0: (0,1,0), (0,1,1), (1,1,1)\n            // y0>x0>z0: (0,1,0), (1,1,0), (1,1,1)\n            //\n            // The rule is:\n            // * For offset1, set 1 at the max component, otherwise 0.\n            // * For offset2, set 0 at the min component, otherwise 1.\n            // * For offset3, set 1 for all.\n            //\n            // Encode x0-y0, y0-z0, z0-x0 in a vec3\n            vec3 en = c0 - c0.yzx;\n            // Each represents whether x0>y0, y0>z0, z0>x0\n            en = step(vec3(0.), en);\n            // en.zxy encodes z0>x0, x0>y0, y0>x0\n            vec3 offset1 = en * (1. - en.zxy); // find max\n            vec3 offset2 = 1. - en.zxy * (1. - en); // 1-(find min)\n            vec3 offset3 = vec3(1.);\n\n            vec3 c1 = c0 - offset1 + UNSKEW;\n            vec3 c2 = c0 - offset2 + UNSKEW * 2.;\n            vec3 c3 = c0 - offset3 + UNSKEW * 3.;\n\n            // Kernel summation: dot(max(0, r^2-d^2))^4, noise contribution)\n            //\n            // First compute d^2, squared distance to the point.\n            vec4 w; // w = max(0, r^2 - d^2))\n            w.x = dot(c0, c0);\n            w.y = dot(c1, c1);\n            w.z = dot(c2, c2);\n            w.w = dot(c3, c3);\n\n            // Noise contribution should decay to zero before they cross the simplex boundary.\n            // Usually r^2 is 0.5 or 0.6;\n            // 0.5 ensures continuity but 0.6 increases the visual quality for the application\n            // where discontinuity isn\'t noticeable.\n            w = max(0.6 - w, 0.);\n\n            // Noise contribution from each point.\n            vec4 nc;\n            nc.x = dot(hash(s), c0);\n            nc.y = dot(hash(s + offset1), c1);\n            nc.z = dot(hash(s + offset2), c2);\n            nc.w = dot(hash(s + offset3), c3);\n\n            nc *= w*w*w*w;\n\n            // Add all the noise contributions.\n            // Should multiply by the possible max contribution to adjust the range in [-1,1].\n            return dot(vec4(32.), nc);\n        }\n\n        // Random rotations.\n        // The way you create fractal noise is layering simplex noise with some rotation.\n        // To make random cloud looking noise, the rotations should not align. (Otherwise it\n        // creates patterned noise).\n        // Below rotations only rotate in one axis.\n        const mat3 rot1 = mat3(1.0, 0. ,0., 0., 0.15, -0.98, 0., 0.98, 0.15);\n        const mat3 rot2 = mat3(-0.95, 0. ,-0.3, 0., 1., 0., 0.3, 0., -0.95);\n        const mat3 rot3 = mat3(1.0, 0. ,0., 0., -0.44, -0.89, 0., 0.89, -0.44);\n\n        // Octave = 4\n        // Divide each coefficient by 3 to produce more grainy noise.\n        half simplex3d_fractal(vec3 p) {\n            return 0.675 * simplex3d(p * rot1) + 0.225 * simplex3d(2.0 * p * rot2)\n                    + 0.075 * simplex3d(4.0 * p * rot3) + 0.025 * simplex3d(8.0 * p);\n        }\n\n        // Screen blend\n        vec3 screen(vec3 dest, vec3 src) {\n            return dest + src - dest * src;\n        }\n    \n            float soften(float d, float blur) {\n                float blurHalf = blur * 0.5;\n                return smoothstep(-blurHalf, blurHalf, d);\n            }\n\n            float subtract(float outer, float inner) {\n                return max(outer, -inner);\n            }\n        \n            float sdCircle(vec2 p, float r) {\n                return (length(p)-r) / r;\n            }\n\n            float circleRing(vec2 p, float radius) {\n                float thicknessHalf = radius * 0.25;\n\n                float outerCircle = sdCircle(p, radius + thicknessHalf);\n                float innerCircle = sdCircle(p, radius);\n\n                return subtract(outerCircle, innerCircle);\n            }\n        \n            uniform vec4 in_sparkleColor;\n                       \n            vec4 main(vec2 p) {\n                vec2 p_distorted = distort(p, in_time, in_distort_radial, in_distort_xy);\n                float radius = in_size.x * 0.5;\n                float sparkleRing = soften(circleRing(p_distorted-(in_rippleMove), radius), in_blur);\n                \n                // WORKAROUND: Optimization for \"sparkle-only\" rendering.\n                // return outside of valid area for better performance.\n                // this may cause unintended rendering only if the user put both sparkle and ripple effect.\n                if (in_sparkle_strength > 0.0 && sparkleRing > 0.95) {\n                    return vec4(0.0, 0.0, 0.0, 0.0); // keyword discard is not allowed in AGSL.\n                }\n                \n                float inside = soften(sdCircle(p_distorted-(in_rippleMove), radius * 1.25), in_blur);\n                float sparkle = sparkles(p - mod(p, in_pixelDensity * 0.8), in_time * 0.00175)\n                    * (1.-sparkleRing) * in_fadeSparkle;\n\n                float rippleInsideAlpha = (1.-inside) * in_fadeFill;\n                float rippleRingAlpha = (1.-sparkleRing) * in_fadeRing;\n                float rippleAlpha = max(rippleInsideAlpha, rippleRingAlpha) * in_color.a;\n                vec4 ripple = vec4(in_color.rgb, 1.0) * rippleAlpha;\n\n            if (in_sparkle_strength>0.0) {\n                vec3 wSparkleColor = mix(in_sparkleColor.rgb, vec3(1.0, 1.0, 1.0), 0.3);\n                return mix(ripple, vec4(wSparkleColor.rgb, sparkle * in_sparkle_strength), sparkle * in_sparkle_strength);\n            }\n            else{\n                return ripple;\n            }\n            \n//                return vec4(in_sparkleColor.rgb, sparkle * in_sparkle_strength);\n//return mix(ripple, vec4(sparkle), sparkle * in_sparkle_strength);\n       \n\n            }\n        "

    invoke-direct {p0, v0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;-><init>(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;)V

    iput-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    return-void
.end method
