.class public final synthetic Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    iget-object p0, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iget-object p1, p1, Lcom/android/systemui/classifier/HistoryTracker;->mBeliefListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    new-instance p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
