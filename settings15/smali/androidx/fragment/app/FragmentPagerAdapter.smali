.class public abstract Landroidx/fragment/app/FragmentPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBehavior:I

.field public mCurTransaction:Landroidx/fragment/app/BackStackRecord;

.field public mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field public mExecutingFinishUpdate:Z

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    iput-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mBehavior:I

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public final finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mExecutingFinishUpdate:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mExecutingFinishUpdate:Z

    iget-boolean v2, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v2, :cond_0

    iput-boolean v0, p1, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    iget-object v2, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mExecutingFinishUpdate:Z

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mExecutingFinishUpdate:Z

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_2
    return-void
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setPrimaryItem(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p1, v0, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget v2, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mBehavior:I

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    iget-object v4, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4, v5}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    if-nez v0, :cond_3

    invoke-static {v1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :goto_1
    iput-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public final startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewPager with adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " requires a view id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
