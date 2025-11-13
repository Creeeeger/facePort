.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$IdentitySupplier;,
        Landroid/os/Binder$NoImagePreloadHolder;,
        Landroid/os/Binder$ProxyTransactListener;,
        Landroid/os/Binder$PropagateWorkSourceTransactListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CHECK_PARCEL_SIZE:Z = false

.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field public static greylist-max-o LOG_RUNTIME_EXCEPTION:Z = false

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x1f4

.field static final greylist-max-o TAG:Ljava/lang/String; = "Binder"

.field private static final blacklist TRANSACTION_TRACE_NAME_ID_LIMIT:I = 0x400

.field public static final blacklist UNSET_WORKSOURCE:I = -0x1

.field static volatile blacklist isSystemServer:Z

.field public static blacklist isSystemServerBinderTrackerEnabled:Z

.field private static blacklist sBinderCallback:Landroid/os/IBinderCallback;

.field private static volatile greylist-max-o sDumpDisabled:Ljava/lang/String;

.field private static volatile blacklist sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static volatile blacklist sIdentity$ravenwood:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIsHandlingBinderTransaction:Z

.field private static blacklist sObserver:Lcom/android/internal/os/BinderInternal$Observer;

.field private static volatile blacklist sStackTrackingEnabled:Z

.field private static volatile greylist-max-o sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile greylist-max-o sWarnOnBlocking:Z

.field static blacklist sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# instance fields
.field private greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist mObject:J

.field private greylist-max-o mOwner:Landroid/os/IInterface;

.field private volatile blacklist mSimpleDescriptor:Ljava/lang/String;

.field private volatile blacklist mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-string/jumbo v0, "persist.systemserver.sa_bindertracker"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    sput-object v1, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    sput-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    new-instance v2, Landroid/os/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/os/Binder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v2

    sput-object v2, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sput-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    sput-object v1, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    iget-wide v0, p0, Landroid/os/Binder;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/Binder;->mObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    iput-object p1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method public static greylist-max-o allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-object p0
.end method

.method public static blacklist allowBlockingForCurrentThread()V
    .locals 2

    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final native greylist-max-o blockUntilThreadAvailable()V
.end method

.method static greylist-max-o checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final native whitelist clearCallingIdentity()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist clearCallingIdentity$ravenwood()J
    .locals 5

    sget-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    const-wide/32 v3, 0x40000000

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/32 v3, -0x40000001

    and-long/2addr v1, v3

    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    return-wide v1
.end method

.method public static final native whitelist clearCallingWorkSource()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    move-object v1, p0

    check-cast v1, Landroid/os/BinderProxy;

    iget-boolean v1, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_0
    return-void
.end method

.method public static greylist-max-o defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_0
    return-object p0
.end method

.method public static blacklist defaultBlockingForCurrentThread()V
    .locals 2

    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist disableStackTracking()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return-void
.end method

.method public static blacklist enableStackTracking()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return-void
.end method

.method private greylist execTransact(IJJI)Z
    .locals 13

    invoke-static/range {p2 .. p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v7

    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v8

    invoke-virtual {v7}, Landroid/os/Parcel;->isForRpc()Z

    move-result v0

    const/4 v9, -0x1

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_0
    move v10, v0

    if-ne v10, v9, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-static {v10}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v0

    :goto_1
    move-wide v11, v0

    move-object v1, p0

    move v2, p1

    move-object v3, v7

    move-object v4, v8

    move/from16 v5, p6

    move v6, v10

    :try_start_0
    invoke-direct/range {v1 .. v6}, Landroid/os/Binder;->execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    if-eq v10, v9, :cond_2

    invoke-static {v11, v12}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    if-eq v10, v9, :cond_3

    invoke-static {v11, v12}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    :cond_3
    throw v1
.end method

.method private blacklist execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p5

    const-string v5, "Unreasonably large binder reply buffer"

    sget-object v6, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    const/4 v0, -0x1

    if-eqz v6, :cond_0

    invoke-interface {v6, v1, v2, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v11

    const/4 v12, 0x1

    if-lez v11, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-eqz v10, :cond_3

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    :try_start_0
    sget-object v15, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-eqz v15, :cond_4

    if-eq v4, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v15, v4, v13, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->onTransaction(ILjava/lang/Class;I)V

    :cond_4
    if-eqz v12, :cond_5

    invoke-static {v8, v9, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_5
    and-int/lit8 v13, p4, 0x2

    if-eqz v13, :cond_6

    if-eq v4, v0, :cond_6

    invoke-static/range {p5 .. p5}, Landroid/app/AppOpsManager;->startNotedAppOpsCollection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v13, v0

    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    nop

    throw v13

    :cond_6
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v12, :cond_7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    if-eqz v6, :cond_8

    :goto_5
    sget-object v8, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->dataSize()I

    move-result v13

    invoke-interface {v6, v7, v9, v13, v8}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    :cond_8
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    if-eqz v6, :cond_9

    :try_start_3
    invoke-interface {v6, v7, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V

    :cond_9
    sget-boolean v13, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v15, "Caught a RuntimeException from the binder stub implementation."

    const-string v8, "Binder"

    if-eqz v13, :cond_a

    :try_start_4
    invoke-static {v8, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_c

    instance-of v9, v0, Landroid/os/RemoteException;

    if-eqz v9, :cond_b

    const-string v9, "Binder call failed."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_b
    invoke-static {v8, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataSize(I)V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    const/4 v0, 0x1

    if-eqz v12, :cond_d

    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    if-eqz v6, :cond_8

    goto :goto_5

    :goto_7
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    return v0

    :goto_8
    if-eqz v12, :cond_e

    const-wide/32 v8, 0x1000000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_e
    if-eqz v6, :cond_f

    sget-object v8, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->dataSize()I

    move-result v13

    invoke-interface {v6, v7, v9, v13, v8}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    :cond_f
    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    throw v0
.end method

.method public static final native whitelist flushPendingCommands()V
.end method

.method public static final blacklist flushPendingCommands$ravenwood()V
    .locals 0

    return-void
.end method

.method public static final native whitelist getCallingPid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist getCallingPid$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    return v0
.end method

.method public static final native whitelist getCallingUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist getCallingUid$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    return v0
.end method

.method public static final whitelist getCallingUidOrThrow()I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final blacklist getCallingUidOrWtf(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final whitelist getCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getCallingWorkSourceUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o getNativeBBinderHolder()J
.end method

.method private static blacklist getNativeBBinderHolder$ravenwood()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static native greylist-max-o getNativeFinalizer()J
.end method

.method private blacklist getSimpleDescriptor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "Binder"

    return-object v1

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v0
.end method

.method public static final native greylist-max-o getThreadStrictModePolicy()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized greylist-max-o getTransactionTracker()Landroid/os/TransactionTracker;
    .locals 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    :cond_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native blacklist hasExplicitIdentity()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist hasExplicitIdentity$ravenwood()Z
    .locals 2

    sget-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist init$ravenwood()V
    .locals 2

    new-instance v0, Landroid/os/Binder$IdentitySupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Binder$IdentitySupplier;-><init>(Landroid/os/Binder$IdentitySupplier-IA;)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final blacklist isDirectlyHandlingTransaction()Z
    .locals 1

    sget-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransactionNative()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final native blacklist isDirectlyHandlingTransactionNative()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist isDirectlyHandlingTransactionNative$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final greylist-max-o isProxy(Landroid/os/IInterface;)Z
    .locals 1

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isStackTrackingEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return v0
.end method

.method public static final whitelist joinThreadPool()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(I)I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static blacklist reset$ravenwood()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final native whitelist restoreCallingIdentity(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist restoreCallingIdentity$ravenwood(J)V
    .locals 5

    sget-object v0, Landroid/os/Binder;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    const-wide/32 v1, 0x40000000

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const-wide/32 v1, -0x40000001

    and-long/2addr v1, p0

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    return-void
.end method

.method public static final native whitelist restoreCallingWorkSource(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist setCallingWorkSourceUid(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o setDumpDisabled(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized blacklist setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .locals 5

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    :try_start_0
    const-string v1, "Binder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting heavy hitter watcher config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-result-object v3

    move-object v1, v3

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    if-eqz v2, :cond_1

    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_3
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist setIsDirectlyHandlingTransactionOverride(Z)V
    .locals 0

    sput-boolean p0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    return-void
.end method

.method public static blacklist setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V
    .locals 0

    sput-object p0, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    return-void
.end method

.method public static whitelist setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0}, Landroid/os/BinderProxy;->setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    return-void
.end method

.method public static blacklist setSystemServerProcess()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    return-void
.end method

.method public static final native greylist-max-o setThreadStrictModePolicy(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist setTransactionCallback(Landroid/os/IBinderCallback;)V
    .locals 0

    sput-object p0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    return-void
.end method

.method public static greylist-max-o setWarnOnBlocking(Z)V
    .locals 0

    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    return-void
.end method

.method public static blacklist setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V
    .locals 2

    if-eqz p0, :cond_0

    sput-object p0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "workSourceProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist transactionCallback(IIII)V
    .locals 1

    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IBinderCallback;->onTransactionError(IIII)V

    :cond_0
    return-void
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v3

    move-object v0, v3

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v3

    move-object v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public whitelist attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Exception occurred while dumping:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Landroid/os/Binder$1;

    const-string v3, "Binder.dumpAsync"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final native blacklist forceDowngradeToSystemStability()V
.end method

.method public final native blacklist getExtension()Landroid/os/IBinder;
.end method

.method public whitelist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getTransactionTraceName(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v1, :cond_2

    const/16 v1, 0x400

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    nop

    invoke-direct {p0}, Landroid/os/Binder;->getSimpleDescriptor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :cond_2
    if-eqz v0, :cond_3

    move v1, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p1, -0x1

    :goto_2
    iget-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    if-gez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAcquire(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Landroid/os/Binder;->getTransactionName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "AIDL::java::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_5

    iget-object v5, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "::#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_3
    const-string v5, "::server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->setRelease(ILjava/lang/Object;)V

    :cond_6
    return-object v2

    :cond_7
    :goto_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isBinderAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    return-void
.end method

.method public final native whitelist markVintfStability()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist-max-o onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Shell commands are only callable by ADB"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const-string v3, "/dev/null"

    if-nez p1, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object p1, v4

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p2, :cond_4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_4

    :goto_2
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_3

    move-object v6, p3

    goto :goto_3

    :cond_3
    move-object v6, p2

    :goto_3
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open /dev/null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_4
    :goto_4
    if-nez p3, :cond_5

    move-object p3, p2

    :cond_5
    nop

    if-nez p4, :cond_6

    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    :cond_6
    const/4 v1, -0x1

    :try_start_1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0, v3, v4, v5, p4}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v6

    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_8
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_9
    :goto_5
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_9

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_a

    :try_start_8
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v5

    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v6

    :try_start_b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v4

    if-eqz v3, :cond_c

    :try_start_c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    throw v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v3

    goto :goto_a

    :catch_1
    move-exception v3

    :try_start_e
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dup() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_5

    :goto_9
    return-void

    :goto_a
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    throw v3
.end method

.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const v0, 0x5f4e5446

    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :cond_0
    const v0, 0x5f444d50

    if-ne v1, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p0

    :try_start_1
    invoke-virtual {v14, v0, v6}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_1
    move-object/from16 v14, p0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    :goto_2
    return v4

    :cond_3
    move-object/from16 v14, p0

    const v0, 0x5f434d44

    if-ne v1, v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ShellCallback;

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ResultReceiver;

    if-eqz v6, :cond_7

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move-object v8, v0

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_4
    move-object v10, v0

    move-object/from16 v7, p0

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v7 .. v13}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6

    :cond_6
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    :goto_6
    throw v0

    :cond_7
    :goto_7
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    nop

    :goto_8
    return v4

    :cond_9
    const v0, 0x5f495359

    if-ne v1, v0, :cond_b

    if-eqz v3, :cond_a

    sget-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9

    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    :goto_9
    return v4

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist pingBinder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final native blacklist setExtension(Landroid/os/IBinder;)V
.end method

.method public greylist-max-o shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1
    return v1
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
