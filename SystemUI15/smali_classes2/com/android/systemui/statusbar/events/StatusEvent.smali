.class public interface abstract Lcom/android/systemui/statusbar/events/StatusEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getForceVisible()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getShowAnimation()Z
.end method

.method public abstract getViewCreator()Lkotlin/jvm/functions/Function1;
.end method

.method public abstract setForceVisible()V
.end method

.method public shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    return-void
.end method
