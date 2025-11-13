.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getNotificationPanelUnfoldAnimationController()Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    move-result-object p0

    return-object p0
.end method
