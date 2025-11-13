.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockShortcutFlashLight"


# instance fields
.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutFlashLight"

    const-string v2, "excute()"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p0

    const-string v0, "isEnabled [isEnabled] "

    invoke-static {v0, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 3

    const-string v0, "onFlashlightChanged [enabled] "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "get_lockstar_task_shortcut_state"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "arg"

    const-string v2, "Flashlight"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extras"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFlashlightError()V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setState(Z)V
    .locals 3

    const-string/jumbo v0, "setState [state] "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method
