.class public final Landroid/media/tv/ad/TvAdManager$Session;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;,
        Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;,
        Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    }
.end annotation


# static fields
.field static final blacklist DISPATCH_HANDLED:I = 0x1

.field static final blacklist DISPATCH_IN_PROGRESS:I = -0x1

.field static final blacklist DISPATCH_NOT_HANDLED:I = 0x0

.field private static final blacklist INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final blacklist mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

.field private blacklist mInputChannel:Landroid/view/InputChannel;

.field private blacklist mInputSession:Landroid/media/tv/TvInputManager$Session;

.field private final blacklist mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

.field private final blacklist mSeq:I

.field private final blacklist mService:Landroid/media/tv/ad/ITvAdManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->recyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ad/ITvAdManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iput p4, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    iput p5, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSeq:I

    iput-object p6, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager$Session-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private blacklist flushPendingEventsLocked()V
    .locals 6

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    if-nez v0, :cond_0

    new-instance v1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent-IA;)V

    move-object v0, v1

    :cond_0
    iput-object p1, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iput-object p3, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    iput-object p4, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist recyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->recycle()V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist releaseInternal()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->flushPendingEventsLocked()V

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->dispose()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    :cond_0
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private blacklist sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I
    .locals 6

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    :cond_0
    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v3, -0x1

    return v3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvAdManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method blacklist createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/media/tv/ad/ITvAdManager;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v7, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishedInputEvent(IZZ)V
    .locals 6

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz p3, :cond_1

    const-string v3, "TvAdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2, p2}, Landroid/media/tv/ad/TvAdManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method blacklist invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V
    .locals 2

    iput-boolean p2, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mHandled:Z

    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist release()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->releaseInternal()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist removeMediaView()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->removeMediaView(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resetAdService()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->resetAdService(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInputSession(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist startAdService()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->startAdService(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist stopAdService()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->stopAdService(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
