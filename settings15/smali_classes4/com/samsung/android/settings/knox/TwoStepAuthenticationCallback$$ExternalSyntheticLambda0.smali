.class public final synthetic Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->callback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->enableConfirmCredentialCallback()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
