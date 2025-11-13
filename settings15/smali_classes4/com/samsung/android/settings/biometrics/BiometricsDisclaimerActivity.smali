.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

.field public mBiometricsIconView:Landroid/widget/ImageView;

.field public mBiometricsTitleTextView:Landroid/widget/TextView;

.field public mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

.field public mContinueButtonArea:Landroid/widget/LinearLayout;

.field public mContinueEventId:I

.field public mFromSettingsOption:Z

.field public mGkPwHandle:J

.field public mIsClickedLearnMore:Z

.field public mIsDescExpanded:Z

.field public mIsFinished:Z

.field public mIsSecured:Z

.field public mIsWaitConfirmLock:Z

.field public mKnoxIcon:Landroid/widget/FrameLayout;

.field public mLeanMoreResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mLearnMoreTextView:Landroid/widget/TextView;

.field public mMainGuideTextView:Landroid/widget/TextView;

.field public mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

.field public mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

.field public mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

.field public mMoreAboutSpinner:Landroid/widget/LinearLayout;

.field public mMoreAboutSpinnerImage:Landroid/widget/ImageView;

.field public mMoreAboutSpinnerText:Landroid/widget/TextView;

.field public mRequestBiometricsType:I

.field public mScreenId:Ljava/lang/String;

.field public mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mTitleArea:Landroid/widget/LinearLayout;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsDescExpanded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    return-void
.end method


# virtual methods
.method public final finishBiometricsDisclaimer(I)V
    .locals 4

    const-string v0, "finishBiometricsDisclaimer : "

    const-string v1, "BiometricsDisclaimerActivity"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gk_pw_handle"

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01d1

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a01d2

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutDesc(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutDesc(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string p1, "BiometricsDisclaimerActivity"

    const-string/jumbo v0, "onClickContinue"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsSetScreenLockActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "BIOMETRICS_LOCK_TYPE"

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsDisclaimerLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Request Biometrics Type : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-static {v2, v4, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-nez v2, :cond_0

    const-string p1, "Wrong Request"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void

    :cond_0
    const-string/jumbo v2, "setTitleForVoiceAssistant"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v4, 0x7f142138

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x100

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v4, 0x7f142137

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "setTitleForVoiceAssistant : Wrong case"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "User ID : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    const-string v2, "fromSettingsOption"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "From SettingsOption : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    invoke-static {v2, v4, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v2, "gk_pw_handle"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    if-eqz p1, :cond_3

    const-string v1, "is_desc_expanded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsDescExpanded:Z

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    const-string v1, "IsWaitConfirmLock"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz p1, :cond_5

    const p1, 0x7f150331

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_5
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLeanMoreResult:Landroidx/activity/result/ActivityResultRegistry$2;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsDisclaimerLayout()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "onMultiWindowModeChanged: "

    const-string v1, ", "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricsDisclaimerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f142127

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    const-string/jumbo v0, "onPause"

    const-string v1, "BiometricsDisclaimerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mIsFinished : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsClickedLearnMore:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "onPause : Device is secured! So finish the activity."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->removeSideMargin(Landroid/app/Activity;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_desc_expanded"

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsDescExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "gk_pw_handle"

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "IsWaitConfirmLock"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setBiometricsDisclaimerLayout()V
    .locals 12

    const v0, 0x7f0d0816

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01e5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a042b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0846

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mKnoxIcon:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v1, 0x1

    const/16 v2, 0x100

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const/16 v3, 0x20d9

    invoke-static {v0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    const/16 v0, 0x20da

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d3d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const/16 v3, 0x2037

    invoke-static {v0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    const/16 v0, 0x2038

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d3e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    const-string v3, "BiometricsDisclaimerActivity"

    if-nez v0, :cond_4

    const-string v0, "Hide the action bar"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar()V

    :cond_4
    const v0, 0x7f0a042c

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->setMaxFontScale$1(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_5
    :goto_1
    const v0, 0x7f0a0539

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x7f0a01c9

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v5, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    if-eqz v0, :cond_6

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a1055

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const v0, 0x7f0a1054

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f07093a

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-eqz v4, :cond_9

    invoke-virtual {v4, v0, v8, v0, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8, v0, v8, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const v4, 0x7f060549

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const v4, 0x7f060540

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07093b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0, v4, v6, v8, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f06052e

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_b
    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070920

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07091f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    if-ne v5, v1, :cond_c

    invoke-virtual {v4, v9, v8, v10, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_c
    if-ne v5, v6, :cond_d

    invoke-virtual {v4, v10, v8, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    :cond_e
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_f

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mKnoxIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " "

    if-eq v0, v1, :cond_14

    if-eq v0, v2, :cond_10

    :try_start_1
    const-string v0, "Wrong case"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLearnMoreTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    const v2, 0x7f080914

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string/jumbo v0, "setResource"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f142149

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v2, 0x7f14213c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v3, 0x7f14213d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_14
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLearnMoreTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    const v2, 0x7f080916

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f1423ba

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v2, 0x7f14213e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const v3, 0x7f14213f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setInDisplayFingerprintDisclaimerTips()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLearnMoreTextView:Landroid/widget/TextView;

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLearnMoreTextView:Landroid/widget/TextView;

    const v3, 0x7f14213b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/text/style/ClickableSpan;)V

    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsDescExpanded:Z

    if-eqz v0, :cond_19

    goto :goto_7

    :cond_19
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutDesc(Z)V

    goto :goto_9

    :cond_1a
    :goto_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutDesc(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public final setInDisplayFingerprintDisclaimerTips()V
    .locals 5

    const-string/jumbo v0, "string"

    const-string v1, "com.samsung.android.biometrics.app.setting"

    const v2, 0x7f0a01dc

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01de

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01dd

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a01df

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, "fingerprint_dialog_make_sure_that_you_dont_use"

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "fingerprint_dialog_if_you_use_a_screen_protector"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setInDisplayFingerprintDisclaimerTips : exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricsDisclaimerActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setMoreAboutDesc(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsDescExpanded:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f142136

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f142135

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f140886

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
