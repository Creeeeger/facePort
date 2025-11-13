.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $container:Landroid/widget/FrameLayout;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/wm/shell/taskview/TaskView;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    new-instance v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v1, v6, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1$1;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1$1;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/PanelTaskViewController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->uiExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    iget-object v0, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    iput-object v7, v6, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p0, "SecControlsUiControllerImpl"

    const-string p1, "onPanelUpdated taskViewFactory.create activityContext or onDismiss is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
