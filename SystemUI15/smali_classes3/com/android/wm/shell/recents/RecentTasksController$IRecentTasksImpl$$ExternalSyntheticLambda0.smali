.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[[Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([[Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;->f$0:[[Landroid/app/ActivityManager$RunningTaskInfo;

    iput p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;->f$0:[[Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array v1, p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RunningTaskInfo;

    aput-object p0, v0, p1

    return-void
.end method
