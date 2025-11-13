.class final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $height:I

.field final synthetic $surfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Landroid/graphics/SurfaceTexture;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;",
            "Landroid/graphics/SurfaceTexture;",
            "II",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$width:I

    iput p4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$height:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$width:I

    iget v4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$height:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Landroid/graphics/SurfaceTexture;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    const/4 v2, 0x1

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->label:I

    if-nez v3, :cond_1a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v4, v3, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    if-nez v4, :cond_18

    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    iget-object v5, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v5, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget v6, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$width:I

    iget v7, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->$height:I

    invoke-virtual {v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    iget-object v5, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "onSurfaceCreated()"

    const-string v9, "TransparentVideoRenderer"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    new-instance v10, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    sget-object v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->VERTEX:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    const-string v12, "#version 320 es\n    precision highp float;\n    \n    in vec2 aPos;\n    in vec2 aUv;\n    \n    out vec2 vUv;\n    \n    void main() {\n        gl_Position = vec4(aPos, 0.0, 1.0);\n        vUv = aUv;\n    }\n    "

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;Ljava/lang/String;)V

    new-instance v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    sget-object v13, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->FRAGMENT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    const v14, 0x8b30

    invoke-static {v14}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v14

    new-array v15, v2, [I

    const-string v2, "#version 320 es\n    #extension GL_OES_EGL_image_external_essl3 : require\n    precision highp float;\n    \n    uniform samplerExternalOES videoTexture;\n    uniform vec2 uTexelSize;\n    \n    uniform float uReinforcedEdgeAmount; \n    \n    in vec2 vUv;\n    out vec4 FragColor;\n    \n    const int MLT = 1;\n    const int MRT = 2;\n    const int MLB = 3;\n    const int MRB = 4;\n    \n    float getEdgeDelta(samplerExternalOES tex, vec2 tuv) {\n        /* adjacent texel array for texel[4]\n        036\n        147\n        258\n        */\n        float thickness = 2.0;\n        vec3 c[9];\n        for (int i = 0; i < 3; ++i) for (int j = 0; j < 3; ++j) {\n            vec2 uv = tuv + thickness * vec2(i-1,j-1) * uTexelSize;\n            c[3*i + j] = texture(tex, uv).rgb;\n        }\n    \n        vec3 dx = 2.0 * abs(c[7] - c[1]) + abs(c[2] - c[6]) + abs(c[8] - c[0]);\n        vec3 dy = 2.0 * abs(c[3] - c[5]) + abs(c[6] - c[8]) + abs(c[0] - c[2]);\n        float delta = length(0.25 * (dx + dy) * 0.5);\n        return clamp(delta, 0.0, 1.0);\n    }\n    \n    float getAlphaOf(int cellId, vec2 nuv) {\n        // to protect interpolation on edge texel on alpha area, clamp uv with texel size.\n        // since the nuv is multiplied, use double size of texel as well.\n        // further, resolution of height is stretched to 25%.  \n        vec2 borderSize = vec2(uTexelSize.x * 2.0, uTexelSize.y * 2.0 * 1.25);\n        vec2 tuv = vec2(clamp(nuv, borderSize, 1.0 - borderSize));\n        vec2 euv = vec2(clamp(nuv, borderSize*2.8, 1.0 - borderSize*2.8));\n        vec2 alphaUv = vec2(tuv.x / 4.0, 1.0 / 1.25 + tuv.y * 0.25 / 1.25);\n        for (int i = MLT; i < cellId; i++) {\n            alphaUv.x += 0.25;\n        }\n        vec2 eUv = vec2(euv.x / 4.0, 1.0 / 1.25 + euv.y * 0.25 / 1.25);\n        for (int i = MLT; i < cellId; i++) {\n            eUv.x += 0.25;\n        }\n        return length(texture(videoTexture, alphaUv).rgb) / sqrt(3.0);\n    }\n    \n    float getAlpha(vec2 uv) {\n        if (uv.x < 0.5) {\n            if (uv.y > 0.5) { // RT         \n                vec2 nUv = vec2(uv.x * 2.0, (uv.y - 0.5) * 2.0);\n                return getAlphaOf(MRT, nUv);\n            } else { // LT\n                vec2 nUv = vec2(uv.x * 2.0, uv.y * 2.0);\n                return getAlphaOf(MLT, nUv);\n            }\n        }\n        else {\n            if (uv.y > 0.5) { // RB\n                vec2 nUv = vec2((uv.x - 0.5) * 2.0, (uv.y - 0.5) * 2.0);\n                return getAlphaOf(MRB, nUv);            \n            } else { // LB\n                vec2 nUv = vec2((uv.x - 0.5) * 2.0, uv.y * 2.0);\n                return getAlphaOf(MLB, nUv);  \n            }\n        }\n    }\n    \n    vec4 getArgb() {\n        vec2 rgbUv = vec2(vUv.x, vUv.y * (1.0 / 1.25));\n        float alpha = getAlpha(vUv);\n        if (uReinforcedEdgeAmount > 0.001) {\n            // alpha data have a loss when downscaled-encoding.\n            // to recover this loss, alpha can be adjusted manually.\n            // getting edge from rgb, not alpha. this is hacky, but this can improve the quality.\n            float edgeDelta = getEdgeDelta(videoTexture, rgbUv); \n            alpha *= 1.0 + uReinforcedEdgeAmount * edgeDelta;\n        }\n        return vec4(texture(videoTexture, rgbUv).rgb, alpha);\n    }\n    \n    void main() {\n        FragColor = getArgb();\n    }\n    "

    invoke-static {v14, v2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v14}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const v1, 0x8b81

    const/4 v0, 0x0

    invoke-static {v14, v1, v15, v0}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    iget-boolean v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->isWearable:Z

    if-nez v1, :cond_1

    aget v14, v15, v0

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "set FragShader isWearable="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needReplace="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "getEdgeDelta(sampler2D tex, vec2 tuv)"

    const-string v1, "getEdgeDelta(samplerExternalOES tex, vec2 tuv)"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {v11, v13, v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;Ljava/lang/String;)V

    invoke-direct {v8, v10, v11}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;)V

    iput-object v8, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    sget-object v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->VEC2:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    sget-object v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget-object v9, v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    const-string v10, "aPos"

    invoke-direct {v0, v1, v8, v10, v9}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    iget-object v9, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v9, :cond_4

    move-object v9, v2

    :cond_4
    sget-object v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D_UV:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget-object v11, v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    const-string v13, "aUv"

    invoke-direct {v1, v9, v8, v13, v11}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0, v1}, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    move-result-object v0

    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->attribSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_3
    const/4 v11, 0x2

    if-ge v9, v11, :cond_5

    aget-object v11, v0, v9

    iget-object v14, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    add-int/2addr v9, v11

    goto :goto_3

    :cond_5
    iget-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->textureSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    iget-object v9, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v9, :cond_6

    move-object/from16 v17, v2

    goto :goto_4

    :cond_6
    move-object/from16 v17, v9

    :goto_4
    const/16 v22, 0x1

    const/16 v23, 0x0

    const-string v18, "videoTexture"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Ljava/lang/String;Ljava/nio/Buffer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    const/16 v11, 0x2802

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v14, 0x812f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    const/16 v11, 0x2803

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    const/16 v11, 0x2801

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v14, 0x2601

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    const/16 v11, 0x2800

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->videoTexture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v1, :cond_7

    move-object/from16 v17, v2

    :goto_5
    const/4 v1, 0x2

    goto :goto_6

    :cond_7
    move-object/from16 v17, v1

    goto :goto_5

    :goto_6
    new-array v9, v1, [F

    fill-array-data v9, :array_0

    const/16 v22, 0x10

    const/16 v23, 0x0

    const-string v19, "uTexelSize"

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->uTexelSize:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v1, :cond_8

    move-object/from16 v25, v2

    goto :goto_7

    :cond_8
    move-object/from16 v25, v1

    :goto_7
    sget-object v26, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->FLOAT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    iget v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->reinforcedEdgeAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    const/16 v30, 0x10

    const/16 v31, 0x0

    const-string v27, "uReinforcedEdgeAmount"

    const/16 v29, 0x0

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v31}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->uReinforcedEdgeAmount:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v1, :cond_9

    move-object/from16 v25, v2

    goto :goto_8

    :cond_9
    move-object/from16 v25, v1

    :goto_8
    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->uTexelSize:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    if-nez v1, :cond_a

    move-object/from16 v28, v2

    goto :goto_9

    :cond_a
    move-object/from16 v28, v1

    :goto_9
    iget-object v1, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->attribSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

    iget-object v8, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->textureSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

    iget-object v9, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->fbo:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;

    move-object/from16 v24, v9

    move-object/from16 v26, v1

    move-object/from16 v27, v8

    move-object/from16 v29, v0

    filled-new-array/range {v24 .. v29}, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->glObj:Ljava/util/List;

    if-nez v0, :cond_b

    move-object v0, v2

    :cond_b
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->create()V

    goto :goto_a

    :cond_c
    iget-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->glObj:Ljava/util/List;

    if-nez v0, :cond_d

    move-object v0, v2

    :cond_d
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->bind()V

    goto :goto_b

    :cond_e
    invoke-virtual {v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->connectVideoSurfaceTexture()V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    iget-object v0, v5, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->texturingRenderpass:Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    new-instance v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    sget-object v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->VERTEX:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    invoke-direct {v8, v9, v12}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    sget-object v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->FRAGMENT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    const-string v12, "#version 320 es\n    precision highp float;\n    \n    uniform sampler2D tex;\n    \n    in vec2 vUv;\n    out vec4 FragColor;\n    \n    void main() {\n        FragColor = texture(tex, vUv);\n    }\n    "

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;Ljava/lang/String;)V

    invoke-direct {v1, v8, v9}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;)V

    iput-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

    invoke-direct {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;-><init>()V

    new-instance v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    iget-object v9, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v9, :cond_f

    move-object v9, v2

    :cond_f
    sget-object v11, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->VEC2:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    sget-object v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget-object v12, v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    invoke-direct {v8, v9, v11, v10, v12}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    iget-object v10, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v10, :cond_10

    move-object v10, v2

    :cond_10
    iget-boolean v12, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->flipY:Z

    if-eqz v12, :cond_11

    sget-object v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D_UV_FLIP:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget-object v12, v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    goto :goto_c

    :cond_11
    sget-object v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D_UV:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget-object v12, v12, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    :goto_c
    invoke-direct {v9, v10, v11, v13, v12}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v8, v9}, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    const/4 v10, 0x2

    :goto_d
    if-ge v9, v10, :cond_12

    aget-object v11, v8, v9

    iget-object v12, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    add-int/2addr v9, v11

    goto :goto_d

    :cond_12
    iget-object v8, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v8, :cond_13

    move-object v8, v2

    :cond_13
    filled-new-array {v8, v1}, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->glObj:Ljava/util/List;

    if-nez v1, :cond_14

    move-object v1, v2

    :cond_14
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v8}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->create()V

    goto :goto_e

    :cond_15
    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->glObj:Ljava/util/List;

    if-nez v0, :cond_16

    goto :goto_f

    :cond_16
    move-object v2, v0

    :goto_f
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->bind()V

    goto :goto_10

    :cond_17
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onSurfaceChanged(II)V

    iput-object v4, v3, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$onSurfaceTextureAvailable$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    if-eqz v1, :cond_19

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onDraw()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
