.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $container:Landroid/widget/FrameLayout;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;-><init>(Landroid/widget/FrameLayout;Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p0, "SecControlsUiControllerImpl"

    const-string v0, "onPanelUpdated activityContext or onDismiss is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
