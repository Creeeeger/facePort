.class Lcom/android/systemui/util/DesktopManagerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mTrustEnabled:Z

.field private mUserId:I

.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onBiometricLockoutChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDlsViewModeChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEmergencyStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFaceWidgetFullscreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFailedUnlockAttemptChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOfflineStateChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOwnerInfoChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRemoteLockInfoChanged()V
    .locals 0

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSimulationFailToUnlock(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSystemDialogsShowing()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mTrustEnabled:Z

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    if-ne v2, p1, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mTrustEnabled:Z

    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->mUserId:I

    iget-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyTrustChanged(IZ)V

    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->-$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$2;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyShowKeyguard()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onUSBRestrictionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUdfpsFingerDown()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUdfpsFingerUp()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUnlocking()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method
