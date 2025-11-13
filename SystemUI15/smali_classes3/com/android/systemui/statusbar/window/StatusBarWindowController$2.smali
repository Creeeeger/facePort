.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;
.super Lcom/android/systemui/animation/DelegateTransitionAnimatorController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-direct {p0, p2}, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public final onTransitionAnimationEnd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :goto_0
    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :goto_0
    return-void
.end method
