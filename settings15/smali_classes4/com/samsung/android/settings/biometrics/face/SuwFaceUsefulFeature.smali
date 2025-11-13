.class public Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBrightenScreen:Landroid/view/View;

.field public mBrightenScreenSwitch:Landroid/widget/Switch;

.field public mFaceUnlock:Landroid/view/View;

.field public mFaceUnlockSwitch:Landroid/widget/Switch;

.field public mGkPwHandle:J

.field public mLaunchFingerLock:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mOpenEyes:Landroid/view/View;

.field public mOpenEyesSwitch:Landroid/widget/Switch;

.field public mRecognizeWithMask:Landroid/view/View;

.field public mRecognizeWithMaskSwitch:Landroid/widget/Switch;

.field public mStayOnLockScreen:Landroid/view/View;

.field public mStayOnLockScreenSwitch:Landroid/widget/Switch;

.field public mTipLayout:Landroid/widget/LinearLayout;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method public static setViewEnable(Landroid/view/View;Z)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    const-string v0, "gk_pw_handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mGkPwHandle:J

    const p1, 0x7f0d08ab

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const p1, 0x7f1423b7

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f1423b6

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    new-instance p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    const v0, 0x7f142124

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mLaunchFingerLock:Landroidx/activity/result/ActivityResultRegistry$2;

    const p1, 0x7f0a0610

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlock:Landroid/view/View;

    const p1, 0x7f0a0611

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a0617

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    const p1, 0x7f0a0619

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a0613

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    const p1, 0x7f0a0615

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a061e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    const p1, 0x7f0a0620

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a060f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    const p1, 0x7f0a061c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a1039

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    return-void

    :cond_1
    :goto_0
    const-string p1, "FcstSuwFaceUsefulFeature"

    const-string v0, "getIntent() is null !!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    const-string/jumbo v0, "onDestroy"

    const-string v1, "FcstSuwFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sendFaceFeatureLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlock:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    const-string v4, "0"

    const-string v5, "1"

    const/16 v6, 0x20e8

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    const/16 v7, 0x20d4

    invoke-static {v6, v7, v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v5

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    const/16 v7, 0x20f5

    invoke-static {v6, v7, v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    const/16 v7, 0x2108

    invoke-static {v6, v7, v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v5

    goto :goto_4

    :cond_5
    move-object v0, v4

    :goto_4
    const/16 v7, 0x20ff

    invoke-static {v6, v7, v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v4, v5

    :cond_7
    const/16 v0, 0x20ee

    invoke-static {v6, v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    const-string/jumbo v2, "sendFaceFeatureLogging: error fail to send  SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_6
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v4, "FcstSuwFaceUsefulFeature"

    const-string/jumbo v5, "setFaceUsefulFeaturePreference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlock:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlock:Landroid/view/View;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setViewEnable(Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlock:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFaceUnlockSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    if-nez v5, :cond_2

    invoke-static {v4, v2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setViewEnable(Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    new-instance v6, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "face_recognize_mask"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v3, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    new-instance v6, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a103c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f14215f

    invoke-static {p0, v1, v3, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTipLink(Landroid/content/Context;Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070a9e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    :cond_b
    :goto_5
    return-void
.end method
