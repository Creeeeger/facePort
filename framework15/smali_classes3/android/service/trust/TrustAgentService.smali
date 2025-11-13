.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TokenState;,
        Landroid/service/trust/TrustAgentService$GrantTrustFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final greylist-max-o EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final greylist-max-o EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final greylist-max-o EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final greylist-max-o EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final whitelist FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final whitelist FLAG_GRANT_TRUST_DISPLAY_MESSAGE:I = 0x8

.field public static final whitelist FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field public static final whitelist FLAG_GRANT_TRUST_TEMPORARY_AND_RENEWABLE:I = 0x4

.field private static final greylist-max-o MSG_CONFIGURE:I = 0x2

.field private static final greylist-max-o MSG_DEVICE_LOCKED:I = 0x4

.field private static final greylist-max-o MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final greylist-max-o MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final greylist-max-o MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final greylist-max-o MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final greylist-max-o MSG_TRUST_TIMEOUT:I = 0x3

.field private static final greylist-max-o MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final greylist-max-o MSG_UNLOCK_LOCKOUT:I = 0x6

.field private static final blacklist MSG_USER_MAY_REQUEST_UNLOCK:I = 0xb

.field private static final blacklist MSG_USER_REQUESTED_UNLOCK:I = 0xa

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final whitelist TOKEN_STATE_ACTIVE:I = 0x1

.field public static final whitelist TOKEN_STATE_INACTIVE:I = 0x0

.field public static final whitelist TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mManagingTrust:Z

.field private greylist-max-o mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$uD3DsiDrofELvUQyVd18HwpW1H4(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private greylist-max-o onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final whitelist addEscrowToken([BLandroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "calling addEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JI)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JI",
            "Ljava/util/function/Consumer<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v2, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p5}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;-><init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p2

    move v6, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "calling enableTrust()"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/service/trust/TrustAgentService$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    iput-object v9, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    :goto_1
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    return-void
.end method

.method public final whitelist isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "calling isEscrowTokenActive"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist lockUser()V
    .locals 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentServiceCallback;->lockUser()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "calling lockUser"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper-IA;)V

    return-object v0
.end method

.method public whitelist onConfigure(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreate()V
    .locals 6

    const-string v0, "android.permission.BIND_TRUST_AGENT"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not declared with the permission \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get ServiceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist onDeviceLocked()V
    .locals 0

    return-void
.end method

.method public whitelist onDeviceUnlockLockout(J)V
    .locals 0

    return-void
.end method

.method public whitelist onDeviceUnlocked()V
    .locals 0

    return-void
.end method

.method public whitelist onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public whitelist onEscrowTokenRemoved(JZ)V
    .locals 0

    return-void
.end method

.method public whitelist onEscrowTokenStateReceived(JI)V
    .locals 0

    return-void
.end method

.method public whitelist onTrustTimeout()V
    .locals 0

    return-void
.end method

.method public whitelist onUnlockAttempt(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onUserMayRequestUnlock()V
    .locals 0

    return-void
.end method

.method public whitelist onUserRequestedUnlock(Z)V
    .locals 0

    return-void
.end method

.method public final whitelist removeEscrowToken(JLandroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "callling removeEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist revokeTrust()V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "calling revokeTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist setManagingTrust(Z)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "calling setManagingTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "calling showKeyguardErrorMessage"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot show message because service is not connected to framework."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .locals 4

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "User already unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "calling unlockUserWithToken"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trust agent is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
