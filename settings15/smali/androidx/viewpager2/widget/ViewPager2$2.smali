.class public final Landroidx/viewpager2/widget/ViewPager2$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/ViewPager2$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2$2;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestFocus(I)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
