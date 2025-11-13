.class public Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
.super Landroid/credentials/IGetCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GetCredentialTransportPendingUseCase"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/credentials/IGetCredentialCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1, p2}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onError call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v0, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onPendingIntent call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onResponse(Landroid/credentials/GetCredentialResponse;)V
    .locals 3

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onResponse(Landroid/credentials/GetCredentialResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    const-string v0, "CredentialManager"

    const-string v1, "Unexpected onResponse call before the show invocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setCallback(Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback has already been set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
