.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final blacklist mCloseLock:Ljava/lang/Object;

.field private blacklist mDataSpace:I

.field private greylist-max-o mFormat:I

.field private blacklist mHardwareBufferFormat:I

.field private greylist-max-o mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mNativeBuffer:J

.field private greylist-max-o mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransform:I

.field final synthetic blacklist this$0:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/ImageReader;I)V
    .locals 2
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

    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I

    move-result p1

    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    return-void
.end method

.method private greylist-max-o clearSurfacePlanes()V
    .locals 3

    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-$$Nest$mclearBuffer(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synchronized native blacklist nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native blacklist nativeGetFenceFd()I
.end method

.method private synchronized native greylist-max-o nativeGetFormat(I)I
.end method

.method private synchronized native greylist-max-o nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetHeight()I
.end method

.method private synchronized native greylist-max-o nativeGetWidth()I
.end method

.method private greylist-max-o setDetached(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1, p0}, Landroid/media/ImageReader;->-$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
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

.method public whitelist getDataSpace()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getFormat()I
    .locals 2

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    return v1
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    nop

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o getNativeContext()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method greylist-max-o getOwner()Landroid/media/ImageReader;
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method bridge synthetic blacklist getOwner()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlaneCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 4

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1}, Landroid/media/ImageReader;->-$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I

    move-result v1

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-$$Nest$fgetmUsage(Landroid/media/ImageReader;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getReader()Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mScalingMode:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTransform:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    nop

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o isAttachable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public whitelist setTimestamp(J)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-void
.end method
