.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChildCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getNodeLabel()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract offerToKeepInParentForAnimation()Z
.end method

.method public onViewAdded()V
    .locals 0

    return-void
.end method

.method public onViewRemoved()V
    .locals 0

    return-void
.end method

.method public removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract removeFromParentIfKeptForAnimation()Z
.end method

.method public abstract resetKeepInParentForAnimation()V
.end method
