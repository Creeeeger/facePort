.class Landroid/credentials/CredentialManager$CreateCredentialTransport;
.super Landroid/credentials/ICreateCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateCredentialTransport"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$5mhD1tkv7KX2IWpzYNaveajQR1A(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yety3gNDS1nKzZpnR4497vHlH6s(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jCNHHuA-6MgGFlxspTStn37ZebE(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V
    .locals 0

    invoke-direct {p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->lambda$onPendingIntent$0()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/credentials/ICreateCredentialCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$CreateCredentialTransport-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    invoke-direct {v1, p1, p2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPendingIntent$0()V
    .locals 3

    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/credentials/CreateCredentialException;

    const-string v2, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    invoke-direct {v1, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResponse$1(Landroid/credentials/CreateCredentialResponse;)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda1;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

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

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-static {}, Landroid/credentials/CredentialManager;->-$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    iget-object v3, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda2;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public blacklist onResponse(Landroid/credentials/CreateCredentialResponse;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;-><init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V

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
