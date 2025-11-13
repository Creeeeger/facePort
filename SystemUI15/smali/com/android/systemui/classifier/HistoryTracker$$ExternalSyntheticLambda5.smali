.class public final synthetic Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/HistoryTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/HistoryTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/classifier/HistoryTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/classifier/HistoryTracker;

    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    move-result-wide v0

    iget-object p0, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    sget-boolean p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
