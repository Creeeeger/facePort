.class Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

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

.method public bridge synthetic onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

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

.method public onUserSwitchComplete(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserSwitchComplete user changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmLockscreenUserManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const-string v3, " userID : "

    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$mresetInsignificant(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    return-void
.end method
