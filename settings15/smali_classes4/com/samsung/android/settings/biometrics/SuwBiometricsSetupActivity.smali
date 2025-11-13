.class public Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mRootLayout:Landroid/view/ViewGroup;

.field public final mSetLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mSetLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "SuwBiometricsSetupLock"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mUserId:I

    const p1, 0x7f14215b

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f14215c

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    const p1, 0x7f080912

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0d081f

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(I)V

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;I)V

    const v0, 0x7f142134

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-nez p1, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_3
    const v2, 0x7f0a0610

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4}, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    const p1, 0x7f0a064c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    const p1, 0x7f0a0edf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    :cond_8
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    const v2, 0x7f06062e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    const v0, 0x7f0a0edd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mRootLayout:Landroid/view/ViewGroup;

    return-void
.end method
