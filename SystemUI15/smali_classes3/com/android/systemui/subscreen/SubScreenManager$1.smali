.class Lcom/android/systemui/subscreen/SubScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onBiometricAuthFailed() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBiometricAuthFailed() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricAuthFailed(I)V

    :goto_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onBiometricAuthenticated() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBiometricAuthenticated() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricAuthenticated(IIZ)V

    :goto_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onBiometricError() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBiometricError() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricError(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onBiometricHelp() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBiometricHelp() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricHelp(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onBiometricRunningStateChanged() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBiometricRunningStateChanged() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricRunningStateChanged(ZI)V

    :goto_0
    return-void
.end method

.method public final onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onDualDARInnerLockscreenRequirementChanged() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "onDualDARInnerLockscreenRequirementChanged() "

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDualDARInnerLockscreenRequirementChanged(Z)V

    :goto_0
    return-void
.end method

.method public final onLockDisabledChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onLockDisabledChanged() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "onLockDisabledChanged() "

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onLockDisabledChanged(Z)V

    :goto_0
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onPackageAdded() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageAdded(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onPackageChanged() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onPackageDataCleared() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageDataCleared(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onPackageRemoved() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageRemoved(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/subscreen/SubScreenManager$9;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v2, "SubScreenManager"

    if-nez v0, :cond_1

    const-string p0, "onFullscreenBouncerChanged() no plugin"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "onFullscreenBouncerChanged() "

    const-string v3, " "

    invoke-static {v0, v3, v2, p1, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFullscreenBouncerChanged(ZZ)V

    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener$1()V

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onUserUnlocked() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "onUserUnlocked() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onUserUnlocked()V

    :goto_0
    return-void
.end method
