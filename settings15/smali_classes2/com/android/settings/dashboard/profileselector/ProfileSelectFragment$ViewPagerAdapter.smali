.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mChildFragments:[Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {p3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length p0, p0

    return p0
.end method

.method public getTabForPosition(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, p0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const-string p0, "tab requested for out of bound position "

    const-string v0, "ProfileSelectFragment"

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "profile"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method
