.class public final Landroid/graphics/RecordingCanvas;
.super Landroid/graphics/BaseRecordingCanvas;
.source "RecordingCanvas.java"


# static fields
.field public static final blacklist MAX_BITMAP_SIZE:I

.field private static final blacklist POOL_LIMIT:I = 0x19

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/graphics/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHeight:I

.field public blacklist mNode:Landroid/graphics/RenderNode;

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Landroid/graphics/RecordingCanvas;->getPanelFrameSize()I

    move-result v0

    sput v0, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    .line 51
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/RenderNode;II)V
    .locals 2
    .param p1, "node"    # Landroid/graphics/RenderNode;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 93
    iget-wide v0, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/RecordingCanvas;->nCreateDisplayListCanvas(JII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;-><init>(J)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RecordingCanvas;->mDensity:I

    .line 95
    return-void
.end method

.method private static blacklist getPanelFrameSize()I
    .locals 3

    .line 43
    const/high16 v0, 0x9600000

    .line 44
    .local v0, "DefaultSize":I
    const-string/jumbo v1, "ro.hwui.max_texture_allocation_size"

    const/high16 v2, 0x9600000

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static native blacklist nCreateDisplayListCanvas(JII)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRenderNode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRipple(JJJJJJJIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JJJJJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextureLayer(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nDrawWebViewFunctor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nEnableZ(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nFinishRecording(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetMaximumTextureHeight()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetMaximumTextureWidth()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nResetDisplayListCanvas(JJII)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static blacklist obtain(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;
    .locals 7
    .param p0, "node"    # Landroid/graphics/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 63
    if-eqz p0, :cond_1

    .line 64
    sget-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 65
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Landroid/graphics/RecordingCanvas;

    invoke-direct {v1, p0, p1, p2}, Landroid/graphics/RecordingCanvas;-><init>(Landroid/graphics/RenderNode;II)V

    move-object v0, v1

    goto :goto_0

    .line 68
    :cond_0
    iget-wide v1, v0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v3, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/RecordingCanvas;->nResetDisplayListCanvas(JJII)V

    .line 71
    :goto_0
    iput-object p0, v0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 72
    iput p1, v0, Landroid/graphics/RecordingCanvas;->mWidth:I

    .line 73
    iput p2, v0, Landroid/graphics/RecordingCanvas;->mHeight:I

    .line 74
    return-object v0

    .line 63
    .end local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist disableZ()V
    .locals 3

    .line 153
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/RecordingCanvas;->nEnableZ(JZ)V

    .line 154
    return-void
.end method

.method public blacklist drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    .line 213
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    .line 212
    invoke-static/range {v0 .. v9}, Landroid/graphics/RecordingCanvas;->nDrawCircle(JJJJJ)V

    .line 214
    return-void
.end method

.method public whitelist drawRenderNode(Landroid/graphics/RenderNode;)V
    .locals 4
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;

    .line 179
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nDrawRenderNode(JJ)V

    .line 180
    return-void
.end method

.method public blacklist drawRipple(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;ILandroid/graphics/RuntimeShader;)V
    .locals 18
    .param p7, "color"    # I
    .param p8, "shader"    # Landroid/graphics/RuntimeShader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroid/graphics/RuntimeShader;",
            ")V"
        }
    .end annotation

    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    .local p5, "progress":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "turbulencePhase":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    move/from16 v14, p7

    .line 232
    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    .line 234
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    .line 235
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v16

    move-wide/from16 v15, v16

    .line 232
    invoke-static/range {v0 .. v16}, Landroid/graphics/RecordingCanvas;->nDrawRipple(JJJJJJJIJ)V

    .line 236
    return-void
.end method

.method public blacklist drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v5

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v9

    .line 256
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v13

    .line 257
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v15

    .line 254
    invoke-static/range {v1 .. v16}, Landroid/graphics/RecordingCanvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 258
    return-void
.end method

.method public blacklist drawTextureLayer(Landroid/graphics/TextureLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/graphics/TextureLayer;

    .line 193
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/TextureLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nDrawTextureLayer(JJ)V

    .line 194
    return-void
.end method

.method public blacklist drawWebViewFunctor(I)V
    .locals 2
    .param p1, "functor"    # I

    .line 165
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RecordingCanvas;->nDrawWebViewFunctor(JI)V

    .line 166
    return-void
.end method

.method public whitelist enableZ()V
    .locals 3

    .line 148
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/RecordingCanvas;->nEnableZ(JZ)V

    .line 149
    return-void
.end method

.method blacklist finishRecording(Landroid/graphics/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/graphics/RenderNode;

    .line 85
    iget-wide v0, p0, Landroid/graphics/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->nFinishRecording(JJ)V

    .line 86
    return-void
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/graphics/RecordingCanvas;->mHeight:I

    return v0
.end method

.method public whitelist getMaximumBitmapHeight()I
    .locals 1

    .line 139
    invoke-static {}, Landroid/graphics/RecordingCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getMaximumBitmapWidth()I
    .locals 1

    .line 134
    invoke-static {}, Landroid/graphics/RecordingCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/graphics/RecordingCanvas;->mWidth:I

    return v0
.end method

.method public whitelist isHardwareAccelerated()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method blacklist recycle()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 80
    sget-object v0, Landroid/graphics/RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .line 105
    return-void
.end method

.method protected blacklist throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 263
    invoke-super {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 265
    .local v0, "bitmapSize":I
    sget v1, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    if-gt v0, v1, :cond_0

    .line 269
    return-void

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canvas: trying to draw too large("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bytes) bitmap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
