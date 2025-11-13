.class public final Landroid/view/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputWindowHandle$InputConfigFlags;
    }
.end annotation


# instance fields
.field public blacklist alpha:F

.field public blacklist canOccludePresentation:Z

.field public blacklist contentSize:Landroid/util/Size;

.field public blacklist dispatchingTimeoutMillis:J

.field public blacklist displayId:I

.field public blacklist focusTransferTarget:Landroid/os/IBinder;

.field public final blacklist frame:Landroid/graphics/Rect;

.field public blacklist inputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public blacklist inputConfig:I

.field public blacklist layoutParamsFlags:I

.field public blacklist layoutParamsSamsungFlags:I

.field public blacklist layoutParamsType:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist oneHandOffsetX:F

.field public blacklist oneHandOffsetY:F

.field public blacklist oneHandScale:F

.field public blacklist ownerPid:I

.field public blacklist ownerUid:I

.field public blacklist packageName:Ljava/lang/String;

.field public final blacklist pointerTouchableRegion:Landroid/graphics/Region;

.field private blacklist ptr:J

.field public blacklist replaceTouchableRegionWithCrop:Z

.field public blacklist scaleFactor:F

.field public blacklist surfaceInset:I

.field public blacklist token:Landroid/os/IBinder;

.field public blacklist touchOcclusionMode:I

.field public final blacklist touchableRegion:Landroid/graphics/Region;

.field public blacklist touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist transform:Landroid/graphics/Matrix;

.field private blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputApplicationHandle;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    iput p2, p0, Landroid/view/InputWindowHandle;->displayId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputWindowHandle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/InputWindowHandle;->ptr:J

    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object v0, p1, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    iget-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget v0, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iget v0, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iget-wide v0, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-wide v0, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iget-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    iput v0, p0, Landroid/view/InputWindowHandle;->surfaceInset:I

    iget v0, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput v0, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    iget-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    iget v0, p1, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iget v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    iget v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    iget-object v0, p1, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v0, p0, Landroid/view/InputWindowHandle;->displayId:I

    iget-object v0, p1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iget-object v0, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p1, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    iget v0, p1, Landroid/view/InputWindowHandle;->alpha:F

    iput v0, p0, Landroid/view/InputWindowHandle;->alpha:F

    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    return-void
.end method

.method private native blacklist nativeDispose()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/view/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    return-void
.end method

.method public blacklist setInputConfig(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-void

    :cond_0
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-void
.end method

.method public blacklist setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V
    .locals 1

    invoke-static {}, Lcom/android/window/flags/Flags;->surfaceTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", frame=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isClone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canOccludePresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
