.class public final Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# static fields
.field public static final FLOAT_9:[F

.field public static final RECT_EVALUATOR:Landroid/animation/TypeEvaluator;


# instance fields
.field public final mAnimationContextByTaskId:Landroid/util/SparseArray;

.field public final mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public mWindowCornerRadiusPx:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->FLOAT_9:[F

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->RECT_EVALUATOR:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iput-object p3, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mWindowCornerRadiusPx:F

    return-void
.end method

.method public static resetSurface(Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->RECT_EVALUATOR:Landroid/animation/TypeEvaluator;

    iget-object v4, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-interface {v3, p1, v4, v5}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const v2, 0x3f70a3d7    # 0.94f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    iget-object v5, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v2, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mMatrix:Landroid/graphics/Matrix;

    sget-object v5, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->FLOAT_9:[F

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mWindowCornerRadiusPx:F

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearTasks()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final hasActiveTasks()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

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

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

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
    iput-object v1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    iget-object v2, v0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final isApplicableTask(Landroid/app/TaskInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/TaskInfo;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const-string p1, "FullscreenUnfoldTaskAnimator#onConfigurationChanged"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mWindowCornerRadiusPx:F

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V
    .locals 7

    new-instance v6, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    iget-object v3, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;-><init>(Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Landroid/view/SurfaceControl;Landroid/view/InsetsSource;Landroid/app/TaskInfo;I)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onTaskChanged(Landroid/app/TaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;->update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    :cond_0
    return-void
.end method

.method public final onTaskVanished(Landroid/app/TaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

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
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->ensureBackground(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    invoke-static {v1, p1}, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->resetSurface(Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;->resetSurface(Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator$AnimationContext;Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method
