.class public final synthetic Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final synthetic f$2:Ljava/util/Optional;

.field public final synthetic f$3:Ljava/util/Optional;

.field public final synthetic f$4:Ljava/util/Optional;

.field public final synthetic f$5:Ljava/util/Optional;

.field public final synthetic f$6:Ljava/util/Optional;

.field public final synthetic f$7:Lcom/android/wm/shell/taskview/TaskViewTransitions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/pip/PipTransitionController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/PipTransitionController;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$2:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$3:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$4:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$5:Ljava/util/Optional;

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$6:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$2:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$3:Ljava/util/Optional;

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$4:Ljava/util/Optional;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$5:Ljava/util/Optional;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$6:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iput-object v0, v1, Lcom/android/wm/shell/pip/PipTransitionController;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v1, :cond_0

    iput-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iput-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v6, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    iput-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz p0, :cond_2

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    :cond_2
    return-void
.end method
