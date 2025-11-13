.class public interface abstract Lcom/android/systemui/qs/external/CustomTileInterface;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public fireToggleStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract getQsTile()Landroid/service/quicksettings/Tile;
.end method

.method public abstract getTileSpec()Ljava/lang/String;
.end method

.method public abstract getUser()I
.end method

.method public isInitialized()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecActiveTile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lazyInitialize()V
    .locals 0

    return-void
.end method

.method public abstract onDialogHidden()V
.end method

.method public abstract onDialogShown()V
.end method

.method public refreshDetailInfo()V
    .locals 0

    return-void
.end method

.method public refreshMetaInfo()V
    .locals 0

    return-void
.end method

.method public abstract refreshState()V
.end method

.method public setToggleEnabledState(Z)V
    .locals 0

    return-void
.end method

.method public abstract startActivityAndCollapse(Landroid/app/PendingIntent;)V
.end method

.method public abstract startUnlockAndRun()V
.end method

.method public abstract updateTileState(Landroid/service/quicksettings/Tile;I)V
.end method
