.class public interface abstract Lcom/android/systemui/settings/UserTracker$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public onBeforeUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onProfilesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onUserChanging(I)V
    .locals 0

    return-void
.end method

.method public onUserChanging(ILandroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/UserTracker$Callback;->onUserChanging(I)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
