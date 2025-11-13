.class public final Lcom/android/wm/shell/common/ScreenshotUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)V

    new-instance p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p0

    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->accept(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    return-object p0
.end method
