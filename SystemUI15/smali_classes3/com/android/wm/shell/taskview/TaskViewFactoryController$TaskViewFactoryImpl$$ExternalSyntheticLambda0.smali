.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    iget-object v7, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/wm/shell/taskview/TaskView;

    new-instance v10, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v3, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v5, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/taskview/TaskViewTaskController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Z)V

    invoke-direct {v9, v7, v10}, Lcom/android/wm/shell/taskview/TaskView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v9}, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/taskview/TaskView;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
