.class public final Lcom/android/wm/shell/recents/TaskStackTransitionObserver$notifyTaskStackTransitionObserverListeners$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener:Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$notifyTaskStackTransitionObserverListeners$1$1;->$listener:Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$notifyTaskStackTransitionObserverListeners$1$1;->$listener:Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/window/flags/Flags;->enableTaskStackObserverInShell()Z

    :cond_0
    return-void
.end method
