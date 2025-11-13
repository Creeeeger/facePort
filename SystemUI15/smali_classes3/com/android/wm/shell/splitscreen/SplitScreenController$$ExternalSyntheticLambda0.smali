.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/window/WindowContainerToken;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;ILandroid/window/WindowContainerToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerToken;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerToken;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const v4, 0x7fffffff

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5, v3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-boolean v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    if-ne v1, v5, :cond_3

    move-object v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v2
.end method
