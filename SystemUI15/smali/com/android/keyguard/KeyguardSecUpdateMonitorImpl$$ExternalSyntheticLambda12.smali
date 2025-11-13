.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->$r8$lambda$kJTDZ_s3Y5_-kkqejQUfg2hm3D0(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
