.class public final Lcom/android/systemui/classifier/FalsingCollectorNoOp;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingCollector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final avoidGesture()V
    .locals 0

    const-string p0, "NOOP: avoidGesture"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final init()V
    .locals 0

    const-string p0, "NOOP: init"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onA11yAction()V
    .locals 0

    const-string p0, "NOOP: onA11yAction"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onBouncerHidden()V
    .locals 0

    const-string p0, "NOOP: onBouncerHidden"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NOOP: onKeyEvent("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onMotionEventComplete()V
    .locals 0

    const-string p0, "NOOP: onMotionEventComplete"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onScreenOff()V
    .locals 0

    const-string p0, "NOOP: onScreenOff"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onScreenOnFromTouch()V
    .locals 0

    const-string p0, "NOOP: onScreenOnFromTouch"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 0

    const-string p0, "NOOP: onScreenTurningOn"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccessfulUnlock()V
    .locals 0

    const-string p0, "NOOP: onSuccessfulUnlock"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NOOP: onTouchEvent("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final setShowingAod(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NOOP: setShowingAod("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NOOP: updateFalseConfidence("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method
