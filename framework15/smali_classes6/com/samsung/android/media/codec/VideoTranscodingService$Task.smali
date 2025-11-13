.class Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
.super Ljava/lang/Object;
.source "VideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/VideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private final blacklist mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mID:Ljava/lang/String;

.field private final blacklist mMode:I

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMode(Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mMode:I

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mID:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mMode:I

    iput-object p3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    return-void
.end method


# virtual methods
.method public blacklist getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    return v0
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v1}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public blacklist start()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->onReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist stop()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mState:I

    return-void
.end method

.method public blacklist unlinkToDeath()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    invoke-interface {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
