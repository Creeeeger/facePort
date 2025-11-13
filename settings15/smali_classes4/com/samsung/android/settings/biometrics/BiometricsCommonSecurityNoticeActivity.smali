.class public Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionBar:Landroidx/appcompat/app/ActionBar;

.field public mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

.field public mFaceDescView:Landroid/widget/TextView;

.field public mFingerprintDescView:Landroid/widget/TextView;

.field public mFingerprintView:Landroid/widget/LinearLayout;

.field public mFinishSetting:Z

.field public mFromSetupWizard:Z

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFinishSetting:Z

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFinishSetting:Z

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BiometricsCommonSecurityNoticeActivity"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mUserId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFromSetupWizard:Z

    const v0, 0x7f0d081e

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const v0, 0x7f0a01c3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintDescView:Landroid/widget/TextView;

    const v0, 0x7f0a01c1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceDescView:Landroid/widget/TextView;

    const-string/jumbo v0, "setDescriptionString"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0a01c7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFingerprintDescView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSecurityLevelDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFaceDescView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSecurityLevelDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFinishSetting:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "screen_lock_force_destroy"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFinishSetting:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mFromSetupWizard:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

    if-eqz v0, :cond_1

    const v1, 0x7f142123

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "BiometricsCommonSecurityNoticeActivity"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsCommonSecurityNoticeActivity;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
