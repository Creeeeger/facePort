.class public Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlwaysOn:Landroid/view/View;

.field public mAlwaysOnSummary:Landroid/widget/TextView;

.field public mAlwaysOnSwitch:Landroid/widget/Switch;

.field public mAlwaysOnType:Landroid/view/View;

.field public mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

.field public mFingerEffect:Landroid/view/View;

.field public mFingerEffectSwitch:Landroid/widget/Switch;

.field public mFingerUnlock:Landroid/view/View;

.field public mFingerUnlockSwitch:Landroid/widget/Switch;

.field public mGkPwHandle:J

.field public mLaunchFaceLock:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mScreenOffIcon:Landroid/view/View;

.field public mScreenOffIconAod:Landroid/view/View;

.field public mScreenOffIconAodSpinner:Landroid/widget/Spinner;

.field public mScreenOffIconAodSummary:Landroid/widget/TextView;

.field public mScreenOffIconSwitch:Landroid/widget/Switch;

.field public mShowFingerprintIcon:Landroid/view/View;

.field public mShowFingerprintIconSummary:Landroid/widget/TextView;

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

.method public static setViewEnable$1(Landroid/view/View;Z)V
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

.method public static setViewEnable$1(Landroid/widget/Switch;Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    const-string v0, "gk_pw_handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mGkPwHandle:J

    const p1, 0x7f0d08b4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const p1, 0x7f0a064c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlock:Landroid/view/View;

    const p1, 0x7f0a064d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a064f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOn:Landroid/view/View;

    const p1, 0x7f0a0651

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a0650

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSummary:Landroid/widget/TextView;

    const p1, 0x7f0a0653

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnType:Landroid/view/View;

    const p1, 0x7f0a0654

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0a0663

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    const p1, 0x7f0a0665

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a0659

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIcon:Landroid/view/View;

    const p1, 0x7f0a065e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a065a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    const p1, 0x7f0a065b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSpinner:Landroid/widget/Spinner;

    const p1, 0x7f0a065c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSummary:Landroid/widget/TextView;

    const p1, 0x7f0a0660

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mShowFingerprintIcon:Landroid/view/View;

    const p1, 0x7f0a0661

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mShowFingerprintIconSummary:Landroid/widget/TextView;

    const p1, 0x7f0a0656

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffect:Landroid/view/View;

    const p1, 0x7f0a0657

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    const p1, 0x7f0a1038

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f14240e

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const p1, 0x7f14240b

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f14240d

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    :goto_0
    new-instance p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    const v0, 0x7f142124

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mLaunchFaceLock:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void

    :cond_2
    :goto_1
    const-string p1, "FpstSuwFingerprintUsefulFeature"

    const-string v0, "getIntent() is null !!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    const-string v0, "FpstSuwFingerprintUsefulFeature"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sendFingerprintFeatureLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "0"

    const-string v3, "1"

    const-wide/16 v4, 0x0

    const/16 v6, 0x205e

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/16 v7, 0x2020

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const/16 v7, 0x2047

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const/16 v7, 0x2063

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {v1, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2054

    invoke-static {v6, v7, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v2, v3

    :cond_6
    const/16 v1, 0x2058

    invoke-static {v6, v1, v4, v5, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    const-string/jumbo v2, "sendFingerprintsFeatureLogging: error fail to send  SA logging"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string/jumbo v3, "setFingerprintUsefulFeaturePreference"

    const-string v4, "FpstSuwFingerprintUsefulFeature"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setFingerprintUsefulFeaturePreference : resources exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlock:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlock:Landroid/view/View;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/widget/Switch;Z)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlock:Landroid/view/View;

    new-instance v8, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerUnlockSwitch:Landroid/widget/Switch;

    new-instance v8, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOn:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    if-nez v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOn:Landroid/view/View;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/widget/Switch;Z)V

    :cond_2
    if-eqz v4, :cond_3

    const-string/jumbo v5, "sec_fingerprint_always_on_summary"

    const-string/jumbo v7, "string"

    invoke-virtual {v4, v5, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOn:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnType:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnType:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIcon:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v6, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mAlwaysOnSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x7f0d0820

    invoke-static {p0, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const v5, 0x7f0d0bd5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSummary:Landroid/widget/TextView;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAod:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mShowFingerprintIcon:Landroid/view/View;

    if-eqz v2, :cond_d

    sget-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    if-nez v6, :cond_c

    invoke-static {v2, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mShowFingerprintIconSummary:Landroid/widget/TextView;

    const v3, 0x7f1423fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mShowFingerprintIcon:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffect:Landroid/view/View;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    if-nez v6, :cond_e

    invoke-static {v2, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->setViewEnable$1(Landroid/widget/Switch;Z)V

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffect:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mFingerEffectSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a103c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f14215e

    invoke-static {p0, v2, v3, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTipLink(Landroid/content/Context;Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070a9e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    :cond_10
    return-void
.end method
