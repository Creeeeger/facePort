.class public interface abstract Lcom/android/systemui/statusbar/StatusIconDisplayable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# virtual methods
.method public abstract getSlot()Ljava/lang/String;
.end method

.method public abstract getVisibleState()I
.end method

.method public isIconBlocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isIconVisible()Z
.end method

.method public abstract setDecorColor(I)V
.end method

.method public abstract setStaticDrawableColor(I)V
.end method

.method public setStaticDrawableColor(II)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    return-void
.end method

.method public setVisibleState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    return-void
.end method

.method public abstract setVisibleState(IZ)V
.end method
