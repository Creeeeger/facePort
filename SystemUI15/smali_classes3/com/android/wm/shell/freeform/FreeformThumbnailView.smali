.class public Lcom/android/wm/shell/freeform/FreeformThumbnailView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAirViewMargin:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public mHeight:I

.field public mImageView:Landroid/widget/ImageView;

.field public mMargin:I

.field public mMaxSize:I

.field public mOrientation:I

.field public final mPivot:Landroid/graphics/Point;

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mView:Landroid/widget/FrameLayout;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final computeInset()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getOverrideStableInsets(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    if-ge v1, p0, :cond_0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, p0, :cond_2

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    if-ge v1, p0, :cond_2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->computeInset()V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a047f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a047e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMaxSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mAirViewMargin:I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->computeInset()V

    return-void
.end method

.method public final scheduleAnimation(Z)V
    .locals 11

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v0

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mPivot:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v3

    move-object v3, v10

    move v4, v6

    move v5, v7

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    :goto_1
    invoke-virtual {v10, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x15e

    :cond_2
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformThumbnailView;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
