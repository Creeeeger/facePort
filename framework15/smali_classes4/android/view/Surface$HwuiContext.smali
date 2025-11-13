.class final Landroid/view/Surface$HwuiContext;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HwuiContext"
.end annotation


# instance fields
.field private blacklist mCanvas:Landroid/graphics/RecordingCanvas;

.field private blacklist mHardwareRenderer:Landroid/graphics/HardwareRenderer;

.field private blacklist mHeight:I

.field private final greylist-max-o mIsWideColorGamut:Z

.field private final blacklist mRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mWidth:I

.field final synthetic blacklist this$0:Landroid/view/Surface;


# direct methods
.method constructor blacklist <init>(Landroid/view/Surface;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HwuiCanvas"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    iput-boolean p2, p0, Landroid/view/Surface$HwuiContext;->mIsWideColorGamut:Z

    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v2, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v2}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    if-eqz p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setColorMode(I)F

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/HardwareRenderer;->setLightSourceAlpha(FF)V

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/HardwareRenderer;->setLightSourceGeometry(FFFF)V

    invoke-virtual {p1}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/view/Surface$HwuiContext;->mWidth:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/view/Surface$HwuiContext;->mHeight:I

    return-void
.end method


# virtual methods
.method greylist-max-o destroy()V
    .locals 1

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    return-void
.end method

.method greylist-max-o isWideColorGamut()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Surface$HwuiContext;->mIsWideColorGamut:Z

    return v0
.end method

.method greylist-max-o lockCanvas(II)Landroid/graphics/Canvas;
    .locals 3

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/Surface$HwuiContext;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/Surface$HwuiContext;->mHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Landroid/view/Surface$HwuiContext;->mWidth:I

    iput p2, p0, Landroid/view/Surface$HwuiContext;->mHeight:I

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    :cond_1
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was already locked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o unlockAndPost(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/graphics/RecordingCanvas;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o updateSurface()V
    .locals 3

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;Z)V

    return-void
.end method
