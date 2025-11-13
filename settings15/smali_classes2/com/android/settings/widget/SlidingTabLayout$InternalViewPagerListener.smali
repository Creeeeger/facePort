.class public final Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public mScrollState:I

.field public final synthetic this$0:Lcom/android/settings/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SlidingTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    iget-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/android/settings/widget/SlidingTabLayout;->-$$Nest$monViewPagerPageChanged(Lcom/android/settings/widget/SlidingTabLayout;IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    iget-object v1, v0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p1

    iget p0, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/android/settings/widget/SlidingTabLayout;->-$$Nest$monViewPagerPageChanged(Lcom/android/settings/widget/SlidingTabLayout;IF)V

    :cond_0
    iget-object p0, v0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    iget-object v3, v0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
