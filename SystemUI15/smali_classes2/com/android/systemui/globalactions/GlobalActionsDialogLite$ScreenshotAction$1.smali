.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
