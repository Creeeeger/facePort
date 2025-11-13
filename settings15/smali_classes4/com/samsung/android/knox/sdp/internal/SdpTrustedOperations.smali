.class public Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final TAG:Ljava/lang/String; = "SdpTrustedOperations"

.field private static _instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;


# instance fields
.field private mService:Lcom/samsung/android/knox/dar/IDarManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->_instance:Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;

    return-object v0
.end method


# virtual methods
.method public deleteTokenFromTrusted(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    const-string v0, "SdpTrustedOperations"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call save token to the trusted"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0xd

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "deleteToeknFromTrusted failed "

    invoke-static {p0, p1, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getSupportedSDKVersion()D

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SdpTrustedOperations"

    const-string v1, "Failed to connect sdp service..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    const-string v0, "SdpTrustedOperations"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call save token to the trusted"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0xd

    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo p1, "saveTokenIntoTrusted failed "

    invoke-static {p0, p1, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpTrustedOperations;->mService:Lcom/samsung/android/knox/dar/IDarManagerService;

    const-string v0, "SdpTrustedOperations"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call save token to the trusted"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0xd

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unlockViaTrusted failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p1
.end method
