.class Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;
.super Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;
.source "VirtualCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/VirtualCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualCameraCallbackInternal"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$G5xrsp_ixPshRwnV6z1OjyL4tlA(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$1(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bs12xP5qQWUTqbrcMADdbfY7s50(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamConfigured$0(ILandroid/view/Surface;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f8g8VegXFnWv1xrHmNnysbWyQnE(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamClosed$2(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    iput-object p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$1(IJ)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamClosed$2(I)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamClosed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamConfigured$0(ILandroid/view/Surface;III)V
    .locals 6

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    return-void
.end method


# virtual methods
.method public blacklist onProcessCaptureRequest(IJ)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onStreamClosed(I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onStreamConfigured(ILandroid/view/Surface;III)V
    .locals 9

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
