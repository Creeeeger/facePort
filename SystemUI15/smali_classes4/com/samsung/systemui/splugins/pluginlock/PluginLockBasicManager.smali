.class public interface abstract Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getMode()I
.end method

.method public abstract getServiceType()I
.end method

.method public abstract hasBackupWallpaper(I)Z
.end method

.method public abstract isTouchConsumablePosition(FF)Z
.end method

.method public abstract onAodTransitionEnd()V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onEventReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onFolderStateChanged(Z)V
.end method

.method public abstract onFolderStateChanged(ZZ)V
.end method

.method public abstract onLocaleChanged()V
.end method

.method public abstract onLockWallpaperChanged(I)V
.end method

.method public abstract onNowBarItemExpanded(Z)V
.end method

.method public abstract onPluginLockModeChanged(IZ)V
.end method

.method public abstract onPluginLockModeChanged(Z)V
.end method

.method public onSemBackupStatusChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onStartedGoingToSleep(Z)V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onWallpaperConsumed(IZ)V
.end method

.method public abstract reset()V
.end method

.method public abstract setAllowedNumber(I)V
.end method

.method public abstract setBarState(I)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V
.end method

.method public abstract setPanelView(Landroid/view/ViewGroup;)V
.end method

.method public abstract setQsExpansion(F)V
.end method

.method public abstract updateWhiteWallpaperState(Z)V
.end method
