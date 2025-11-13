.class public final Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# static fields
.field public static final FLOAT_9:[F

.field public static final RECT_EVALUATOR:Landroid/animation/TypeEvaluator;


# instance fields
.field public final mAnimationContextByTaskId:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

.field public final mMainStageBounds:Landroid/graphics/Rect;

.field public mMainStagePosition:I

.field public final mRootStageBounds:Landroid/graphics/Rect;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSideStageBounds:Landroid/graphics/Rect;

.field public mSideStagePosition:I

.field public final mSplitScreenController:Ldagger/Lazy;

.field public final mUnfoldAnimation:Landroid/view/animation/Animation;

.field public final mUnfoldBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

.field public mWindowCornerRadiusPx:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->RECT_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->FLOAT_9:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldagger/Lazy;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStageBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStageBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    iput v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    iput-object p6, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p5, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iput-object p3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSplitScreenController:Ldagger/Lazy;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mWindowCornerRadiusPx:F

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldAnimation:Landroid/view/animation/Animation;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldAnimation:Landroid/view/animation/Animation;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, v3}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->FLOAT_9:[F

    invoke-virtual {p2, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->RECT_EVALUATOR:Landroid/animation/TypeEvaluator;

    iget-object v4, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-interface {v3, p1, v4, v5}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mWindowCornerRadiusPx:F

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final clearTasks()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final hasActiveTasks()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final init()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    return-void
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->updateContexts()V

    return-void
.end method

.method public final isApplicableTask(Landroid/app/TaskInfo;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSplitScreenController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRoot(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/TaskInfo;->hasParentTask()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const-string p1, "SplitTaskUnfoldAnimator#onConfigurationChanged"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mWindowCornerRadiusPx:F

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->updateContexts()V

    return-void
.end method

.method public final onSplitScreenTransitionMerged(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSplitScreenController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSplitScreenTransitionMerged: t="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitTaskUnfoldAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateSplitScreenSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method

.method public final onSplitVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iput-boolean p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mSplitScreenVisible:Z

    return-void
.end method

.method public final onStagePositionChanged(II)V
    .locals 0

    if-nez p1, :cond_0

    iput p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->updateContexts()V

    return-void
.end method

.method public final onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;-><init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;I)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onTaskStageChanged(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    if-eqz p0, :cond_0

    iput p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    :cond_0
    return-void
.end method

.method public final onTaskVanished(Landroid/app/TaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->mBackgroundLayer:Landroid/view/SurfaceControl;

    :goto_0
    return-void
.end method

.method public final prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->ensureBackground(Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    iget-object v2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mUnfoldAnimation:Landroid/view/animation/Animation;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->FLOAT_9:[F

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSplitScreenController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;Ljava/util/concurrent/Executor;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSplitScreenController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Ljava/lang/Object;I)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateContexts()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;

    invoke-virtual {v1}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
