.class public Landroid/view/ScrollCaptureConnection;
.super Landroid/view/IScrollCaptureConnection$Stub;
.source "ScrollCaptureConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureConnection$SafeCallback;,
        Landroid/view/ScrollCaptureConnection$ConsumerCallback;,
        Landroid/view/ScrollCaptureConnection$RunnableCallback;
    }
.end annotation


# static fields
.field private static final blacklist END_CAPTURE:Ljava/lang/String; = "endCapture"

.field private static final blacklist REQUEST_IMAGE:Ljava/lang/String; = "requestImage"

.field private static final blacklist SESSION:Ljava/lang/String; = "Session"

.field private static final blacklist START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureConnection"

.field private static final blacklist TRACE_TRACK:Ljava/lang/String; = "Scroll Capture"


# instance fields
.field private volatile blacklist mActive:Z

.field private blacklist mCancellation:Landroid/os/CancellationSignal;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private volatile blacklist mConnected:Z

.field private blacklist mLocal:Landroid/view/ScrollCaptureCallback;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private blacklist mRemote:Landroid/view/IScrollCaptureCallbacks;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private blacklist mSession:Landroid/view/ScrollCaptureSession;

.field private blacklist mTraceId:I

.field private final blacklist mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$7GvyOebdotLqFd8WDXA06lhKMGU(Landroid/view/ScrollCaptureConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FSRdHbuuUddKAaXvXtOUuNCBSdM(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureConnection;->lambda$endCapture$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kfVYrIYw_PJpJs1N9YAU-hCOJTw(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureConnection;->lambda$startCapture$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kuMkmaIC1MAp0EsDL5rwGRcWAbU(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ScrollCaptureConnection;->lambda$requestImage$1(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tnNy_X76YDTmAU4wlxOZbTEQIj8(Landroid/view/ScrollCaptureConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onEndCaptureCompleted()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/IScrollCaptureConnection$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v0, "<uiThread> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    return-void
.end method

.method private blacklist cancelPendingAction()V
    .locals 4

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const-string v0, "Scroll Capture"

    const-string v1, "CancellationSignal.cancel"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrollCaptureConnection"

    const-string v1, "cancelling pending operation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method private blacklist checkActive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not started!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$close$3()V
    .locals 0

    return-void
.end method

.method static synthetic blacklist lambda$close$4(Landroid/view/ScrollCaptureCallback;)V
    .locals 1

    new-instance v0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$endCapture$2(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-interface {v0, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$requestImage$1(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$startCapture$0(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-interface {v0, v1, v2, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onEndCaptureCompleted()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v1}, Landroid/view/IScrollCaptureCallbacks;->onCaptureEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    :goto_0
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Caught exception confirming capture end!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void

    :goto_2
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    throw v1
.end method

.method private blacklist onStartCaptureCompleted()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->onCaptureStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScrollCaptureConnection"

    const-string v2, "Shutting down due to error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    const-string v0, "Scroll Capture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    const-string v0, "Scroll Capture"

    const-string v1, "binderDied"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrollCaptureConnection"

    const-string v1, "Controlling process just died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    return-void
.end method

.method public declared-synchronized blacklist close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Scroll Capture"

    const-string v1, "close"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ScrollCaptureConnection"

    const-string v2, "close(): capture session still active! Ending now."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist endCapture()Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "endCapture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
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

.method public blacklist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    return v0
.end method

.method blacklist onImageRequestCompleted(Landroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Shutting down due to error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string v0, "Scroll Capture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void

    :goto_2
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    throw v1
.end method

.method public blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "requestImage"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;-><init>(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public blacklist startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v0, "Session"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "startCapture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "ScrollCaptureConnection.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<callbacks> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v1, p1, v2, v3}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "surface must be valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureConnection{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
