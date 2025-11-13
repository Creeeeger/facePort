.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Landroid/app/IApplicationThread;

.field public final synthetic f$4:Landroid/view/IRecentsAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$3:Landroid/app/IApplicationThread;

    iput-object p5, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$4:Landroid/view/IRecentsAnimationRunner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$3:Landroid/app/IApplicationThread;

    iget-object v5, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;->f$4:Landroid/view/IRecentsAnimationRunner;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)Landroid/os/IBinder;

    return-void
.end method
