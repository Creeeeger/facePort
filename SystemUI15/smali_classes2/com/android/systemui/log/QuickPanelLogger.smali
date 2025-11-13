.class public final Lcom/android/systemui/log/QuickPanelLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/log/QuickPanelLoggerHelper;

    invoke-direct {p1}, Lcom/android/systemui/log/QuickPanelLoggerHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    return-void
.end method


# virtual methods
.method public final handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final logPanelState(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->panelStateLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->lastPanelState:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->lastPanelState:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->logBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    const-string p1, " - "

    invoke-static {p0, p1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    const-string v0, "[PANEL_STATE_INFO]"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/log/QuickPanelExternalLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onInterceptTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onInterceptTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
