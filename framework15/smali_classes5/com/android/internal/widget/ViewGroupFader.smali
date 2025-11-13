.class Lcom/android/internal/widget/ViewGroupFader;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;,
        Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$DefaultViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ParentContainerBoundsProvider;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_LOWER_BOUND:F = 0.5f

.field private static final blacklist CHAINED_BOUNDS_BOTTOM_FRACTION:F = 0.2f

.field private static final blacklist CHAINED_BOUNDS_TOP_FRACTION:F = 0.6f

.field private static final blacklist CHAINED_LOWER_REGION_FRACTION:F = 0.35f

.field private static final blacklist CHAINED_UPPER_REGION_FRACTION:F = 0.55f

.field private static final blacklist SCALE_LOWER_BOUND:F = 0.7f


# instance fields
.field private blacklist mAlphaLowerBound:F

.field private blacklist mBottomBoundPixels:F

.field private blacklist mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

.field private final blacklist mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

.field private blacklist mChainedBoundsBottom:F

.field private blacklist mChainedBoundsTop:F

.field private blacklist mChainedLowerRegion:F

.field private blacklist mChainedUpperRegion:F

.field private final blacklist mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

.field private final blacklist mContainerBounds:Landroid/graphics/Rect;

.field private blacklist mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

.field private final blacklist mOffsetViewBounds:Landroid/graphics/Rect;

.field protected final blacklist mParent:Landroid/view/ViewGroup;

.field private blacklist mScaleLowerBound:F

.field private blacklist mTopBoundPixels:F

.field private blacklist mTopInterpolator:Landroid/view/animation/BaseInterpolator;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    iput-object p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    new-instance v0, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    return-void
.end method

.method private blacklist fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V

    return-void
.end method

.method private static blacklist lerp(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private blacklist scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    iget v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    invoke-static {v2, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private blacklist setDefaultSizeAndAlphaForView(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private blacklist setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    sub-float v3, p3, p4

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v6, v3, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromBottom(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v7, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_2

    :cond_3
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v2, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromTop(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->viewHasBecomeFullSize(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewGroupFader;->setDefaultSizeAndAlphaForView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private blacklist updateListElementFades(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ViewGroupFader;->fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method blacklist getAnimationCallback()Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    return-object v0
.end method

.method blacklist setAlphaLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    return-void
.end method

.method blacklist setBottomInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method blacklist setContainerBoundsProvider(Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    return-void
.end method

.method blacklist setScaleLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    return-void
.end method

.method blacklist setTopInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method blacklist updateFade()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    return-void
.end method
