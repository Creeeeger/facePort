.class public final Lcom/samsung/android/nexus/egl/core/Shader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFragmentShaderId:I

.field public final mHandleMap:Ljava/util/Map;

.field public final mProgramId:I

.field public final mVertexShaderId:I

.field public final modelMatrixHandle:I

.field public final mvpMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/nexus/egl/core/Shader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const p1, 0x8b31

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/egl/core/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    const p1, 0x8b30

    invoke-static {p1, p3}, Lcom/samsung/android/nexus/egl/core/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "glCreateProgram id = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader : vertex"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader : fragment"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string p1, "glLinkProgram"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    iget p3, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    const v1, 0x8b82

    invoke-static {p3, v1, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, v0

    if-eq p2, p1, :cond_1

    const-string p1, "Shader"

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    :cond_1
    iget p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    const-string/jumbo p1, "uModelMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->modelMatrixHandle:I

    const-string/jumbo p1, "uViewMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    const-string/jumbo p1, "uProjectionMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    const-string/jumbo p1, "uMvpMatrix"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mvpMatrixHandle:I

    const-string/jumbo p1, "uLightPos"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    const-string/jumbo p1, "uDiffuseColor"

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz p0, :cond_0

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Load program : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shader"

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateShader type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "glShaderSource id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "glCompileShader id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not compile shader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shader"

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final getHandle(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final loadHandle(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    const-string v3, "Shader"

    const-string v4, " = "

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load uniform handle for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load attribute handle for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Shader;->mHandleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
