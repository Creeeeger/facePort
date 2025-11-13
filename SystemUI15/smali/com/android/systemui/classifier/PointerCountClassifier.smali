.class public final Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mMaxPointerCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 4

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    if-le p1, v0, :cond_2

    const-string/jumbo v1, "{pointersObserved="

    const-string v2, ", threshold="

    const-string/jumbo v3, "}"

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    :goto_0
    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mMaxPointerCount:I

    if-eq v0, p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    :cond_1
    return-void
.end method
