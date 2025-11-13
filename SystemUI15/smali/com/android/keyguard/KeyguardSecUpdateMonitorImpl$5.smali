.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->userId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mBiometricLockoutResetRunnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void
.end method
