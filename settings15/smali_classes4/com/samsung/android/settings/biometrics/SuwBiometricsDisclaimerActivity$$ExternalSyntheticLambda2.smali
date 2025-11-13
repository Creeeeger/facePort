.class public final synthetic Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isSetupFlow"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    const/16 p1, 0x20d9

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20da

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 p1, 0x2037

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2038

    goto :goto_1

    :cond_2
    const-string v0, ""

    move-object v3, v0

    move v0, p1

    move-object p1, v3

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "BIOMETRICS_LOCK_TYPE"

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mSetScreenLockResult:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
