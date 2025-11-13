.class public final Landroid/window/SurfaceSyncGroup;
.super Ljava/lang/Object;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;,
        Landroid/window/SurfaceSyncGroup$SurfaceViewFrameCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_COUNT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceSyncGroup"

.field public static final blacklist TRANSACTION_READY_TIMEOUT:I

.field private static final blacklist sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static final blacklist sHandlerThreadLock:Ljava/lang/Object;

.field private static blacklist sTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAddedToSyncListener:Ljava/lang/Runnable;

.field private blacklist mFinished:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasWMSync:Z

.field public final blacklist mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

.field private final blacklist mPendingSyncs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/ITransactionReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

.field private final blacklist mSyncCompleteCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSyncReady:Z

.field private blacklist mTimeoutAdded:Z

.field private blacklist mTimeoutDisabled:Z

.field private blacklist mTimeoutOccurred:Z

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mTrackName:Ljava/lang/String;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mTransactionReadyConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ButZILC1krkx4FHXNaBT92Z1Qt8(Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->lambda$addTimeout$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kan-laRIbBzOqZCBkfLmwXUDtJA(Landroid/window/SurfaceSyncGroup;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->lambda$new$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RIGQSKCGL_wOT_BLp-LvudtYwpE(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/SurfaceSyncGroup;->lambda$setTransactionCallbackFromParent$5(Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/window/SurfaceSyncGroup;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncGroup;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncGroup;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSyncToWm(Landroid/window/SurfaceSyncGroup;Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/SurfaceSyncGroup;->addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->checkIfSyncIsComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minvokeSyncCompleteCallbacks(Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->invokeSyncCompleteCallbacks()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda13;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncGroup;->sHandlerThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    sget-object v0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    new-instance v0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;-><init>(Landroid/window/SurfaceSyncGroup;Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl-IA;)V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    sget-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/window/SurfaceSyncGroup;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceSyncGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda3;-><init>(Landroid/window/SurfaceSyncGroup;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private blacklist addLocalSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    .locals 7

    invoke-static {p1}, Landroid/window/SurfaceSyncGroup;->getSurfaceSyncGroup(Landroid/window/ISurfaceSyncGroup;)Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add a local sync that\'s either not valid or not from the local process="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceSyncGroup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLocalSync="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    nop

    invoke-virtual {p0, p2}, Landroid/window/SurfaceSyncGroup;->createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    invoke-direct {v0, v1, v4}, Landroid/window/SurfaceSyncGroup;->setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x8

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSyncToWm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    new-instance v3, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v3}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3, v3}, Landroid/view/IWindowManager;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v1, v2, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_1
    return v0

    :cond_2
    iget-object v4, v3, Landroid/window/AddToSurfaceSyncGroupResult;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    iget-object v5, v3, Landroid/window/AddToSurfaceSyncGroupResult;->mTransactionReadyCallback:Landroid/window/ITransactionReadyCallback;

    invoke-direct {p0, v4, v5}, Landroid/window/SurfaceSyncGroup;->setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v1, v2, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_4
    return v0
.end method

.method private blacklist addTimeout()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Landroid/window/SurfaceSyncGroup;->sHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SurfaceSyncGroupTimer"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v2, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-object v2, Landroid/window/SurfaceSyncGroup;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda2;-><init>(Landroid/window/SurfaceSyncGroup;)V

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    sget v3, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private blacklist checkIfSyncIsComplete()V
    .locals 8

    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    const-string v1, "SurfaceSyncGroup"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkIfSyncIsComplete: Callers="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    const-string v2, "SurfaceSyncGroup="

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is already complete"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    const-string v5, " mPendingSyncs="

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfSyncIsComplete mSyncReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v0, v6}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully finished sync id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    :cond_7
    return-void

    :cond_8
    :goto_0
    iget-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not complete. mSyncReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static blacklist getSurfaceSyncGroup(Landroid/window/ISurfaceSyncGroup;)Landroid/window/SurfaceSyncGroup;
    .locals 1

    instance-of v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->getSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist invokeSyncCompleteCallbacks()V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    new-instance v1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static blacklist isLocalBinder(Landroid/os/IBinder;)Z
    .locals 1

    instance-of v0, p0, Landroid/os/BinderProxy;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$add$3(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void
.end method

.method static synthetic blacklist lambda$add$4(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .locals 1

    new-instance v0, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;-><init>(Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->syncNextFrame(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$addTimeout$6()V
    .locals 3

    const-string v0, "SurfaceSyncGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive transaction ready in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/window/SurfaceSyncGroup;->TRANSACTION_READY_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms. Marking SurfaceSyncGroup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutOccurred:Z

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$invokeSyncCompleteCallbacks$2(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final TransactionCallback with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->invokeSyncCompleteCallbacks()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$setTransactionCallbackFromParent$5(Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke transactionReadyCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1, p3}, Landroid/window/ITransactionReadyCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private blacklist setTransactionCallbackFromParent(Landroid/window/ISurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;)V
    .locals 7

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTransactionCallbackFromParent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, p1, :cond_2

    :try_start_1
    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    const/4 v6, 0x1

    invoke-interface {p1, v5, v6}, Landroid/window/ISurfaceSyncGroup;->addToSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_2
    :goto_0
    :try_start_2
    iget-object v5, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    new-instance v6, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p2, v5}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda4;-><init>(Landroid/window/SurfaceSyncGroup;Landroid/window/ITransactionReadyCallback;Ljava/util/function/Consumer;)V

    iput-object v6, p0, Landroid/window/SurfaceSyncGroup;->mTransactionReadyConsumer:Ljava/util/function/Consumer;

    iget-object v6, p0, Landroid/window/SurfaceSyncGroup;->mAddedToSyncListener:Ljava/lang/Runnable;

    move-object v3, v6

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    :try_start_3
    invoke-interface {p2, v4}, Landroid/window/ITransactionReadyCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static blacklist setTransactionFactory(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Landroid/window/SurfaceSyncGroup;->sTransactionFactory:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/AttachedSurfaceControl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public whitelist add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z
    .locals 4

    const-string v0, "SurfaceSyncGroup"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ISurfaceControlViewHost;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v2, :cond_0

    const-string v3, "Failed to add SurfaceControlViewHost to SurfaceSyncGroup. SCVH returned null SurfaceSyncGroup"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0, v2, v1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v2

    const-string v3, "Failed to add SurfaceControlViewHost to SurfaceSyncGroup"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist add(Landroid/view/SurfaceView;Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncGroup$SurfaceViewFrameCallback;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public blacklist add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z
    .locals 7

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToSync token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v3, "SurfaceSyncGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add to sync when already marked as ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v0, v1, v3, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_1
    monitor-exit v2

    return v4

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-interface {p1}, Landroid/window/ISurfaceSyncGroup;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/SurfaceSyncGroup;->isLocalBinder(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->addLocalSync(Landroid/window/ISurfaceSyncGroup;Z)Z

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_4
    return v2

    :cond_5
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z

    const/4 v5, 0x1

    if-nez v2, :cond_8

    new-instance v2, Landroid/window/SurfaceSyncGroup$1;

    invoke-direct {v2, p0}, Landroid/window/SurfaceSyncGroup$1;-><init>(Landroid/window/SurfaceSyncGroup;)V

    iput-object v2, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    iget-object v6, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    invoke-direct {p0, v2, v4, v6}, Landroid/window/SurfaceSyncGroup;->addSyncToWm(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/SurfaceSyncGroup;->mSurfaceSyncGroupCompletedListener:Landroid/window/ISurfaceSyncGroupCompletedListener;

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v0, v1, v2, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_6
    monitor-exit v3

    return v4

    :cond_7
    iput-boolean v5, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z

    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    invoke-interface {p1, v2, p2}, Landroid/window/ISurfaceSyncGroup;->onAddedToSyncGroup(Landroid/os/IBinder;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_9
    return v5

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v0, v1, v3, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_a
    return v4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public blacklist add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p1, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public blacklist addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mSyncCompleteCallbacks:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mFinished:Z

    if-eqz v1, :cond_0

    const-string v1, "SurfaceSyncGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding transaction to a completed SurfaceSyncGroup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ").  Applying immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;
    .locals 7

    new-instance v0, Landroid/window/SurfaceSyncGroup$2;

    invoke-direct {v0, p0, p1}, Landroid/window/SurfaceSyncGroup$2;-><init>(Landroid/window/SurfaceSyncGroup;Z)V

    iget-object v1, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    if-eqz v2, :cond_0

    const-string v2, "SurfaceSyncGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was already marked as ready. No more SurfaceSyncGroups can be added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createTransactionReadyCallback mPendingSyncs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/window/SurfaceSyncGroup;->mPendingSyncs:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transactionReady="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/window/ITransactionReadyCallback;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist markSyncReady()V
    .locals 4

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mTrackName:Ljava/lang/String;

    const-string/jumbo v3, "markSyncReady"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mHasWMSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mSyncReady:Z

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->checkIfSyncIsComplete()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setAddedToSyncListener(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup;->mAddedToSyncListener:Ljava/lang/Runnable;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist toggleTimeout(Z)V
    .locals 3

    iget-object v0, p0, Landroid/window/SurfaceSyncGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    iput-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutDisabled:Z

    iget-boolean v2, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget-object v2, p0, Landroid/window/SurfaceSyncGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroid/window/SurfaceSyncGroup;->mTimeoutAdded:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/window/SurfaceSyncGroup;->addTimeout()V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
