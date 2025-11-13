.class public final Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingGetCredentialHandle"
.end annotation


# instance fields
.field private final blacklist mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    iput-object p2, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic blacklist lambda$show$0(Landroid/os/OutcomeReceiver;)V
    .locals 2

    new-instance v0, Landroid/credentials/GetCredentialException;

    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$show$1(Landroid/os/OutcomeReceiver;)V
    .locals 2

    new-instance v0, Landroid/credentials/GetCredentialException;

    const-string v1, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method blacklist show(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mGetCredentialTransport:Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1;

    invoke-direct {v1, p0, p1, p3, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1;-><init>(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0, v1}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->setCallback(Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;)V

    :try_start_0
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {}, Landroid/credentials/PrepareGetCredentialResponse;->-$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CredentialManager"

    const-string/jumbo v2, "startIntentSender() failed for intent for show()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda1;

    invoke-direct {v1, p4}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
