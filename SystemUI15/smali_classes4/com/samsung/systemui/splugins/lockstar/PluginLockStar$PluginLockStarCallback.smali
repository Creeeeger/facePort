.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0xfa3

    return p0
.end method

.method public isRunningNoNeedUnlockService(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchShortcutApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onChangedLockStarData(ZLandroid/os/Bundle;)V
.end method

.method public abstract onChangedLockStarEnabled(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUpdateModifiers(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
