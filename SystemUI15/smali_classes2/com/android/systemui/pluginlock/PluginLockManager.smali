.class public interface abstract Lcom/android/systemui/pluginlock/PluginLockManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getDynamicLockData()Ljava/lang/String;
.end method

.method public abstract getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
.end method

.method public abstract getShortcutTaskState(Ljava/lang/String;)Z
.end method

.method public abstract onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onFolderStateChanged(Z)V
.end method

.method public abstract registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract removeShortcutTaskListener()V
.end method

.method public abstract removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract updateShortcutTaskState(Ljava/lang/String;)V
.end method
