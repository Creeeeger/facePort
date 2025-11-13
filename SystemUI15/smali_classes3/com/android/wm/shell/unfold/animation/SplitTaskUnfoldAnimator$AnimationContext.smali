.class public final Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public mStageType:I

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public final mTransformation:Landroid/view/animation/Transformation;

.field public final synthetic this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    new-instance p1, Landroid/view/animation/Transformation;

    invoke-direct {p1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mTransformation:Landroid/view/animation/Transformation;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;-><init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStageBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStageBounds:Landroid/graphics/Rect;

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_6

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iget v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    if-nez v4, :cond_4

    iget v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    goto :goto_3

    :cond_4
    iget v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    :goto_3
    if-nez v1, :cond_5

    move v1, v2

    move v2, v0

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_4
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_7

    :cond_6
    iget v4, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    if-nez v4, :cond_7

    iget v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    goto :goto_5

    :cond_7
    iget v1, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    :goto_5
    if-nez v1, :cond_8

    move v1, v2

    move v2, v0

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_6

    :cond_9
    move v1, v0

    :goto_6
    invoke-static {v0, v2, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    :goto_7
    iget-object p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method
