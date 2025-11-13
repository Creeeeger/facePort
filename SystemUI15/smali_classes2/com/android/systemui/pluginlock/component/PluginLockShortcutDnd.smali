.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockShortcutDnd"


# instance fields
.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method

.method private setZenState(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public excute()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutDnd"

    const-string v2, "excute"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->setZenState(I)I

    move-result p0

    const-string v1, "Keyguard"

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0807a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEffectsSupressorChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNextAlarmChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onZenAvailableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onZenChanged(I)V
    .locals 3

    const-string v0, "onZenChanged [zen] "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutDnd"

    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isEnable"

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "get_lockstar_task_shortcut_state"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "arg"

    const-string v2, "Dnd"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setState(Z)V
    .locals 3

    const-string/jumbo v0, "setState [state] "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutDnd"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string v0, "Keyguard"

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
