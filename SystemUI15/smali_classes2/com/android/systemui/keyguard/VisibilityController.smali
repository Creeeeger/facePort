.class public interface abstract Lcom/android/systemui/keyguard/VisibilityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract invalidate()V
.end method

.method public needToBeInvisibleWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract resetForceInvisible(Z)V
.end method

.method public abstract setForceInvisible(Landroid/view/SurfaceControl$Transaction;)Z
.end method
