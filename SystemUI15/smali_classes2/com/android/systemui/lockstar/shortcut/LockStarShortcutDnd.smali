.class public final Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;
.super Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final name:Ljava/lang/String;

.field public final pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object p3, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string p2, "Dnd"

    iput-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->name:Ljava/lang/String;

    const p0, 0x7f130b18

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "execute to "

    const-string v2, "PluginLockShortcutDnd"

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string v0, "Keyguard"

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onZenChanged(I)V
    .locals 2

    const-string v0, "onZenChanged [zen] "

    const-string v1, "PluginLockShortcutDnd"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->pluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "Dnd"

    invoke-interface {p1, p0, v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onChangedNoNeedUnlockServiceState(Ljava/lang/String;Z)V

    return-void
.end method

.method public final terminate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
