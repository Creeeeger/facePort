.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

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
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getColorUpdateLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewConfigCoordinator.onUserSwitchComplete(userId="

    const-string v1, ")"

    const-string v2, "ViewConfigCoordinator"

    invoke-static {p1, v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$setMIsSwitchingUser$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$applyChangesOnUserSwitched(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getColorUpdateLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewConfigCoordinator.onUserSwitching(userId="

    const-string v1, ")"

    const-string v2, "ViewConfigCoordinator"

    invoke-static {p1, v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$setMIsSwitchingUser$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Z)V

    return-void
.end method
