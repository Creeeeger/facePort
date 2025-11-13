.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $activities:Ljava/util/List;

.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic $showFullScreen:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;ZLandroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;",
            "Z",
            "Landroid/app/PendingIntent;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$activities:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$showFullScreen:Z

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$activities:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->taskViewFactory:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$showFullScreen:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "makeValid: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ControlsUiController"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->taskViewFactory:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v2, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {v3, v1, v4, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :cond_3
    :goto_0
    return-void
.end method
