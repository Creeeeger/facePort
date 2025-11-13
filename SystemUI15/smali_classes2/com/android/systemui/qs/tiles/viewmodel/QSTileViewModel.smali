.class public interface abstract Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract forceUpdate()V
.end method

.method public abstract getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;
.end method

.method public abstract getState()Lkotlinx/coroutines/flow/SharedFlow;
.end method

.method public abstract isAvailable()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V
.end method

.method public abstract onUserChanged(Landroid/os/UserHandle;)V
.end method
