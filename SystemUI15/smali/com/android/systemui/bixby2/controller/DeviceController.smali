.class public Lcom/android/systemui/bixby2/controller/DeviceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final ORIENTATION_LANDSCAPE:I = 0x1

.field private static final ORIENTATION_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceController"


# instance fields
.field private mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

.field private final mContext:Landroid/content/Context;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

.field private mSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    return-void
.end method

.method private isNeedSecureConfirm(Landroid/content/ContentResolver;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result p0

    const-string v0, "power_off_lock_option"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "isRMMLocked = "

    const-string v3, ", isPowerOffUnLocked = "

    const-string v4, "DeviceController"

    invoke-static {v2, v3, v4, p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private isScreenRotationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isSupportPowerOffLock()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_SupportPowerOffLock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isScreenRotationSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DeviceController"

    const/4 v3, 0x2

    if-nez v0, :cond_0

    const-string p0, "screen rotation is not supported so can\'t change rotation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v1, "already_set"

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const-string p0, "Already set as portrait mode"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    if-ne p2, v0, :cond_3

    const-string p0, "Already set as landscape mode"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const-string v1, "DeviceController#setAutoRotate"

    invoke-interface {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ILjava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "set as orientation = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " success - isRotationRocked = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo p1, "success"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SuccessAfterSetOff"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getFlashLightIntent()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.indexsearch.OPEN_DETAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "tileSpec"

    const-string v2, "Flashlight"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4000000

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getFlashLightLevel()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightLevel:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasFlashLight()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    return p0
.end method

.method public isAutoRotationEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFlashLightEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public restartDevice(Landroid/content/Context;)V
    .locals 1

    const-string p0, "restartDevice"

    const-string p1, "DeviceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->rebootByBixby(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "reboot RemoteException "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAutoRotate(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    const-string v0, "setAutoRotate isOn = "

    const-string v1, "DeviceController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-ne p1, v0, :cond_0

    const-string p0, "AutoRotate set is already applied"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "AutoRotate set is succeeded"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    xor-int/2addr p1, v3

    const-string v0, "DeviceController#setAutoRotate"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo p1, "success"

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setFlashlight(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    const-string v0, "setFlashlight enable = "

    const-string v1, "DeviceController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x1

    const-string/jumbo v0, "success"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setFlashlightWithLevel(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    const-string v0, "setFlashlightWithLevel new level = "

    const-string v1, " current level = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result v2

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->setFlashlightLevel(IZ)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo p1, "success"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setLandscapeMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    const-string v0, "DeviceController"

    const-string v1, "setLandscapeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0
.end method

.method public setPortraitMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    const-string v0, "DeviceController"

    const-string v1, "setPortraitMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0
.end method

.method public turnOffDevice(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "turnOffDevice"

    const-string v1, "DeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    invoke-direct {v3, p1}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "isFMMLocked = true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x10405ff

    goto :goto_0

    :cond_3
    const v0, 0x10405fe

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/bixby2/controller/DeviceController$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController$1;-><init>(Lcom/android/systemui/bixby2/controller/DeviceController;Landroid/content/Context;I)V

    const-wide/16 p0, 0x0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    const-string p1, "isFMMLocked = false"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isSupportPowerOffLock()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isNeedSecureConfirm(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "init BiometricPrompt"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    const-string v0, " "

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->initPrompt(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->buildAndRun(Landroid/os/CancellationSignal;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->shutdownByBixby()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "shutdown RemoteException "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public turnOffScreen(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo p0, "turnOffScreen"

    const-string v0, "DeviceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p0, "power"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
