.class public interface abstract Lcom/android/systemui/plugins/qs/LockQSTile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public abstract click()V
.end method

.method public getNextTileIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getState()Lcom/android/systemui/plugins/qs/QSTile$State;
.end method

.method public abstract getTileIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public abstract setListening(Ljava/lang/Object;Z)V
.end method
