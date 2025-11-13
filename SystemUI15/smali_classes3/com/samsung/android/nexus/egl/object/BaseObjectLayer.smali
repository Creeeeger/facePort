.class public abstract Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mElementHandles:[I

.field public final mElementNameList:[Ljava/lang/String;

.field public final mElementSizeList:[I

.field public final mGlobalAlpha:F

.field public mGlobalAlphaHandle:I

.field public mIndexBuffer:Ljava/nio/ShortBuffer;

.field public mIndexCnt:I

.field public mShader:Lcom/samsung/android/nexus/egl/core/Shader;

.field public final mStrideSize:I

.field public final mTotalElementSize:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementSizeList()[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementNameList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    iget v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    return-void
.end method

.method public abstract drawElementInner()V
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 0

    const-string p0, "aPosition"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/egl/world/WorldPerspective;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    return-void
.end method

.method public final onDraw()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDrawElements()V

    return-void
.end method

.method public final onDrawElements()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v1, v1, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v1, v2}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V

    iget v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    if-ltz v1, :cond_2

    iget v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    if-ge v2, v4, :cond_4

    aget v4, v5, v2

    if-gez v4, :cond_3

    aget v4, v0, v2

    :goto_1
    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    aget v7, v0, v2

    iget v10, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    iget-object v11, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    move v6, v4

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    aget v4, v0, v2

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->drawElementInner()V

    :goto_3
    array-length p0, v0

    if-ge v1, p0, :cond_6

    aget p0, v5, v1

    if-gez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    return-void
.end method

.method public final onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    return-void
.end method

.method public final onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
