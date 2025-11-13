.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    :cond_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    :cond_0
    return-void
.end method

.method public final onDeviceProvisioned()V
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    if-eqz p1, :cond_0

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v1, "PIN lock requested, starting keyguard"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSimStateChanged(III)V
    .locals 6

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "onSimStateChanged(subId="

    const-string v2, ", slotId="

    const-string v3, ",state="

    invoke-static {p1, p2, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-static {p1, p3, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SafeUIKeyguardViewMediator"

    const-string v4, "Failed to call onSimSecureStateChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, p3}, Landroid/util/SparseIntArray;->append(II)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 p1, 0x0

    if-eqz p3, :cond_a

    if-eq p3, v1, :cond_a

    if-eq p3, v3, :cond_8

    if-eq p3, v2, :cond_8

    const/4 v2, 0x5

    if-eq p3, v2, :cond_6

    const/4 v2, 0x6

    if-eq p3, v2, :cond_a

    const/4 p2, 0x7

    if-eq p3, p2, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v2

    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean p2, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-nez p2, :cond_5

    const-string p2, "SafeUIKeyguardViewMediator"

    const-string p3, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    const-string p1, "SafeUIKeyguardViewMediator"

    const-string p2, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    :goto_4
    monitor-exit v2

    goto/16 :goto_b

    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter p3

    :try_start_3
    const-string p1, "SafeUIKeyguardViewMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READY, reset state? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string v0, "SIM moved to READY when the previously was locked. Reset the state."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_7
    :goto_6
    monitor-exit p3

    goto :goto_b

    :goto_7
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v2

    :try_start_4
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p3, p3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p2, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-boolean v1, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    iget-boolean p3, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-nez p3, :cond_9

    const-string p2, "SafeUIKeyguardViewMediator"

    const-string p3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_9

    :cond_9
    invoke-virtual {p2, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    :goto_8
    monitor-exit v2

    goto :goto_b

    :goto_9
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-boolean v4, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v5, v3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    if-nez v5, :cond_b

    const-string v3, "SafeUIKeyguardViewMediator"

    const-string v5, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {v3, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_a

    :catchall_3
    move-exception p0

    goto :goto_c

    :cond_b
    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    :cond_c
    :goto_a
    if-ne p3, v1, :cond_e

    if-eqz v0, :cond_d

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string p3, "SIM moved to ABSENT when the previous state was locked. Reset the state."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetStateLocked(Z)V

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_e
    monitor-exit v2

    :goto_b
    return-void

    :goto_c
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onUserSwitchComplete %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SafeUIKeyguardViewMediator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$12;

    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "onUserSwitching %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/systemui/Flags;->refactorGetCurrentUser()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    sget-object v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
