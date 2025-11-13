.class public Landroid/window/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$ScreenCaptureListener;,
        Landroid/window/ScreenCapture$DisplayCaptureArgs;,
        Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;,
        Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;,
        Landroid/window/ScreenCapture$LayerCaptureArgs;,
        Landroid/window/ScreenCapture$CaptureArgs;
    }
.end annotation


# static fields
.field private static final blacklist SCREENSHOT_WAIT_TIME_S:I

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenCapture"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSCREENSHOT_WAIT_TIME_S()I
    .locals 1

    sget v0, Landroid/window/ScreenCapture;->SCREENSHOT_WAIT_TIME_S:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeListenerFinalizer()J
    .locals 2

    invoke-static {}, Landroid/window/ScreenCapture;->getNativeListenerFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .locals 2

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/window/ScreenCapture;->nativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x4

    sput v0, Landroid/window/ScreenCapture;->SCREENSHOT_WAIT_TIME_S:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .locals 2

    iget-wide v0, p1, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I

    move-result v0

    return v0
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 4

    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    return-object v2
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .locals 3

    iget-wide v0, p1, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/window/ScreenCapture;->nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I

    move-result v0

    return v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 2

    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 4

    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    iget-wide v1, v0, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->mNativeObject:J

    invoke-static {}, Lcom/android/window/flags/Flags;->syncScreenCapture()Z

    move-result v3

    invoke-static {p0, v1, v2, v3}, Landroid/window/ScreenCapture;->nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    return-object v2
.end method

.method public static blacklist captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/window/ScreenCapture;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;Z)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;Z)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 2

    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    invoke-virtual {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setIsScreenShotBySystem(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0, p5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v2

    new-instance v2, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;-><init>([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v3, Landroid/window/ScreenCapture$1;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/window/ScreenCapture$1;-><init>(Ljava/util/function/ObjIntConsumer;Ljava/util/function/ObjIntConsumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-object v3
.end method

.method private static native blacklist getNativeListenerFinalizer()J
.end method

.method static synthetic blacklist lambda$createSyncCaptureListener$0([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate screen capture. Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    aput-object p2, p0, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static native blacklist nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I
.end method

.method private static native blacklist nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I
.end method

.method private static native blacklist nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist nativeReadListenerFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeWriteListenerToParcel(JLandroid/os/Parcel;)V
.end method
