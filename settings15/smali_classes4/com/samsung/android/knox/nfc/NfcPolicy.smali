.class public Lcom/samsung/android/knox/nfc/NfcPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String; = "NfcPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/knox/ContextInfo;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public allowNFCStateChange(Z)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NfcPolicy.allowNFCStateChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with MiscPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object p0
.end method

.method public isNFCStarted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStarted()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with MiscPolicy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStateChangeAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with MiscPolicy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public startNFC(Z)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_HW_CONTROL"
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NfcPolicy.startNFC"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with MiscPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
