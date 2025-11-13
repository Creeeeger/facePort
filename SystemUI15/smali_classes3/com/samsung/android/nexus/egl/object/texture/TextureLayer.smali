.class public Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.super Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_COORD:[F


# instance fields
.field public final alpha:F

.field public alphaHandle:I

.field public coordBuffer:Ljava/nio/FloatBuffer;

.field public coordHandle:I

.field public final mCoordinates:[F

.field public final mImage:Landroid/graphics/Bitmap;

.field public final mIndices:[S

.field public mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

.field public final mVertices:[F

.field public textureHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[F[F[S)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    iput-object p3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    iput-object p4, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    filled-new-array {p0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glDeleteTextures handle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final drawElementInner()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    iget v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget v2, v2, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v5, 0x4

    invoke-static {v5, v0, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_0
    return-void
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 1

    const-string p0, "aPosition"

    const-string v0, "aNormal"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120005

    const v3, 0x7f120004

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v6, v4}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    aput v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string/jumbo v1, "uGlobalAlpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string/jumbo v1, "uTextureOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "aTextureCoordOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string/jumbo v1, "uTextureAlphaOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    array-length v2, v0

    if-lez v2, :cond_9

    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    array-length v2, v0

    iget v3, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    div-int/2addr v2, v3

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    if-eqz v0, :cond_6

    array-length v2, v0

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    array-length v2, v0

    shl-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_8
    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    :cond_9
    :goto_3
    new-instance v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    return-void
.end method
