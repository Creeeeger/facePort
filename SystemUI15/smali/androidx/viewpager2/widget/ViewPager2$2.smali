.class public final Landroidx/viewpager2/widget/ViewPager2$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    :cond_0
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollState:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollState:I

    :cond_1
    iget-boolean v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mIsSuggestionPagingEnabled:Z

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mContainerScaleValue:F

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    const v2, 0x3f733333    # 0.95f

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSuggestionStartDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    :cond_0
    return-void
.end method
