.class public final synthetic Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x4

    const-string/jumbo v0, "useImmersiveMode"

    const-string/jumbo v1, "previousStage"

    const/4 v2, 0x1

    const-string v3, "fromSetupWizard"

    iget v4, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;

    packed-switch v4, :pswitch_data_0

    sget p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isSetupFlow"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    :goto_0
    return-void

    :pswitch_0
    sget v4, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "google_setupwizard_fingerprint"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mSetLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {v0, v4}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_1
    sget v4, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "setupwizard_face"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mSetLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {v0, v4}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
