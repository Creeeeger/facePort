.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->$r8$classId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$1:Z

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;->f$1:Z

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
