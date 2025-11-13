.class public final Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public final mAffordanceControllerList:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mDexWindowDecorViewModelOptional:Ljava/util/Optional;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mSplitScreenControllerOptional:Ljava/util/Optional;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTasks:Landroid/util/SparseArray;

.field public final mWindowDecorViewModelOptional:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 9

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAffordanceControllerList:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDexWindowDecorViewModelOptional:Ljava/util/Optional;

    iput-object p7, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSplitScreenControllerOptional:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final animForAffordance(II)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    if-eqz p1, :cond_f

    iget-object v2, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object p0, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAffordanceControllerList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAffordanceControllerList:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v6, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAffordanceControllerList:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    :goto_0
    if-eqz p0, :cond_f

    iget-object v2, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_f

    if-nez p1, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    and-int/lit8 v3, p2, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->getKeyFrames(FZZ)[Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_3

    :cond_6
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_8

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->getKeyFrames(FZZ)[Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v4

    :goto_3
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_a

    and-int/lit8 p2, p2, 0xc

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_4

    :cond_9
    move p2, v5

    :goto_4
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->getKeyFrames(FZZ)[Landroid/animation/Keyframe;

    move-result-object v4

    goto :goto_5

    :cond_a
    and-int/2addr p2, v0

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1, v5, v5}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->getKeyFrames(FZZ)[Landroid/animation/Keyframe;

    move-result-object v4

    :cond_b
    :goto_5
    if-nez v3, :cond_c

    if-nez v4, :cond_c

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;

    invoke-direct {p2, p0, v2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;-><init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_d

    sget-object p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->X:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v4, :cond_e

    sget-object p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->Y:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;

    invoke-static {p2, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;

    invoke-direct {p2, v2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;-><init>(Landroid/view/SurfaceControl;)V

    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p2, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;

    invoke-direct {p2, p0, v2}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;-><init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_f
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface$2(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final createRestartDialog(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDexWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDexWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Tasks"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findTaskSurface$2(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTaskInfo(I)Landroid/app/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, 0x13d03217a8633a92L

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;-><init>(I)V

    iput-object p2, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iput-object p1, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v2, p1, p2, v1, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    if-nez v2, :cond_3

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Task appeared more than once: #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v3, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDexWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDexWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    iput-object p1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v4, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/graphics/Point;)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_5
    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide v3, 0x24a1d6a3186730c9L    # 3.141437665925951E-132

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface$2(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FullscreenTaskListener:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    const-string v0, "TASK_LISTENER_TYPE_FULLSCREEN"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
