.class public final Landroid/view/contentcapture/MainContentCaptureSessionV2;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "MainContentCaptureSessionV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;,
        Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_CAPTURE_WRONG_THREAD_METRIC_ID:Ljava/lang/String; = "content_capture.value_content_capture_wrong_thread_count"

.field private static final blacklist FORCE_FLUSH:Z = true

.field private static final blacklist MSG_FLUSH:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mApplicationToken:Landroid/os/IBinder;

.field public blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mContentCaptureHandler:Landroid/os/Handler;

.field public blacklist mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

.field private final blacklist mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

.field public blacklist mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private blacklist mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final blacklist mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlushHistory:Landroid/util/LocalLog;

.field private final blacklist mManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mNextFlush:J

.field private blacklist mNextFlushForTextChanged:Z

.field private final blacklist mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;

.field private blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private blacklist mState:I

.field private final blacklist mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

.field private final blacklist mUiHandler:Landroid/os/Handler;

.field private final blacklist mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$60nqAWeqk1JwLgXNTPXKCYXGOtE(Landroid/view/contentcapture/MainContentCaptureSessionV2;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$onDestroy$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H49sBXMDO8JAn7tLDtF77ZiKKmc(Landroid/view/contentcapture/MainContentCaptureSessionV2;Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$enqueueEvent$5(Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_RP3yaiF848JFY_-WhV7g0ahqKI(Landroid/view/contentcapture/MainContentCaptureSessionV2;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$scheduleFlush$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$e8XsVdHZUoum99q4fwXS4KlO4Qw(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$notifyContentCaptureEvents$7(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nUXIwDcFKTty9UXPBKfmRo7NCyg(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$start$0(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pObTidISUgBLMvA5VsWTwJvEj7Q(Landroid/view/contentcapture/MainContentCaptureSessionV2;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$onSessionStarted$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pSEBhXFClARuArYuZT8owIAfagk(Landroid/view/contentcapture/MainContentCaptureSessionV2;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$flush$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rD4XwlTb-qfIDszoDC-RlN0gCy8(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->lambda$notifyContentCaptureEvents$6(Landroid/util/SparseArray;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSessionV2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSessionV2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureSession;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    iput-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mUiHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    iput-object p5, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    if-lez v0, :cond_0

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mFlushHistory:Landroid/util/LocalLog;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private blacklist checkOnContentCaptureThread()V
    .locals 4

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainContentCaptureSession running on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist clearAndRunOnContentCaptureThread(Ljava/lang/Runnable;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private blacklist clearBufferEvents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureEvent;

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist clearEvents()Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private blacklist enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method private blacklist enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->clearBufferEvents()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda3;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V

    invoke-direct {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    nop

    :goto_1
    return-void
.end method

.method private blacklist flushIfNeeded(I)V
    .locals 2

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flush(I)V

    return-void

    :cond_1
    :goto_0
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to flush"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private blacklist flushImpl(I)V
    .locals 8

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "handleForceFlush("

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be when disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentCaptureReceiverEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "): hold your horses, client not ready: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->scheduleFlush(IZ)V

    :cond_4
    return-void

    :cond_5
    iput-boolean v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v4, 0x8

    if-ne p1, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ". The force flush event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-string v4, ""

    :goto_0
    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event(s) for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " s="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " i="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v4, v4, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mFlushHistory:Landroid/util/LocalLog;

    invoke-virtual {v4, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_8
    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->clearEvents()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v4, v4, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-interface {v3, v2, p1, v4}, Landroid/view/contentcapture/IContentCaptureDirectManager;->sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_9
    :goto_2
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t flush for empty event buffer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private blacklist getActivityName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getDebugState()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    invoke-static {v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDebugState(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getFlushReasonAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasStarted()Z
    .locals 1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isContentCaptureReceiverEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    return v0
.end method

.method private blacklist isContentProtectionEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isContentProtectionReceiverEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v0, v0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    return v0
.end method

.method private synthetic blacklist lambda$enqueueEvent$5(Ljava/util/List;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$flush$4(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flushImpl(I)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyContentCaptureEvents$6(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->notifyContentCaptureEventsImpl(Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyContentCaptureEvents$7(Landroid/util/SparseArray;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->prepareViewStructures(Landroid/util/SparseArray;)V

    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda6;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDestroy$1()V
    .locals 1

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flush(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->destroySession()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->destroySession()V

    throw v0
.end method

.method private synthetic blacklist lambda$onSessionStarted$2()V
    .locals 3

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keeping session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when service died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleFlush$3(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flushIfNeeded(I)V

    return-void
.end method

.method private synthetic blacklist lambda$start$0(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->startImpl(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private blacklist notifyContentCaptureEventsImpl(Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    const-wide/16 v0, 0x8

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "notifyContentCaptureEvents"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyViewTreeEvent(IZ)V

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/view/autofill/AutofillId;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v3, v7}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    goto :goto_2

    :cond_1
    instance-of v7, v6, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;

    invoke-virtual {v7}, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->notifyViewAppeared()V

    goto :goto_2

    :cond_2
    instance-of v7, v6, Landroid/graphics/Insets;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/graphics/Insets;

    invoke-virtual {p0, v3, v7}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    goto :goto_2

    :cond_3
    sget-object v7, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid content capture event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyViewTreeEvent(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private blacklist prepareViewStructures(Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v6

    new-instance v7, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;

    invoke-direct {v7}, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;-><init>()V

    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_0

    sget-object v8, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no content capture session on view: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v8

    if-eq v8, v1, :cond_1

    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content capture session mismatch for view ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " before, it\'s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " now"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v5}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {v7, v6}, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->setSession(Landroid/view/contentcapture/ContentCaptureSession;)V

    invoke-virtual {v7, v9}, Landroid/view/contentcapture/MainContentCaptureSessionV2$ViewStructureSession;->setStructure(Landroid/view/ViewStructure;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private blacklist reportWrongThreadMetric()V
    .locals 3

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mWrongThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "content_capture.value_content_capture_wrong_thread_count"

    invoke-static {v2, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    return-void
.end method

.method private blacklist runOnContentCaptureThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private blacklist scheduleFlush(IZ)V
    .locals 6

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v1, "handleScheduleFlush("

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkExisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v1, "handleScheduleFlush(): session not started yet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): should not be called when disabled. events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v2, :cond_7

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): not a timeout reason because mDirectServiceInterface is not ready yet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlush:J

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v2, :cond_8

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScheduleFlush(): scheduled to flush in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlush:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;I)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method private blacklist sendContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v2

    iget-object v3, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v3, v3, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    sget-boolean v4, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendEvent(): creating buffer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-ne v2, v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    :goto_0
    if-ltz v11, :cond_3

    iget-object v12, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v10, v12

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->hasComposingSpan()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    move v12, v7

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    nop

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v7

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v10, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    const/4 v4, 0x0

    :cond_7
    :goto_4
    if-nez v4, :cond_8

    sget-boolean v14, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v14, :cond_8

    sget-object v14, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffering VIEW_TEXT_CHANGED event, updated text="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_a

    if-ne v2, v8, :cond_a

    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    iget-object v9, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v9

    if-ne v9, v8, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v10

    if-ne v9, v10, :cond_a

    sget-boolean v9, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v9, :cond_9

    sget-object v9, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Buffering TYPE_VIEW_DISAPPEARED events for session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    const/4 v4, 0x0

    :cond_a
    if-eqz v4, :cond_b

    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v6, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v3, :cond_c

    move/from16 v16, v7

    goto :goto_5

    :cond_c
    const/16 v16, 0x0

    :goto_5
    move/from16 v9, v16

    if-eqz v9, :cond_10

    if-nez p2, :cond_10

    if-ne v2, v5, :cond_d

    iput-boolean v7, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    const/4 v5, 0x6

    goto :goto_6

    :cond_d
    iget-boolean v5, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    if-eqz v5, :cond_f

    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v5, :cond_e

    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v7, "Not scheduling flush because next flush is for text changed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :cond_f
    const/4 v5, 0x5

    :goto_6
    invoke-direct {v0, v5, v7}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->scheduleFlush(IZ)V

    return-void

    :cond_10
    iget v5, v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    if-eq v5, v8, :cond_12

    if-lt v6, v3, :cond_12

    sget-boolean v5, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v5, :cond_11

    sget-object v5, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delayed events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v5, 0x84

    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->resetSession(I)V

    return-void

    :cond_12
    sparse-switch v2, :sswitch_data_0

    if-eqz p2, :cond_13

    const/16 v7, 0x8

    goto :goto_7

    :sswitch_0
    const/16 v5, 0xa

    goto :goto_8

    :sswitch_1
    const/16 v5, 0x9

    goto :goto_8

    :sswitch_2
    const/4 v5, 0x3

    goto :goto_8

    :sswitch_3
    const/4 v5, 0x4

    goto :goto_8

    :cond_13
    :goto_7
    move v5, v7

    :goto_8
    invoke-virtual {v0, v5}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flush(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist sendContentProtectionEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    invoke-virtual {v0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->processEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    :cond_0
    return-void
.end method

.method private blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V
    .locals 6

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    const-string v2, "handleSendEvent("

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): dropping because session not started yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v2, "handleSendEvent(): ignoring when disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "sendEventAsync"

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    invoke-static {v1, v2, v5, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_5
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentProtectionReceiverEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->sendContentProtectionEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    :cond_6
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentCaptureReceiverEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->sendContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    invoke-static {v1, v2, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_8
    return-void
.end method

.method private blacklist startImpl(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 9

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring handleStartSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while on state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mApplicationToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mShareableActivityToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSession(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mApplicationToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mShareableActivityToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    iget-object v8, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSessionStateReceiver:Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;

    move-object v5, p3

    move v7, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/contentcapture/IContentCaptureManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist destroySession()V
    .locals 5

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying session (ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event(s) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->reportWrongThreadMetric()V

    :try_start_0
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-interface {v0, v2}, Landroid/view/contentcapture/IContentCaptureManager;->finishSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error destroying system-service session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getDebugState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v0}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEventProcessQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDirectServiceInterface: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isEnabled(): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentCaptureEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mApplicationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mApplicationToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mShareableActivityToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sharable activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component name: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "buffered events: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNextFlushForTextChanged: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flush frequency: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlushForTextChanged:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v1, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "next flush: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlush:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mNextFlush:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mFlushHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "flush history:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mFlushHistory:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "not logging flush history"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist flush(I)V
    .locals 1

    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;I)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .locals 0

    return-object p0
.end method

.method blacklist internalNotifyChildSessionFinished(II)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x2

    invoke-direct {v0, p2, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method public blacklist internalNotifySessionPaused()V
    .locals 3

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method public blacklist internalNotifySessionResumed()V
    .locals 3

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    iget-object v1, p2, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 8

    invoke-static {p3}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p3, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    nop

    instance-of v2, p3, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    move-object v3, p3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_1
    invoke-static {p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    new-instance v6, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v7, 0x3

    invoke-direct {v6, p1, v7}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v6, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager;->getFlushViewTreeAppearingEventDisabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    new-instance v3, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v3, p1, v0}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-direct {p0, v3, v2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isDisabled()Z
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 3

    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-object v0
.end method

.method public blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda4;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->enqueueEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method blacklist onDestroy()V
    .locals 2

    new-instance v0, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda5;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->clearAndRunOnContentCaptureThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public blacklist onSessionStarted(ILandroid/os/IBinder;)V
    .locals 8

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    :try_start_0
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to link to death on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->isContentProtectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mSystemServerInterface:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mManager:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v2, v2, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v7, v2, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/contentprotection/ContentProtectionEventProcessor;-><init>(Lcom/android/internal/util/RingBuffer;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;Ljava/lang/String;Landroid/content/ContentCaptureOptions$ContentProtectionOptions;)V

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    :goto_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->resetSession(I)V

    goto :goto_2

    :cond_2
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->flushIfNeeded(I)V

    :goto_2
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionStarted() result: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    invoke-static {v3}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public blacklist resetSession(I)V
    .locals 5

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->checkOnContentCaptureThread()V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->getStateAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mState:I

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mApplicationToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mShareableActivityToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mEvents:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v1}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v3, Landroid/view/contentcapture/MainContentCaptureSessionV2;->TAG:Ljava/lang/String;

    const-string v4, "IContentCaptureDirectManager does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDirectServiceInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentProtectionEventProcessor:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mContentCaptureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public blacklist sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->sendEvent(Landroid/view/contentcapture/ContentCaptureEvent;Z)V

    return-void
.end method

.method blacklist setDisabled(Z)Z
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 7

    new-instance v6, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/contentcapture/MainContentCaptureSessionV2$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-direct {p0, v6}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->runOnContentCaptureThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/MainContentCaptureSessionV2;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method
