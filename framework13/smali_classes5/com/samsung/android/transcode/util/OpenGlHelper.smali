.class public Lcom/samsung/android/transcode/util/OpenGlHelper;
.super Ljava/lang/Object;
.source "OpenGlHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkGLError(Ljava/lang/String;)I
    .locals 2
    .param p0, "operation"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "error":I
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    return v0
.end method

.method private static blacklist compileFragmentShader(Ljava/lang/String;)I
    .locals 1
    .param p0, "fragmentShaderCode"    # Ljava/lang/String;

    .line 51
    const v0, 0x8b30

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist compileShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 56
    .local v0, "shaderId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
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

    invoke-static {v2}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 58
    return v1

    .line 61
    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 62
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 64
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 65
    .local v2, "compileStatus":[I
    const v3, 0x8b81

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 66
    aget v3, v2, v1

    if-nez v3, :cond_1

    .line 67
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

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 69
    return v1

    .line 72
    :cond_1
    return v0
.end method

.method private static blacklist compileVertexShader(Ljava/lang/String;)I
    .locals 1
    .param p0, "vertexShaderCode"    # Ljava/lang/String;

    .line 48
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "vertexShaderSource"    # Ljava/lang/String;
    .param p1, "fragmentShaderSource"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "programId":I
    invoke-static {p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "vertexShaderId":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 27
    return v2

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, "fragmentShaderId":I
    if-nez v3, :cond_1

    .line 31
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 32
    return v2

    .line 35
    :cond_1
    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->linkProgram(II)I

    move-result v0

    .line 41
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 42
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 44
    return v0
.end method

.method public static blacklist deleteTexture(I)V
    .locals 3
    .param p0, "textureId"    # I

    .line 240
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 241
    return-void
.end method

.method public static blacklist deleteTexture([I)V
    .locals 2
    .param p0, "texturesId"    # [I

    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 249
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

    .line 138
    const/4 v0, 0x1

    .line 140
    .local v0, "optimalSampleVal":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v1, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    .line 147
    .local v2, "width":F
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    .line 149
    .local v3, "height":F
    int-to-float v4, p1

    div-float v4, v2, v4

    .line 150
    .local v4, "correspondingWRatio":F
    int-to-float v5, p2

    div-float v5, v3, v5

    .line 152
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

    .line 154
    return v0
.end method

.method private static blacklist linkProgram(II)I
    .locals 5
    .param p0, "vertexShaderId"    # I
    .param p1, "fragmentShaderId"    # I

    .line 76
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 78
    .local v0, "programId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    const-string v2, "CreateProgram failed"

    invoke-static {v2}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 80
    return v1

    .line 83
    :cond_0
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 84
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 86
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 88
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 89
    .local v2, "linkStatus":[I
    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 91
    aget v3, v2, v1

    if-nez v3, :cond_1

    .line 92
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

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 94
    return v1

    .line 97
    :cond_1
    return v0
.end method

.method public static blacklist loadTexture(Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 164
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 166
    .local v1, "textureObjectIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 168
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 169
    const-string v0, "TranscodeLib"

    const-string v3, "Could not create new opengl texture object"

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v2

    .line 173
    :cond_0
    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    const-string v3, "glBindTexture error"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 177
    return v2

    .line 180
    :cond_1
    const/16 v3, 0x2801

    const/16 v5, 0x2601

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 181
    const/16 v3, 0x2800

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    const/16 v3, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 183
    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 184
    const-string v3, "glTexParameter error"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 186
    return v2

    .line 190
    :cond_2
    invoke-static {v4, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 192
    const-string/jumbo v3, "texImage2D error"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 194
    return v2

    .line 196
    :cond_3
    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 197
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 199
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

    .line 111
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "exifData":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "orientation":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v2, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->getOptimalSamplingSize(Ljava/lang/String;III)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    const/4 v3, 0x0

    .line 118
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 120
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 121
    const-string v5, "TranscodeLib"

    const-string v6, "Could not decode bitmap. error."

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v4

    .line 126
    :cond_0
    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 127
    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 128
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 129
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    .line 131
    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 132
    .local v4, "textureId":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    return v4
.end method

.method public static blacklist loadTextureOES()I
    .locals 6

    .line 208
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 210
    .local v1, "textureObjectIds":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 211
    aget v3, v1, v2

    if-nez v3, :cond_0

    .line 212
    const-string v0, "TranscodeLib"

    const-string v3, "Could not create new opengl oes texture object"

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v2

    .line 216
    :cond_0
    aget v3, v1, v2

    const v4, 0x8d65

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    const-string v3, "glBindTexture error"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 219
    return v2

    .line 222
    :cond_1
    const/16 v3, 0x2801

    const v5, 0x46180400    # 9729.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 223
    const/16 v3, 0x2800

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 224
    const/16 v3, 0x2802

    const v5, 0x812f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 225
    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 227
    const-string v3, "External OES parameter set error."

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 229
    return v2

    .line 232
    :cond_2
    aget v0, v1, v2

    return v0
.end method
