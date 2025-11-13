.class public final Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mAnimationCounter:I

.field public mAnimationEndAction:Ljava/lang/Runnable;

.field public mContext:Landroid/content/Context;

.field public mPreviewFrames:[Landroid/widget/FrameLayout;

.field public mViewStubInflated:[[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p0, p0

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p2

    const v2, 0x7f0a0d79

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f070bda

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070bd9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mScrollbarTopPadding:I

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mScrollbarBottomPadding:I

    invoke-static {v1, v0}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarTopPadding(Landroid/view/View;I)V

    iget v0, v1, Landroidx/core/widget/NestedScrollView;->mScrollbarBottomPadding:I

    invoke-static {v1, v0}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarBottomPadding(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object p0, p0, p2

    return-object p0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setVisibility$1(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
