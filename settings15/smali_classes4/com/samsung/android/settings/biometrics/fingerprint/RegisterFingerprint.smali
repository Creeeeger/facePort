.class public Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChallenge:J

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFromSetupwizard:Z

.field public mGkPwHandle:J

.field public mIsFinishRegistration:Z

.field public mIsFromKnoxFingerprintPlus:Z

.field public mIsFromKnoxOtherCases:Z

.field public mIsFromKnoxSetupWizard:Z

.field public mIsFromKnoxTwoStep:Z

.field public mIsReCreatedRegistration:Z

.field public mIsRunRegister:Z

.field public mIsShowSurfaceUpdates:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPreviousStage:Ljava/lang/String;

.field public mSensorStatus:I

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStatusBarToken:Landroid/os/IBinder;

.field public mToken:[B

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsReCreatedRegistration:Z

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    return-void
.end method


# virtual methods
.method public final enableNavigationBar()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableNavigationBar - StatusBarService : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstRegisterTouchFingerprint"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final launchConfirmLock()V
    .locals 4

    const-string v0, "launchConfirmLock"

    const-string v1, "FpstRegisterTouchFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3ea

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Fail launchConfirmLock!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "requestCode : "

    const-string v1, " resultCode : "

    const-string v2, " data : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstRegisterTouchFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string p1, "FINGERPRINT_ENROLL_REQUEST : resultCode = "

    invoke-static {p2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const-string p1, "IsReCreated"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsReCreatedRegistration:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    if-eqz p1, :cond_5

    const-string p0, "finishRegistration() already run."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string p1, "finishRegistration()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "isShopDemo is true, showLDUDialog()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f142408

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1423e3

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :pswitch_2
    if-ne p2, v4, :cond_8

    const-string p1, "launchChooseLock"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "hide_insecure_options"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "request_gk_pw_handle"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "for_fingerprint"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 p3, -0x2710

    if-eq p2, p3, :cond_7

    const-string p3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    const/16 p2, 0x3eb

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "launchChooseLock : Activity Not Found !"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :pswitch_3
    if-ne p2, v5, :cond_9

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :pswitch_4
    if-ne p2, v4, :cond_a

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isAvailableMemorySizeToEnroll()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string v1, "getShowSurfaceUpdates : "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "SurfaceFlinger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v7, 0x3f2

    invoke-interface {v6, v7, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsShowSurfaceUpdates:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception v6

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :goto_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsShowSurfaceUpdates:Z

    const v3, 0x7f1423d4

    const v4, 0x7f1423bf

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142bcc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "always_finish_activities"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1411f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "any_screen_running"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1423d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_8
    const-string v1, "FpstFingerprintSettingsUtils"

    const-string v2, "isOneHandedMode : context = null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[previousStage] = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, "fingerprint_register_external"

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    :cond_a
    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mUserId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "challenge"

    const-string v3, "hw_auth_token"

    const-string v4, "gk_pw_handle"

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_b

    iget v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    iput-wide v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    goto :goto_5

    :cond_b
    invoke-static {v1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    :cond_c
    :goto_5
    iget v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-nez v8, :cond_d

    iget v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    iput v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SecureFolder or DualApp use owner\'s fingerprint. mUserId : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v8, "fromSetupWizard"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    const-string v8, "isFromKnoxSetupWizard"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    const-string v8, "isFromKnoxFingerprintPlus"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    const-string v8, "is_knox"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    const-string v8, "is_knox_two_step"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mIsFromKnoxOtherCases:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mIsFromKnoxTwoStep"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_f

    const-string p1, "[onCreate] mFingerprintManager == null"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_f
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_10

    const-string p1, "[onCreate] isHardwareDetected = false"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_10
    if-eqz p1, :cond_11

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    iget-wide v8, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    invoke-virtual {p1, v2, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    const-string/jumbo v1, "waitingForRegistration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    :cond_11
    if-eqz p1, :cond_12

    const-string v1, "StatusBarToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    :cond_12
    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    cmp-long p1, v1, v6

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz p1, :cond_13

    goto/16 :goto_7

    :cond_13
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez p1, :cond_16

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez p1, :cond_16

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-nez p1, :cond_16

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-nez p1, :cond_16

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_6

    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startBiometricsDisclaimer()V

    goto :goto_8

    :cond_16
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_1c

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-eqz p1, :cond_1c

    :cond_17
    const-string p1, "[KNOX FINGERPRPINT] : nonFinger chooseLock CASE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_19

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    if-eqz p1, :cond_19

    :cond_18
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_8

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startBiometricsDisclaimer()V

    goto :goto_8

    :cond_1b
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    :cond_1c
    :goto_8
    return-void

    :goto_9
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_1e
    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->enableNavigationBar()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "enrollResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "challenge"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "gk_pw_handle"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "waitingForRegistration"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "StatusBarToken"

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->enableNavigationBar()V

    :cond_1
    return-void
.end method

.method public final showSensorErrorDialog(I)V
    .locals 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3eb

    const v2, 0x7f1423d9

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1423d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1423d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1423da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1423dc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1423d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_5

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v4, 0x186c8

    if-eq v3, v4, :cond_4

    const v4, 0x186c9

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "FpstRegisterTouchFingerprint"

    const-string v0, "Session closed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x5

    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method public final startBiometricsDisclaimer()V
    .locals 5

    const-string/jumbo v0, "startBiometricsDisclaimer"

    const-string v1, "FpstRegisterTouchFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fromSetupWizard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x3ed

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v0, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final startFingerprintRegistration()V
    .locals 6

    const-string/jumbo v0, "startFingerprintRegistration()"

    const-string v1, "FpstRegisterTouchFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRunRegister:Z

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_7

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v3

    if-lt v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_2

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mStatusBarToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x1200000

    invoke-interface {v2, v5, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disableNavigationBar - StatusBarService : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string v3, "com.samsung.android.biometrics.app.setting.fingerprint.enroll.FingerprintEnrollActivity"

    invoke-static {v2, v3}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "gk_pw_handle"

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mGkPwHandle:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "fingerprint_guide_shown"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_5

    :goto_1
    const-string/jumbo v3, "skipGuideScreen"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fromSetupWizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isFromKnoxFingerprintPlus"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "IsReCreated"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsReCreatedRegistration:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3ee

    :try_start_1
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "Activity Not Found !"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
