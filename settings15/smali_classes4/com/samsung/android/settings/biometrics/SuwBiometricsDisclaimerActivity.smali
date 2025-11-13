.class public Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIsClickedLearnMore:Z

.field public mIsDescExpanded:Z

.field public mLeanMoreResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

.field public mMoreAboutSpinner:Landroid/widget/LinearLayout;

.field public mMoreAboutSpinnerImage:Landroid/widget/ImageView;

.field public mMoreAboutSpinnerText:Landroid/widget/TextView;

.field public mRequestBiometricsType:I

.field public mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsDescExpanded:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01d1

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a01d2

    if-ne p1, v0, :cond_2

    :cond_0
    const-string p1, "SuwBiometricsDisclaimer"

    const-string v0, "More about face"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutDesc$1(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutDesc$1(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eqz p1, :cond_0

    const-string v0, "is_desc_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsDescExpanded:Z

    :cond_0
    const-string/jumbo p1, "setTitleForVoiceAssistant"

    const-string v0, "SuwBiometricsDisclaimer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const p1, 0x7f142138

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const p1, 0x7f142137

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "setTitleForVoiceAssistant : Wrong case"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const p1, 0x7f080915

    const v0, 0x7f142149

    goto :goto_1

    :cond_4
    const p1, 0x7f080917

    const v0, 0x7f1423ba

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060543

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    :goto_2
    new-instance p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;I)V

    const v0, 0x7f142124

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

    if-nez p1, :cond_5

    new-instance p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;I)V

    const v0, 0x7f142134

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    :cond_5
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mLeanMoreResult:Landroidx/activity/result/ActivityResultRegistry$2;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsClickedLearnMore:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 11

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const-string v1, " "

    const-string v2, "SuwBiometricsDisclaimer"

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong Biometric type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, ""

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0d0814

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d3d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f14213c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f14213d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a01d9

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0a01e3

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f0d0815

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d3e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f14213e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f14213f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string/jumbo v1, "string"

    const-string v6, "com.samsung.android.biometrics.app.setting"

    const v7, 0x7f0a01dc

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01de

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v7, :cond_4

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01dd

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a01df

    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v10, "fingerprint_dialog_make_sure_that_you_dont_use"

    invoke-virtual {v7, v10, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "fingerprint_dialog_if_you_use_a_screen_protector"

    invoke-virtual {v7, v8, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setInDisplayFingerprintDisclaimerTips : exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0a01e4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    const v1, 0x7f0a01cb

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_2

    :cond_7
    const v1, 0x7f0a01cd

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_2
    new-instance v2, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;)V

    const v3, 0x7f14213b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Landroid/text/style/ClickableSpan;)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsDescExpanded:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutDesc$1(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_9
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_desc_expanded"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsDescExpanded:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setMoreAboutDesc$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsDescExpanded:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f142136

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideDesc:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f142135

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
