.class public final Lcom/android/keyguard/KeyguardBiometricLockoutLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final Companion:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;


# instance fields
.field public encryptedOrLockdown:Z

.field public faceLockedOut:Z

.field public fingerprintLockedOut:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final sessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public strongAuthFlags:I

.field public timeout:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public unattendedUpdate:Z

.field public final viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->Companion:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->viewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public static final access$log(Lcom/android/keyguard/KeyguardBiometricLockoutLogger;Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->fingerprintLockedOut:Z

    const-string v0, "  mFingerprintLockedOut="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->faceLockedOut:Z

    const-string v0, "  mFaceLockedOut="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->encryptedOrLockdown:Z

    const-string v0, "  mIsEncryptedOrLockdown="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->unattendedUpdate:Z

    const-string v0, "  mIsUnattendedUpdate="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->timeout:Z

    const-string p2, "  mIsTimeout="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
