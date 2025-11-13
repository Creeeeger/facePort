.class public Lcom/samsung/android/media/convert/util/OpenGlHelper;
.super Ljava/lang/Object;
.source "OpenGlHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkGLError(Ljava/lang/String;)I
    .locals 3
    .param p0, "operation"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "error":I
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemVideoConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    return v0
.end method

.method private static blacklist compileFragmentShader(Ljava/lang/String;)I
    .locals 1
    .param p0, "fragmentShaderCode"    # Ljava/lang/String;

    .line 53
    const v0, 0x8b30

    invoke-static {v0, p0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist compileShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 58
    .local v0, "shaderId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shader type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " creation failded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 62
    return v1

    .line 65
    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 66
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 68
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 69
    .local v2, "compileStatus":[I
    const v3, 0x8b81

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 70
    aget v3, v2, v1

    if-nez v3, :cond_1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoConverter"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 75
    return v1

    .line 78
    :cond_1
    return v0
.end method

.method private static blacklist compileVertexShader(Ljava/lang/String;)I
    .locals 1
    .param p0, "vertexShaderCode"    # Ljava/lang/String;

    .line 50
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "vertexShaderSource"    # Ljava/lang/String;
    .param p1, "fragmentShaderSource"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "programId":I
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, "vertexShaderId":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 29
    return v2

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v3

    .line 32
    .local v3, "fragmentShaderId":I
    if-nez v3, :cond_1

    .line 33
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 34
    return v2

    .line 37
    :cond_1
    invoke-static {v1, v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->linkProgram(II)I

    move-result v0

    .line 43
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 44
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 46
    return v0
.end method

.method public static blacklist deleteTexture(I)V
    .locals 3
    .param p0, "textureId"    # I

    .line 260
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 261
    return-void
.end method

.method public static blacklist deleteTexture([I)V
    .locals 2
    .param p0, "texturesId"    # [I

    .line 268
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 269
    return-void
.end method

.method private static blacklist getOptimalSamplingSize(Ljava/lang/String;III)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "outW"    # I
    .param p2, "outH"    # I
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x1

    .line 149
    .local v0, "optimalSampleVal":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    .local v1, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    .line 156
    .local v2, "width":F
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    .line 158
    .local v3, "height":F
    int-to-float v4, p1

    div-float v4, v2, v4

    .line 159
    .local v4, "correspondingWRatio":F
    int-to-float v5, p2

    div-float v5, v3, v5

    .line 161
    .local v5, "correspondingHRatio":F
    cmpl-float v6, v4, v5

    if-ltz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 163
    return v0
.end method

.method private static blacklist linkProgram(II)I
    .locals 5
    .param p0, "vertexShaderId"    # I
    .param p1, "fragmentShaderId"    # I

    .line 82
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 84
    .local v0, "programId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    const-string v2, "CreateProgram failed"

    invoke-static {v2}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_0
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 91
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 96
    .local v2, "linkStatus":[I
    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 98
    aget v3, v2, v1

    if-nez v3, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t link program :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoConverter"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 102
    return v1

    .line 105
    :cond_1
    return v0
.end method

.method public static blacklist loadTexture(Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 173
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 175
    .local v1, "textureObjectIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 179
    const-string v0, "SemVideoConverter"

    const-string v3, "Could not create new opengl texture object"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v2

    .line 183
    :cond_0
    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    const-string v3, "glBindTexture error"

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 188
    return v2

    .line 192
    :cond_1
    const/16 v3, 0x2801

    const/16 v5, 0x2601

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 193
    const/16 v3, 0x2800

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 194
    const/16 v3, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 195
    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 197
    const-string v3, "glTexParameter error"

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 199
    return v2

    .line 203
    :cond_2
    invoke-static {v4, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 206
    const-string/jumbo v3, "texImage2D error"

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 208
    return v2

    .line 211
    :cond_3
    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 212
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    aget v0, v1, v2

    return v0
.end method

.method public static blacklist loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "outW"    # I
    .param p2, "outH"    # I
    .param p3, "decodedImageDimen"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "exifData":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, "orientation":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .local v2, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->getOptimalSamplingSize(Ljava/lang/String;III)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    const/4 v3, 0x0

    .line 126
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 128
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 130
    const-string v5, "SemVideoConverter"

    const-string v6, "Could not decode bitmap. error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v4

    .line 135
    :cond_0
    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 136
    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 137
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 138
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 141
    .local v4, "textureId":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    return v4
.end method

.method public static blacklist loadTextureOES()I
    .locals 6

    .line 223
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 225
    .local v1, "textureObjectIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 226
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 228
    const-string v0, "SemVideoConverter"

    const-string v3, "Could not create new opengl oes texture object"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v2

    .line 232
    :cond_0
    aget v3, v1, v2

    const v4, 0x8d65

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 234
    const-string v3, "glBindTexture error"

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 236
    return v2

    .line 240
    :cond_1
    const/16 v3, 0x2801

    const v5, 0x46180400    # 9729.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 241
    const/16 v3, 0x2800

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 242
    const/16 v3, 0x2802

    const v5, 0x812f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 243
    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 246
    const-string v3, "External OES parameter set error."

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 248
    return v2

    .line 252
    :cond_2
    aget v0, v1, v2

    return v0
.end method
