.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final greylist-max-o EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final greylist-max-o EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"

.field private static final blacklist PENDING_EXIT_SHARED_ELEMENTS:Ljava/lang/String; = "android:pendingExitSharedElements"


# instance fields
.field private greylist-max-o mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private blacklist mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private greylist-max-o mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private greylist-max-o mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitTransitionCoordinatorsKey:I

.field private greylist-max-o mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasExited:Z

.field private greylist-max-o mIsEnterPostponed:Z

.field private greylist-max-o mIsEnterTriggered:Z

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public static synthetic blacklist $r8$lambda$v-gJDskuJB_atXUKetS9hEMmyUI(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionState;->lambda$startExitBackTransition$0(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPendingExitNames(Landroid/app/ActivityTransitionState;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreExitedViews(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreReenteringViews(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    return-void
.end method

.method private blacklist getPendingExitNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getPendingExitSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private synthetic blacklist lambda$startExitBackTransition$0(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o restoreExitedViews()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    :cond_0
    return-void
.end method

.method private greylist-max-o restoreReenteringViews()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private greylist-max-o startEnter()V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    :goto_0
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    return-void
.end method


# virtual methods
.method public greylist-max-o addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v1
.end method

.method public greylist-max-o clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    return-void
.end method

.method public greylist-max-o enterReady(Landroid/app/Activity;)V
    .locals 10

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v8

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    new-instance v0, Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v6

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    :cond_2
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityTransitionState$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    :goto_1
    return-void
.end method

.method public blacklist onStop(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->stop(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    :cond_1
    return-void
.end method

.method public greylist-max-o postponeEnterTransition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    return-void
.end method

.method public greylist-max-o readState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "android:pendingExitSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_2

    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public greylist-max-o saveState(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:pendingExitSharedElements"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const-string v1, "android:exitingMappedFrom"

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "android:exitingMappedTo"

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public blacklist setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v1, :cond_2

    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultData()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public greylist-max-o startExitBackTransition(Landroid/app/Activity;)Z
    .locals 14

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v9, 0x1

    if-nez v0, :cond_5

    iput-boolean v9, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    move-result v2

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    :cond_1
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    goto :goto_0

    :cond_2
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    :goto_0
    new-instance v13, Landroid/app/ExitTransitionCoordinator;

    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p1}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v0, v13

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v13, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v10, v11}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    :cond_3
    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    move-object v0, v11

    new-instance v1, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    invoke-static {v11, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    :cond_5
    :goto_1
    return v9

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getExitCoordinatorKey()I

    move-result v2

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ExitTransitionCoordinator;

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o startPostponedEnterTransition()V
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    :cond_0
    return-void
.end method
