.class public abstract Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mBoundsChangeAnimation:Landroid/view/animation/Animation;

.field public mChange:Landroid/window/TransitionInfo$Change;

.field public mContext:Landroid/content/Context;

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mDurationScale:F

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mEndOutsets:Landroid/graphics/Rect;

.field public final mRootOffsets:Landroid/graphics/Point;

.field public mSnapshotAnimation:Landroid/view/animation/Animation;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mStartOutsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartOutsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndOutsets:Landroid/graphics/Rect;

    return-void
.end method

.method public static dipToPixel(ILandroid/content/Context;)I
    .locals 1

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public abstract createBoundsChangeAnimation()Landroid/view/animation/Animation;
.end method

.method public abstract createSnapshotAnimation()Landroid/view/animation/Animation;
.end method

.method public getAnimationDuration()J
    .locals 2

    iget p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0
.end method

.method public final getDisplayFrame()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isRootOffsetNeeded()Z
    .locals 0

    instance-of p0, p0, Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;

    return p0
.end method

.method public reduceDurationScaleIfNeeded(Landroid/window/TransitionInfo;)V
    .locals 0

    return-void
.end method

.method public abstract setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mBoundsChangeAnimation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapshotAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mSnapshotAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDurationScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEndBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->isRootOffsetNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", mRootOffsets="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
