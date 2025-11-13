.class public Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinueTransitionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityTransitionCoordinator;


# direct methods
.method protected constructor blacklist <init>(Landroid/app/ActivityTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionCoordinator;

    .line 1036
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 1049
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1050
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 1039
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fputmIsStartingTransition(Landroid/app/ActivityTransitionCoordinator;Z)V

    .line 1040
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fgetmPendingTransition(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;

    move-result-object v0

    .line 1041
    .local v0, "pending":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityTransitionCoordinator;->-$$Nest$fputmPendingTransition(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)V

    .line 1042
    if-eqz v0, :cond_0

    .line 1043
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 1045
    :cond_0
    return-void
.end method
