.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

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

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->access$setNeedUpdateNext$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    const-string p1, "onKeyguardVisibilityChanged"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_0
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
