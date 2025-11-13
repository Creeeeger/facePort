.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getWofType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_2
    return-void

    :cond_3
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    return-void

    :cond_5
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_6
    :goto_0
    return-void
.end method
