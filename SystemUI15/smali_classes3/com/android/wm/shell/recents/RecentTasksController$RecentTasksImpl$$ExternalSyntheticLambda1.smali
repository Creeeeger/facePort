.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/concurrent/Executor;

.field public final synthetic f$5:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;ILjava/util/concurrent/Executor;Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$1:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$2:I

    iput p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$3:I

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$4:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$5:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iget v1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$4:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1;->f$5:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/recents/RecentTasksController;->getRecentTasks(III)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda2;

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider$getTasks$2$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
