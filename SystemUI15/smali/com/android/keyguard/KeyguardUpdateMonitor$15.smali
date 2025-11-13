.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPostureState:I

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mConfigFaceAuthSupportedPosture:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPostureState:I

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    const-string v0, "New posture does not allow face auth, stopping it"

    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_4
    return-void
.end method
