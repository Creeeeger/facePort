.class public final Lcom/android/settings/display/PreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mIsLayoutRtl:Z

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

    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p0, p0

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

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

.method public final setPreviewLayer(III)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    if-ltz p2, :cond_1

    invoke-virtual {v4, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aget-object v7, v5, p3

    aget-boolean v7, v7, p2

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    const/4 v8, 0x4

    if-ne v4, v7, :cond_0

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v6, v8}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;I)V

    :cond_1
    :goto_1
    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    if-ne v4, v7, :cond_3

    aget-object v4, v5, p3

    aget-boolean v4, v4, p1

    if-nez v4, :cond_2

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0, v6, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v6, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setVisibility(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final setVisibility(Landroid/view/View;I)V
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
