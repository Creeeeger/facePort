.class final Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$jEKGcu_9Jof2HPVZjJ4OcY3nR3k(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->lambda$onRecordingSessionSet$0(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic blacklist lambda$onRecordingSessionSet$0(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$Callback;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method


# virtual methods
.method public blacklist onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
