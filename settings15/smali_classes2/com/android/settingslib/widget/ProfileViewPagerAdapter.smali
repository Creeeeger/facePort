.class public final Lcom/android/settingslib/widget/ProfileViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mParentFragments:Lcom/android/settingslib/widget/ProfileSelectFragment;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/widget/ProfileSelectFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ProfileViewPagerAdapter;->mParentFragments:Lcom/android/settingslib/widget/ProfileSelectFragment;

    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/widget/ProfileViewPagerAdapter;->mParentFragments:Lcom/android/settingslib/widget/ProfileSelectFragment;

    iget-boolean v0, p0, Lcom/android/settingslib/widget/ProfileSelectFragment;->mUsingUserIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ProfileSelectFragment;->mProfileTabsByUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/ProfileSelectFragment;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/widget/ProfileViewPagerAdapter;->mParentFragments:Lcom/android/settingslib/widget/ProfileSelectFragment;

    iget-boolean v0, p0, Lcom/android/settingslib/widget/ProfileSelectFragment;->mUsingUserIds:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/ProfileSelectFragment;->mProfileTabsByUsers:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method
