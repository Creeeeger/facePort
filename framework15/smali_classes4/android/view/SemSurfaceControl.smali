.class public Landroid/view/SemSurfaceControl;
.super Ljava/lang/Object;
.source "SemSurfaceControl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSurfaceControl"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInternalDisplayToken()Landroid/os/IBinder;
    .locals 3

    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist screenshot(II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Taking fullscreen screenshot"

    const-string v2, "SemSurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/SemSurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-direct {v3, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object v3

    nop

    invoke-static {v3}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_2

    const-string v6, "Failed to take fullscreen screenshot"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v5

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static whitelist screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Taking screenshot with sourceCrop"

    const-string v2, "SemSurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/SemSurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-direct {v3, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {v3, p1, p2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object v3

    nop

    invoke-static {v3}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_2

    const-string v6, "Failed to take screenshot with sourceCrop"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v5

    :cond_3
    :goto_1
    return-object v0
.end method
