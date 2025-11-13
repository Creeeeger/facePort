.class public final synthetic Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingClassifier;

    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/FalsingClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/classifier/FalsingDataProvider;

    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputEvent;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object p0, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;->this$0:Lcom/android/systemui/classifier/BrightLineFalsingManager;

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iget-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v4, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-object v4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    new-instance v5, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    new-instance v5, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    iget v6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v5, p1, v6, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;-><init>(ZILjava/util/List;)V

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p1

    const-wide/16 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    if-eqz p0, :cond_3

    const-wide p0, 0x3fe6666666666666L    # 0.7

    goto :goto_1

    :cond_3
    const-wide p0, 0x3fe999999999999aL    # 0.8

    :goto_1
    const-class v3, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unclassified"

    invoke-static {p0, p1, v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
