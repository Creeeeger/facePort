.class public Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
.super Ljava/lang/Object;
.source "SysUiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSemStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mWindowManager:Landroid/view/WindowManager;

    nop

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    return-void
.end method


# virtual methods
.method public deliveryTouchEventToHAL(III)V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    int-to-long v0, p2

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    int-to-long v2, p3

    or-long/2addr v0, v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    const/16 v3, 0x9

    const/4 v7, 0x0

    move v4, p1

    move-wide v5, v0

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BSS_SysUiClient"

    const-string v2, "deliveryTouchEventToHAL: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public fpIsOnlyKeyguardMask()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;->access$2300(Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public fpSetDisplayStateLimit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->setDisplayStateLimit(Z)V

    return-void
.end method

.method public fpSysUiRequestToSystemServer(I)I
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(IIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public fpSysUiRequestToSystemServer(II)I
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(IIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public fpSysUiRequestToSystemServer(IIJLjava/lang/String;)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fpRequestSystemServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveUserId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)I

    move-result v0

    return v0
.end method

.method public getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0
.end method

.method public getInDisplaySensorHelper()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1600(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    return-object v0
.end method

.method public getOperationId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrganizationColor()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MANAGED_PROFILE_COLOR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method public getPromptInfo()Landroid/hardware/biometrics/PromptInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$600(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSemStatusBarManager()Landroid/app/SemStatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public handleOnButtonPressed(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1800(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V

    return-void
.end method

.method public handleOnDismissed(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1900(Lcom/samsung/android/biometrics/app/setting/SysUiClient;I[B)V

    return-void
.end method

.method public handleOnEvent(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1700(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V

    return-void
.end method

.method public handleOnGestureCalibrationDismissed(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1900(Lcom/samsung/android/biometrics/app/setting/SysUiClient;I[B)V

    return-void
.end method

.method public handleOnUerCancel(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleUserCancel(I)V

    return-void
.end method

.method public isCredentialPrompt()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$900(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFacePrompt()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$800(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isFingerprintPrompt()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isFpAlphaMaskSAMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v0

    return v0
.end method

.method public isFpAuthenticationType()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$300(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

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

.method public isFpCalibrationMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isFpRequireTouchBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isKeyguard()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isKnoxProfile()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->supportKnoxContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "SECURE_FOLDER"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public isManagedProfile()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MANAGED_PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public isPrompt()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$700(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public isTpaMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z

    move-result v0

    return v0
.end method

.method public removeFpSAMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    return-void
.end method

.method public sendErrorEventToSystemService(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V

    return-void
.end method

.method public sendTouchEventToSystemService(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-static {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->access$2100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;I)V

    return-void
.end method

.method public setVisibilityHwLightSource(Z)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityHwLightSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->mSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    return-void
.end method
