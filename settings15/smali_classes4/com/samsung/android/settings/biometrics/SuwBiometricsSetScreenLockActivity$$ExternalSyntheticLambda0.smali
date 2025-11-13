.class public final synthetic Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;->$r8$clinit:I

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

    return-void

    :pswitch_0
    sget p1, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;->$r8$clinit:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
