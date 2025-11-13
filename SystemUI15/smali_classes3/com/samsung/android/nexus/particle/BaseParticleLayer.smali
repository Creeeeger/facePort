.class public abstract Lcom/samsung/android/nexus/particle/BaseParticleLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapCanvas:Landroid/graphics/Canvas;

.field public mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

.field public mNeedToInit:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setLayerParams(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    return-void
.end method


# virtual methods
.method public abstract drawOnCanvas(Landroid/graphics/Canvas;)V
.end method

.method public final onCreate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    return-void
.end method

.method public final onDraw()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "BaseParticleLayer"

    const-string v2, "Start to init path effect elements"

    invoke-static {v0, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    new-instance v2, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    sub-int v6, v3, v6

    invoke-direct {v4, v0, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->init()V

    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->prepareToDraw()V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->drawOnCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    if-gez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDrawElements()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->drawOnCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    return-void
.end method

.method public onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public abstract prepareToDraw()V
.end method
