.class public final synthetic Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 4

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    const-string v2, "Settings.WORK_CATEGORY_HEADER"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, v1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    invoke-virtual {v1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->getTabForPosition(I)I

    move-result p2

    if-ne p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;I)V

    invoke-virtual {p2, v2, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;I)V

    const-string p0, "Settings.PRIVATE_CATEGORY_HEADER"

    invoke-virtual {p2, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;I)V

    invoke-virtual {p2, v2, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;I)V

    const-string p0, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {p2, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
