.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    const-string v1, "onDozingChanged "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final onExpandedChanged(Z)V
    .locals 2

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAmountResetWhenFullyCollapsed()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseHeightNotResetWhenFullyCollapsed()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    const-string v0, "onStateChanged SHADE and notify onExpansionFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->onExpansionFinished()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
