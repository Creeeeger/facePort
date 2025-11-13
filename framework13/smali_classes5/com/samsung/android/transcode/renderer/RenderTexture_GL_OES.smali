.class public Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;
.super Ljava/lang/Object;
.source "RenderTexture_GL_OES.java"


# static fields
.field private static final blacklist A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final blacklist A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final blacklist BLUR_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

.field private static final blacklist FLOAT_SIZE_BYTES:I = 0x4

.field public static final blacklist PREPARE_FAILURE:I = 0x0

.field public static final blacklist PREPARE_SUCCESS:I = 0x1

.field private static final blacklist TEXTURE_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

.field private static final blacklist TEXTURE_VERTEX_SHADER_CODE:Ljava/lang/String; = "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

.field private static final blacklist U_FRMAE_HEIGHT:Ljava/lang/String; = "fHegiht"

.field private static final blacklist U_FRMAE_WIDTH:Ljava/lang/String; = "fWidth"

.field private static final blacklist U_MVPMATRIX:Ljava/lang/String; = "u_MVPMatrix"

.field private static final blacklist U_STMATRIX:Ljava/lang/String; = "u_STMatrix"

.field private static final blacklist U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field private static final blacklist VERTICES_DATA_POS_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final blacklist VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final blacklist VERTICES_DATA_TEX_COORD_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_TEX_COORD_OFFSET:I = 0x2


# instance fields
.field private blacklist mCallFinish:Z

.field private blacklist mHeight:F

.field private blacklist mMMSMode:Z

.field private final blacklist mMVPMatrix:[F

.field private blacklist mProgram:I

.field private final blacklist mSTMatrix:[F

.field private blacklist mTextureId:I

.field private final blacklist mVerticesData:[F

.field private blacklist mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private blacklist mWidth:F

.field private blacklist ma_PositionHandle:I

.field private blacklist ma_TextureCoordinatesHandle:I

.field private blacklist mu_FheightHandle:I

.field private blacklist mu_FwidthHandle:I

.field private blacklist mu_MVPMatrixHandle:I

.field private blacklist mu_STMatrixHandle:I

.field private blacklist mu_TextureUnitHandle:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    .line 97
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    .line 98
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    .line 118
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    .line 119
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 124
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist checkcallFinish()Z
    .locals 4

    .line 317
    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "chipName":Ljava/lang/String;
    const-string v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "checkcallFinish  chipName :"

    const-string v3, "TranscodeLib"

    if-nez v1, :cond_1

    const-string/jumbo v1, "s5e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x1

    return v1

    .line 319
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist deleteTexture()V
    .locals 2

    .line 284
    const v0, 0x8d65

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->deleteTexture(I)V

    .line 286
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    .line 287
    return-void
.end method


# virtual methods
.method public blacklist createProgram(Z)I
    .locals 2
    .param p1, "isBlurMode"    # Z

    .line 130
    const-string/jumbo v0, "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

    if-eqz p1, :cond_0

    .line 131
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    goto :goto_0

    .line 133
    :cond_0
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    .line 135
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    if-nez v0, :cond_1

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_1
    const-string/jumbo v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    .line 139
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_STMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    .line 141
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    .line 142
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    .line 143
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist draw(Landroid/graphics/SurfaceTexture;)V
    .locals 10
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 224
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 226
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 227
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 230
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 231
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 233
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iget v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 236
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    iget v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    iget v4, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    iget-object v9, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 240
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 241
    const-string v0, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    iget v4, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget-object v9, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 245
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 246
    const-string v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 247
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 248
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 250
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 255
    :cond_1
    return-void
.end method

.method public blacklist getTextureId()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return v0
.end method

.method public blacklist loadTexture(I)I
    .locals 8
    .param p1, "rotationAngle"    # I

    .line 268
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    .line 272
    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTextureOES()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    .line 273
    if-nez v0, :cond_1

    .line 274
    const-string v0, "TranscodeLib"

    const-string v1, "not able to load new texture"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v3, 0x0

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 280
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return v0
.end method

.method public blacklist prepare(I)I
    .locals 2
    .param p1, "rotationAngle"    # I

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->createProgram(Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    return v0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    .line 167
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist prepare(IIIIIIIZII)I
    .locals 2
    .param p1, "rotationAngle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "original_width"    # I
    .param p7, "original_height"    # I
    .param p8, "mmsMode"    # Z
    .param p9, "pbuffer_width"    # I
    .param p10, "pbuffer_height"    # I

    .line 188
    iput-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->checkcallFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->createProgram(Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz v0, :cond_1

    .line 195
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "fWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    .line 196
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "fHegiht"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    .line 198
    int-to-float v0, p6

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    .line 199
    int-to-float v0, p7

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    .line 201
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 203
    int-to-float v0, p9

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    .line 204
    int-to-float v0, p10

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    .line 208
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    .line 210
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 211
    invoke-static {p2, p3, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist release()V
    .locals 2

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    .line 302
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    .line 304
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    .line 305
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    .line 306
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    .line 307
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    .line 308
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 310
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    .line 311
    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    .line 312
    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    .line 313
    return-void
.end method
