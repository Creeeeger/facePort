.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static mUserId:I


# instance fields
.field public key:Ljava/lang/String;

.field public mChallenge:J

.field public mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

.field public mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mGkPwHandle:J

.field public mIsFromBiometricsMenu:Z

.field public mIsFromFragment:Z

.field public mIsKnox:Z

.field public mIsSkipMandatoryBiometrics:Z

.field public mIsWaitingResult:Z

.field public mPreviousStage:Ljava/lang/String;

.field public mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field public mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsSkipMandatoryBiometrics:Z

    return-void
.end method


# virtual methods
.method public final launchConfirmLock()V
    .locals 4

    const-string v0, "launchConfirmLock "

    const-string v1, "FpstFingerprintEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x65

    iput v3, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    sget v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    sget v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    const/16 v3, -0x2710

    if-eq v0, v3, :cond_0

    iput v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    if-nez v0, :cond_1

    const-string v0, "ConfirmLock Fail"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, "=====onActivityResult : requestCode : "

    const-string v1, " resultCode : "

    const-string v2, " data : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    :cond_0
    const/16 v0, 0x65

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x66

    if-eq p1, v0, :cond_6

    const/16 v0, 0x406

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v5, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isMandatoryBiometricsAccessible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsSkipMandatoryBiometrics:Z

    const-string p1, "fingerprint_register_external"

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_8

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "gk_pw_handle"

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    const-string p2, "hw_auth_token"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_7

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    const-string p2, "challenge"

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_9
    if-ne p2, v5, :cond_c

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_a

    const-string p1, "CONFIRM_REQUEST: GatekeeperPasswordHandle is 0L."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    const p2, 0x7f1423d8

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FpstFingerprintEntry"

    const-string p1, "=====onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    sget-boolean v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const/4 v2, 0x0

    const-string v3, "FpstFingerprintSettingsUtils"

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isNotAvailableFingerprintWithMobileKeyboard : config = google_touch_display_ultrasonic context = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string p1, "Mobile keyboard attached"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    const v0, 0x7f1423ba

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1423e2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    const v1, 0x7f142408

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "FingerprintSettingsPreferenceController unsupported"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    move-result v1

    const v5, 0x7f142127

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    if-nez v1, :cond_4

    const-string p1, "Fail to split view to full screen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const v1, 0x7f140646

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, ":settings:fragment_args_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "fromBiometricsMenu"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromBiometricsMenu:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "from_biometric_fragment"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "previousStage"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    const-string v5, "fingerprint"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    sput v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "SecureFolder or DualApp use owner\'s fingerprint. mUserId : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mUserId : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mIsAfw : false, mIsKnox : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    move-result v1

    if-nez v1, :cond_8

    const-string p1, "UCMKeyguard enabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_9

    const-string/jumbo p1, "onCreate mGFingerprintManager == null"

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1423d8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1423bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_9
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a

    const-string v1, "IsWaitingResult"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "fingerprint_guide_shown"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    const-string/jumbo v2, "setFingerprintSettingsCreateValue : true"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "fingerprint_settings_create"

    invoke-static {p1, v2, v4, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "fingerprint_register_external"

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    sget v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "google_setupwizard_fingerprint"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    invoke-static {p1, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p1

    if-ne v2, p1, :cond_c

    goto :goto_1

    :cond_c
    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getMandatoryBiometricIntentForBiometricsSetting(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x406

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    goto :goto_2

    :cond_e
    sget p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_2

    :cond_f
    if-eqz p1, :cond_10

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->launchConfirmLock()V

    goto :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final runRegister()V
    .locals 7

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "There is no enrolled fingerprint. Run RegisterFingerprint!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    if-eqz v1, :cond_0

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1411f9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1423d4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const v1, 0x7f1423bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f14214c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fingerprint_register_external"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    goto :goto_0

    :cond_3
    const-string v4, "fingerprint_entry"

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    :goto_0
    const-string/jumbo v4, "previousStage"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "gk_pw_handle"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_knox"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "skip_mandatory_biometrics"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsSkipMandatoryBiometrics:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    sget v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "from_biometric_fragment"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "fromBiometricsMenu"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromBiometricsMenu:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    if-eqz v4, :cond_4

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "runRegister : Activity Not Found !"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final startFragment(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsTemplateDbCorrupted()Z

    move-result v0

    const-string v1, "FpstFingerprintEntry"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "onCreate DB Corrupt"

    invoke-static {v1, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "startFragment : context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "isAfw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_knox"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v1, :cond_2

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    const/16 p1, 0x2347

    iput p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const v0, 0x7f140646

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
