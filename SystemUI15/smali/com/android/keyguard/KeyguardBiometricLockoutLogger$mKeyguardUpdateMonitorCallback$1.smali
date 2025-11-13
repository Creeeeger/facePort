.class public final Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedOut()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 8

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/KeyguardBiometricLockoutLogger;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->strongAuthFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onStrongAuthStateChanged() PromptReason "

    const-string v5, " StrongAuth Flag 0x "

    const-string v6, "  -> 0x"

    invoke-static {v1, v4, v5, v2, v6}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->strongAuthFlags:I

    xor-int/2addr v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-nez v4, :cond_1

    if-ne v1, v5, :cond_1

    move v4, v5

    :cond_1
    iput v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->strongAuthFlags:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v1, 0x80

    if-eq v4, v5, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    const/4 v6, 0x4

    if-eq v4, v6, :cond_8

    const/16 v6, 0x8

    if-eq v4, v6, :cond_7

    const/16 v6, 0x10

    if-eq v4, v6, :cond_6

    const/16 v6, 0x20

    if-eq v4, v6, :cond_5

    const/16 v6, 0x40

    if-eq v4, v6, :cond_4

    if-eq v4, v1, :cond_3

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ", 4hr idle timeout"

    invoke-static {v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "8"

    goto :goto_1

    :cond_2
    const-string v4, ""

    goto :goto_1

    :cond_3
    const-string v4, ", 24hr timeout"

    invoke-static {v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "7"

    goto :goto_1

    :cond_4
    const-string v4, "9"

    goto :goto_1

    :cond_5
    const-string v4, "6"

    goto :goto_1

    :cond_6
    const-string v4, ", 72hr timeout"

    invoke-static {v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "5"

    goto :goto_1

    :cond_7
    const-string v4, "4"

    goto :goto_1

    :cond_8
    const-string v4, "3"

    goto :goto_1

    :cond_9
    const-string v4, "2"

    goto :goto_1

    :cond_a
    const-string v4, "1"

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "102"

    const-string v7, "LSE1068"

    invoke-static {v6, v7, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v4, "KeyguardBiometricLockoutLogger"

    invoke-static {v4, v2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    if-eq p1, v2, :cond_c

    return-void

    :cond_c
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    :cond_d
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    sget-object p1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->Companion:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_e

    move p1, v5

    goto :goto_2

    :cond_e
    move p1, v3

    :goto_2
    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    :cond_f
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_10
    and-int/lit16 p1, v2, 0x80

    if-eqz p1, :cond_11

    :goto_3
    move v3, v5

    :cond_11
    if-eqz v3, :cond_12

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    if-nez p1, :cond_12

    sget-object p1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_TIMEOUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V

    :cond_12
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    return-void
.end method
