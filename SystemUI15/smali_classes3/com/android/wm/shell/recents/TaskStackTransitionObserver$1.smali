.class public final synthetic Lcom/android/wm/shell/recents/TaskStackTransitionObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/wm/shell/recents/TaskStackTransitionObserver;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/TaskStackTransitionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$1;->$tmp0:Lcom/android/wm/shell/recents/TaskStackTransitionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver$1;->$tmp0:Lcom/android/wm/shell/recents/TaskStackTransitionObserver;

    iget-object v0, p0, Lcom/android/wm/shell/recents/TaskStackTransitionObserver;->transitions:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method
