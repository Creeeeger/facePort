.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p0, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
