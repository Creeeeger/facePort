.class public Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "fingerprint"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 18
    .line 19
    return-object p0
.end method

.method public final requestDisplayLimitState(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 12
    .line 13
    const-string p0, "BSS_DisplayStateManager"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string p1, "IFingerprintService is NULL"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    move v3, p1

    .line 28
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "enableDisplayLimitState: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
