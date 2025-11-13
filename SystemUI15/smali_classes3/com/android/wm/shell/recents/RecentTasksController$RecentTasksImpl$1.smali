.class public final Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/recents/RecentsTransitionStateListener;


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/Executor;

.field public final synthetic val$listener:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;->val$listener:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1;->val$listener:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
