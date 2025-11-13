.class public final synthetic Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    iget p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const p1, 0x7f0100db

    const v1, 0x7f0100dc

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void

    :pswitch_0
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsClickedLearnMore:Z

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "biometrics_settings_destroy"

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
