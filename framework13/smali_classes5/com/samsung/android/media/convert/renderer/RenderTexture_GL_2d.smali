.class public Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;
.super Ljava/lang/Object;
.source "RenderTexture_GL_2d.java"


# static fields
.field private static final blacklist A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final blacklist A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final blacklist FLOAT_SIZE_BYTES:I = 0x4

.field public static final blacklist PREPARE_FAILURE:I = 0x0

.field public static final blacklist PREPARE_SUCCESS:I = 0x1

.field private static final blacklist TEXTURE_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

.field private static final blacklist TEXTURE_VERTEX_SHADER_CODE:Ljava/lang/String; = "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

.field private static final blacklist U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field private static final blacklist U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field private static final blacklist VERTICES_DATA_POS_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final blacklist VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final blacklist VERTICES_DATA_TEX_COORD_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_TEX_COORD_OFFSET:I = 0x2


# instance fields
.field private blacklist mProgram:I

.field private blacklist mTextureId:I

.field private final blacklist mVerticesData:[F

.field private blacklist mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private blacklist ma_PositionHandle:I

.field private blacklist ma_TextureCoordinatesHandle:I

.field private blacklist mu_MatrixHandle:I

.field private blacklist mu_TextureUnitHandle:I

.field private final blacklist projectionMatrix:[F


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    .line 76
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    .line 90
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist deleteTexture()V
    .locals 2

    .line 267
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 268
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->deleteTexture(I)V

    .line 269
    iput v1, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 270
    return-void
.end method


# virtual methods
.method public blacklist draw()V
    .locals 10

    .line 127
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 131
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 132
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget v4, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget-object v9, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    const-string v0, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget v4, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget-object v9, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 143
    const-string v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 145
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 146
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 148
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 151
    const-string v0, "SemVideoConverter"

    const-string v1, "Calling glFinish blocking call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 155
    const-string v1, "Finished glFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public blacklist loadTexture(Landroid/graphics/Bitmap;II)I
    .locals 8
    .param p1, "textureBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outW"    # I
    .param p3, "outH"    # I

    .line 168
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 171
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v0, "decodedImageDim":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 173
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 176
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 177
    if-nez v2, :cond_1

    .line 179
    const-string v2, "SemVideoConverter"

    const-string v3, "not able to load new texture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 183
    .local v2, "correspondingWRatio":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    .line 184
    .local v3, "correspondingHRatio":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 185
    .local v4, "scaleX":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 187
    .local v5, "scaleY":F
    cmpl-float v6, v2, v3

    if-ltz v6, :cond_2

    .line 188
    div-float v5, v3, v2

    goto :goto_0

    .line 191
    :cond_2
    div-float v4, v2, v3

    .line 193
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v6, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 194
    iget-object v6, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v4, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 196
    iget v1, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v1
.end method

.method public blacklist loadTexture(Ljava/lang/String;II)I
    .locals 8
    .param p1, "inputImagePath"    # Ljava/lang/String;
    .param p2, "outW"    # I
    .param p3, "outH"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 212
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v0, "decodedImageDim":Landroid/graphics/Rect;
    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 215
    if-nez v1, :cond_1

    .line 217
    const-string v1, "SemVideoConverter"

    const-string v2, "not able to load new texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 221
    .local v1, "correspondingWRatio":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 222
    .local v2, "correspondingHRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 223
    .local v3, "scaleX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 225
    .local v4, "scaleY":F
    cmpl-float v5, v1, v2

    if-ltz v5, :cond_2

    .line 226
    div-float v4, v2, v1

    goto :goto_0

    .line 229
    :cond_2
    div-float v3, v1, v2

    .line 231
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 232
    iget-object v5, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v3, v4, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 234
    iget v5, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v5
.end method

.method public blacklist prepare()I
    .locals 2

    .line 106
    const-string/jumbo v0, "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 112
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 113
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 114
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    .line 116
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist release()V
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 277
    iget v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 279
    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 280
    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 281
    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 282
    iput v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 284
    return-void
.end method

.method public blacklist setProjectionMatrixRotate(FFFF)V
    .locals 6
    .param p1, "angle"    # F
    .param p2, "rotateX"    # F
    .param p3, "rotateY"    # F
    .param p4, "rotateZ"    # F

    .line 263
    iget-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 264
    return-void
.end method

.method public blacklist setProjectionMatrixScale(FF)V
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 243
    iget-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 244
    return-void
.end method

.method public blacklist setProjectionMatrixTranslate(FF)V
    .locals 3
    .param p1, "transX"    # F
    .param p2, "transY"    # F

    .line 252
    iget-object v0, p0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 253
    return-void
.end method
