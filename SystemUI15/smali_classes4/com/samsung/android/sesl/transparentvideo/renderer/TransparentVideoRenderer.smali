.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final attribSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

.field public final fbo:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;

.field public glObj:Ljava/util/List;

.field public isVideoFrameAvailable:Z

.field public final isWearable:Z

.field public final onConnectTextureExternalOES:Ljava/util/function/Consumer;

.field public program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

.field public final reinforcedEdgeAmount:F

.field public surfaceSize:Landroid/util/Size;

.field public final textureConnectionCoroutine:Lkotlinx/coroutines/CoroutineScope;

.field public final textureSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

.field public final texturingRenderpass:Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

.field public uReinforcedEdgeAmount:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

.field public uTexelSize:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

.field public videoTexture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

.field public videoTextureResolution:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZFLkotlinx/coroutines/CoroutineScope;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->isWearable:Z

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->reinforcedEdgeAmount:F

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->textureConnectionCoroutine:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onConnectTextureExternalOES:Ljava/util/function/Consumer;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;

    invoke-direct {p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->fbo:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->attribSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

    invoke-direct {p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->textureSet:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p4, p2, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->texturingRenderpass:Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

    return-void
.end method

.method public synthetic constructor <init>(ZFLkotlinx/coroutines/CoroutineScope;Ljava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;-><init>(ZFLkotlinx/coroutines/CoroutineScope;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final connectVideoSurfaceTexture()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->videoTexture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    const-string v1, "TransparentVideoRenderer"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    const-string v0, "connectVideoSurfaceTexture with current surface texture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->videoTexture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer$connectVideoSurfaceTexture$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer$connectVideoSurfaceTexture$1$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;Landroid/graphics/SurfaceTexture;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->textureConnectionCoroutine:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    const-string p0, "video texture is not created yet for connection"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDraw()Z
    .locals 11

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->isVideoFrameAvailable:Z

    const-string v2, "TransparentVideoRenderer"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "no video frame."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->videoTextureResolution:Landroid/util/Size;

    if-nez v1, :cond_1

    const-string p0, "video resolution is empty."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    if-nez v4, :cond_2

    const-string p0, "no surface size."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->fbo:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;

    iget v7, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->width:I

    iget v8, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->height:I

    iput v4, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->width:I

    iput v5, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->height:I

    if-ne v7, v4, :cond_3

    if-eq v8, v5, :cond_4

    :cond_3
    iput-boolean v0, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->sizeUpdated:Z

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->uTexelSize:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v8, v1

    const/4 v9, 0x2

    new-array v9, v9, [F

    aput v7, v9, v3

    aput v1, v9, v0

    iget-object v1, v4, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v4, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataUpdater:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v4, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->uReinforcedEdgeAmount:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    if-nez v1, :cond_6

    move-object v1, v5

    :cond_6
    iget v4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->reinforcedEdgeAmount:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v7, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataUpdater:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES30;->glDisable(I)V

    iget-object v4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->glObj:Ljava/util/List;

    if-nez v4, :cond_7

    move-object v4, v5

    :cond_7
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v7}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->bind()V

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v8}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES30;->glClear(I)V

    sget-object v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget v9, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->order:I

    iget-object v10, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    array-length v10, v10

    iget v8, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->dimension:I

    div-int/2addr v10, v8

    invoke-static {v9, v3, v10}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    const v8, 0x8d40

    invoke-static {v8, v3}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget-object v8, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v3, v3, v9, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_9
    iget-object v6, v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    iget-object v8, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->texturingRenderpass:Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;

    iput-object v6, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->texture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    iput-boolean p0, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->useMipmapping:Z

    iget-object p0, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->texture:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    if-eqz p0, :cond_d

    iget-object v2, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-nez v2, :cond_a

    move-object v2, v5

    :cond_a
    sget-object v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;

    iput-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    const-string v6, "tex"

    iput-object v6, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->name:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->useMipmap:Z

    iget v2, v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {v2, v6}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->location:I

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->isUpdated:Z

    iget-boolean v2, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->useMipmapping:Z

    iput-boolean v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->useMipmap:Z

    iget-object v2, v8, Lcom/samsung/android/sesl/transparentvideo/renderer/TexturingRenderpass;->glObj:Ljava/util/List;

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    move-object v5, v2

    :goto_1
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;

    invoke-interface {v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;->bind()V

    goto :goto_2

    :cond_c
    new-instance v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;

    invoke-direct {v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;-><init>()V

    iget-object v5, v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->bind()V

    :cond_d
    invoke-static {v1}, Landroid/opengl/GLES30;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v1, 0x303

    invoke-static {p0, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    invoke-static {v7}, Landroid/opengl/GLES30;->glClear(I)V

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->order:I

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    array-length v2, v2

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->dimension:I

    div-int/2addr v2, p0

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    return v0
.end method

.method public final onSurfaceChanged(II)V
    .locals 3

    const-string v0, "onSurfaceChanged("

    const-string v1, ", "

    const-string v2, ")"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparentVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    const/4 p0, 0x0

    invoke-static {p0, p0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method
