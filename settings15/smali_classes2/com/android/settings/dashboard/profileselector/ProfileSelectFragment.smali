.class public abstract Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentView:Landroid/view/ViewGroup;

.field public mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static getFragments(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;)[Landroidx/fragment/app/Fragment;
    .locals 7

    const-string v0, "ProfileSelectFragment"

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "profile"

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    move-object v4, p1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;->constructAndGetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_2
    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;->constructAndGetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->isPrivateSpaceLocked()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_3
    const/4 v5, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p4}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;->constructAndGetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not showing tab for unsupported user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "Failed to create fragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v1
.end method


# virtual methods
.method public abstract getFragments()[Landroidx/fragment/app/Fragment;
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProfileSelectFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17010b

    return p0
.end method

.method public getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    const-string v3, ":settings:show_fragment_tab"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length v4, p2

    if-ge p1, v4, :cond_3

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v4, "profile"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-ne p2, v3, :cond_2

    move v1, p1

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "position requested for an unknown profile tab "

    const-string p1, "ProfileSelectFragment"

    invoke-static {v3, p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1

    :cond_4
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_5
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_7

    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result p2

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method public getTitleResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTitleResId()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f0a0fab

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a1105

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p3, 0x7f0a0fb9

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-direct {v0, p3, v1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method
