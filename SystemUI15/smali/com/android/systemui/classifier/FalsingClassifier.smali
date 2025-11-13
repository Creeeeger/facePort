.class public abstract Lcom/android/systemui/classifier/FalsingClassifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public final mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingClassifier;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
.end method

.method public final falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0, p3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public final isRight()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final isUp()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mFirstRecentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 0

    return-void
.end method

.method public onSessionEnded()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
