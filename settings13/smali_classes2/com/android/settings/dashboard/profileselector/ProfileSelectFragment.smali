.class public abstract Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ProfileSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$9LKB0WBrCSveVkkBBNwnkhoW-yY(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bvs60U7QgS9jeltk3gxvW8_TnFU(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->lambda$getPageTitle$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gB3ztBqPGcFY84BKcYCxFZ-uHeI(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->lambda$getPageTitle$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateHeight(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->updateHeight(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    const-string p0, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    const-string p0, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPageTitle$1()Ljava/lang/String;
    .locals 1

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPageTitle$2()Ljava/lang/String;
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private updateHeight(I)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->forceUpdateHeight()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->getItemCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 170
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected forceUpdateHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getFragments()[Landroidx/fragment/app/Fragment;
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProfileSelectFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 203
    sget p0, Lcom/android/settings/R$xml;->placeholder_preference_screen:I

    return p0
.end method

.method getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string v1, ":settings:show_fragment_tab"

    const/4 v2, -0x1

    .line 214
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    return v1

    .line 218
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 219
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result p2

    .line 226
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 231
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 232
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTitleResId()I

    move-result p2

    if-lez p2, :cond_0

    .line 113
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getTabId(Landroid/app/Activity;Landroid/os/Bundle;)I

    move-result p2

    .line 117
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 118
    sget v0, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 119
    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$ViewPagerAdapter;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    sget v0, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 124
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 126
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 127
    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 140
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 141
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x2

    .line 146
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    .line 149
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method
