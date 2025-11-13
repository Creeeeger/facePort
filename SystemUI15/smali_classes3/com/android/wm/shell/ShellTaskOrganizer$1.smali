.class Lcom/android/wm/shell/ShellTaskOrganizer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDismissingSplitTask(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
