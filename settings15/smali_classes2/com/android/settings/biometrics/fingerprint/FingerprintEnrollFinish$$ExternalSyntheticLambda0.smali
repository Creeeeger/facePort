.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->updateFingerprintSuggestionEnableState()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->finishAndToNext(I)V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mIsAddAnotherOrFinish:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
