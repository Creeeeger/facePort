.class public final Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

.field public final header:Ljava/lang/String;

.field public final logBuilder:Ljava/lang/StringBuilder;

.field public moveEventAllowed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/log/QuickPanelExternalLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->header:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->logBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final getToAction(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 3

    const-string v0, "dispatchTouchEvent"

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->header:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, "onInterceptTouchEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " | x:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-static {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->moveEventAllowed:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->moveEventAllowed:Z

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->getToAction(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    iget-object p1, p0, Lcom/android/systemui/log/QuickPanelExternalLogger;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[TOUCH]"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/log/QuickPanelExternalLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->header:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->getToAction(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "return: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    iget-object p1, p0, Lcom/android/systemui/log/QuickPanelExternalLogger;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[TOUCH]"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/log/QuickPanelExternalLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
