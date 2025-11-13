.class public Lcom/android/systemui/pluginlock/DisabledPluginLockManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "## DisabledPluginLockManager ##, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisabledPluginLockManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutTaskState(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    return-void
.end method

.method public removeShortcutTaskListener()V
    .locals 0

    return-void
.end method

.method public removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    return-void
.end method

.method public updateShortcutTaskState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
