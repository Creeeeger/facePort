.class Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;
.super Landroid/credentials/ISetEnabledProvidersCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetEnabledProvidersTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$9sDeDpd_wP_sQbhwBKXaAT-s2Ho(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G-WHag0TyYL20_z5HbyUBNPNEHM(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V
    .locals 0

    invoke-direct {p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qn1to3LDs1GjFODhw-Tma77uPZQ(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->lambda$onResponse$0(Ljava/lang/Void;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/credentials/ISetEnabledProvidersCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$SetEnabledProvidersTransport-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/SetEnabledProvidersException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$0(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$1()V
    .locals 2

    iget-object v0, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onResponse()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onResponse(Ljava/lang/Void;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;Ljava/lang/Void;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
