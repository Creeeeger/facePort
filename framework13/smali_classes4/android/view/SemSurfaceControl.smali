.class public Landroid/view/SemSurfaceControl;
.super Ljava/lang/Object;
.source "SemSurfaceControl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSurfaceControl"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist screenshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 49
    const/4 v0, 0x0

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    const-string v1, "SemSurfaceControl"

    const-string v2, "Taking fullscreen screenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v1

    .line 55
    .local v1, "displayToken":Landroid/os/IBinder;
    new-instance v2, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v2, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 57
    invoke-virtual {v2, p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v2

    .line 60
    .local v2, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 61
    invoke-static {v2}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 62
    .local v3, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "screenShot":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_2

    .line 64
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0xa

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 65
    .local v4, "errorBitmap":Landroid/graphics/Bitmap;
    return-object v4

    .line 70
    .end local v4    # "errorBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object v0

    .line 50
    .end local v0    # "screenShot":Landroid/graphics/Bitmap;
    .end local v1    # "displayToken":Landroid/os/IBinder;
    .end local v2    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .end local v3    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static whitelist screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .line 96
    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    const-string v1, "SemSurfaceControl"

    const-string v2, "Taking screenshot with sourceCrop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v2

    .line 102
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v3, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v3, v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 104
    invoke-virtual {v3, p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 105
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v3

    .line 106
    invoke-virtual {v3, p5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v3

    .line 108
    .local v3, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 109
    invoke-static {v3}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 110
    .local v4, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v4, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 111
    .local v5, "screenShot":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v5, :cond_2

    .line 112
    const-string v6, "Failed to take screenshot with sourceCrop"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v0

    .line 116
    :cond_2
    return-object v5

    .line 97
    .end local v2    # "displayToken":Landroid/os/IBinder;
    .end local v3    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .end local v4    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v5    # "screenShot":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0
.end method
