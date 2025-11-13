.class public final Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;
.super Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field public final flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final name:Ljava/lang/String;

.field public final pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const-string p1, "Flashlight"

    iput-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "execute() to "

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 2

    const-string v0, "onFlashlightChanged [enabled] "

    const-string v1, "PluginLockShortcutFlashLight"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const-string v0, "Flashlight"

    invoke-interface {p0, v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onChangedNoNeedUnlockServiceState(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onFlashlightError()V
    .locals 0

    return-void
.end method

.method public final terminate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
