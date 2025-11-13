.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;->this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;->this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Ljava/lang/Runnable;

    :cond_0
    iput-object v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    :cond_1
    return-void
.end method
