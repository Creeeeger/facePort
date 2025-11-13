.class public final synthetic Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mNextClicked:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.settings.BIOMETRIC_ENROLL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gk_pw_handle"

    iget-wide v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->mGkPwHandle:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_0
    sget p1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockRequireBiometricSetup;->BIOMETRIC_ENROLL_REQUEST:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
