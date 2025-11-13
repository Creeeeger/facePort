.class public final Lcom/android/systemui/screenshot/ScreenshotView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissComplete()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->isInstrumenting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    return-void
.end method

.method public final onInteraction()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/TimeoutHandler;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iget v2, p0, Lcom/android/systemui/screenshot/TimeoutHandler;->mDefaultTimeout:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onSwipeDismissInitiated(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method
