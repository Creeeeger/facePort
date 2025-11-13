.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    iget-object p0, p1, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mWakingUpFromSwipe:Z

    return-void
.end method
