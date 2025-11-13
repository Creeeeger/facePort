.class public Lcom/samsung/android/settings/biometrics/face/FaceEntry;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static mUserId:I


# instance fields
.field public key:Ljava/lang/String;

.field public mChallenge:J

.field public mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mGkPwHandle:J

.field public mIsFromFragment:Z

.field public mIsKnox:Z

.field public mIsNeedFmmPopup:Z

.field public mIsSkipMandatoryBiometrics:Z

.field public mIsWaitingResult:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPreviousStage:Ljava/lang/String;

.field public mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field public mSensorId:I

.field public mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsSkipMandatoryBiometrics:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final launchConfirmLock()V
    .locals 4

    const-string v0, "launchConfirmLock "

    const-string v1, "FcstFaceEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x65

    iput v3, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    sget v3, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v0, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

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

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

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

    const-string v1, "FcstFaceEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

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

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isMandatoryBiometricsAccessible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsSkipMandatoryBiometrics:Z

    const-string p1, "face_register_external"

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_8

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

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

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    const-string/jumbo p2, "need_fmm_popup"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    const-string p2, "hw_auth_token"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_7

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-string p2, "challenge"

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    const-string/jumbo p2, "sensor_id"

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_9
    if-ne p2, v5, :cond_c

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_a

    const-string p1, "CONFIRM_REQUEST: GatekeeperPasswordHandle is 0L."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    const p2, 0x7f14239d

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FcstFaceEntry"

    const-string p1, "=====onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    move-result v1

    const v3, 0x7f142127

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    if-nez v1, :cond_1

    const-string p1, "Fail to split view to full screen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f140645

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    const v1, 0x7f14239f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "FaceSettingsPreferenceController unsupported"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledForCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "UCMKeyguard enabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "from_biometric_fragment"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mUserId : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mIsAfw : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_6

    const-string p1, "Error. mFaceManager is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_7

    const p1, 0x7f14239d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    const-string v0, "IsWaitingResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "face_register_external"

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getMandatoryBiometricIntentForBiometricsSetting(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x406

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_c

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    move v2, v4

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v2, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_1

    :cond_d
    if-eqz v2, :cond_e

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_e

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->launchConfirmLock()V

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FcstFaceEntry"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final runRegister()V
    .locals 7

    const-string v0, "FcstFaceEntry"

    const-string v1, "There is no enrolled face. Run FaceLockSettings!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1423bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1411f9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f142398

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f14214b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "face_register_external"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    goto :goto_0

    :cond_2
    const-string v4, "key_face_settings_entry"

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    :goto_0
    const-string/jumbo v4, "previousStage"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "gk_pw_handle"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "skip_mandatory_biometrics"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsSkipMandatoryBiometrics:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_knox"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    sget v5, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "from_biometric_fragment"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-eqz v4, :cond_3

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "runRegister : Activity Not Found !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final startFragment(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "FcstFaceEntry"

    const-string/jumbo v0, "startFragment : context is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "isAfw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_knox"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "identifyFace"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "needTurnOnCheck"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "need_fmm_popup"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    if-eqz v1, :cond_1

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "sensor_id"

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    const/16 p1, 0x2347

    iput p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const v0, 0x7f140645

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
