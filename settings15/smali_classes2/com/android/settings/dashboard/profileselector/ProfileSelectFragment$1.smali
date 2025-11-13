.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length v1, v0

    if-gt v1, p1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
