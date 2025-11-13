.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;->$r8$classId:I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;->$r8$classId:I

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;->f$0:I

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDualDARInnerLockscreenRequirementChanged(I)V

    return-void

    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDlsViewModeChanged(I)V

    return-void

    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void

    :pswitch_3
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V

    return-void

    :pswitch_4
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V

    return-void

    :pswitch_5
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
