.class public final synthetic Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/recents/IRecentTasksListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/recents/IRecentTasksListener;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object p1, v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    return-void
.end method
