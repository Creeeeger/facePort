.class public Landroid/telephony/MbmsGroupCallSession;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MbmsGroupCallSession"

.field public static final whitelist MBMS_GROUP_CALL_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsGroupCall"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MBMS_GROUP_CALL_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-group-call-service-override"

.field private static blacklist sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

.field private blacklist mKnownActiveGroupCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/mbms/GroupCall;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsGroupCallService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/MbmsGroupCallSession;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsGroupCallSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsGroupCallSession;)I
    .locals 0

    iget p0, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsGroupCallSessionCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/telephony/MbmsGroupCallSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsGroupCallSession$1;-><init>(Landroid/telephony/MbmsGroupCallSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    new-instance v0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;-><init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    return-void
.end method

.method private blacklist bindAndInitialize()I
    .locals 3

    new-instance v0, Landroid/telephony/MbmsGroupCallSession$3;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsGroupCallSession$3;-><init>(Landroid/telephony/MbmsGroupCallSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsGroupCall"

    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static whitelist create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
    .locals 4

    sget-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/telephony/MbmsGroupCallSession;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/telephony/MbmsGroupCallSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsGroupCallSessionCallback;)V

    invoke-direct {v0}, Landroid/telephony/MbmsGroupCallSession;->bindAndInitialize()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Landroid/telephony/MbmsGroupCallSession$2;

    invoke-direct {v2, p3, v1}, Landroid/telephony/MbmsGroupCallSession$2;-><init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create two instances of MbmsGroupCallSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Landroid/telephony/MbmsGroupCallSession;->create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->dispose(I)V

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/GroupCall;

    invoke-virtual {v4}, Landroid/telephony/mbms/GroupCall;->getCallback()Landroid/telephony/mbms/InternalGroupCallCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalGroupCallCallback;->stop()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    throw v2

    :catch_0
    move-exception v2

    :goto_2
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    nop

    return-void
.end method

.method public blacklist onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist startGroupCall(JLjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/GroupCallCallback;)Landroid/telephony/mbms/GroupCall;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/mbms/GroupCallCallback;",
            ")",
            "Landroid/telephony/mbms/GroupCall;"
        }
    .end annotation

    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v16, :cond_2

    new-instance v7, Landroid/telephony/mbms/InternalGroupCallCallback;

    move-object/from16 v15, p5

    move-object/from16 v14, p6

    invoke-direct {v7, v14, v15}, Landroid/telephony/mbms/InternalGroupCallCallback;-><init>(Landroid/telephony/mbms/GroupCallCallback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroid/telephony/mbms/GroupCall;

    iget v2, v8, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    move-object v1, v0

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/mbms/GroupCall;-><init>(ILandroid/telephony/mbms/vendor/IMbmsGroupCallService;Landroid/telephony/MbmsGroupCallSession;JLandroid/telephony/mbms/InternalGroupCallCallback;)V

    iget-object v0, v8, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :try_start_0
    iget v10, v8, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    move-object/from16 v9, v16

    move-wide/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v7

    invoke-interface/range {v9 .. v15}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, v8, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v3, v0, v2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    return-object v2

    :cond_0
    nop

    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/MbmsGroupCallSession;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "MbmsGroupCallSession"

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v8, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v8, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Middleware not yet bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
