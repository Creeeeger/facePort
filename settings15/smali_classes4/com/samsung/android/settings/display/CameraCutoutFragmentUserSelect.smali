.class public Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mTabCount:I = 0x2


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

.field public mContentView:Landroid/view/ViewGroup;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mSelectedTab:I

.field public mTabs:Lcom/google/android/material/tabs/TabLayout;

.field public mUserInfoList:Ljava/util/ArrayList;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    return-void
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraCutoutFragmentUserSelect"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17010b

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1417c0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationPackageManager;

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p3, :cond_0

    const-string v0, "key_selected_tab"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0fab

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a1105

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    invoke-direct {v1, p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "CameraCutoutFragmentUserSelect"

    const/4 v6, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SemUserInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "user: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-eqz v7, :cond_2

    const/16 v8, 0xa

    if-lt v7, v8, :cond_3

    const/16 v8, 0x2a

    if-gt v7, v8, :cond_3

    :cond_2
    new-instance v7, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {v7}, Lcom/samsung/android/settings/display/CameraCutoutFragment;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "userInfo"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v3, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iput-object v4, v1, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    const-string/jumbo v2, "no of fragments "

    const-string v4, "CameraCutoutViewPagerAdapter"

    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f0a0fb9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    move v1, v7

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->LABEL:[I

    invoke-static {v1}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->convertPosition(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    new-instance v2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    new-instance v1, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sput p3, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "view page count: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    invoke-static {p3, v1, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p3, v0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    const/16 v1, 0x8

    if-ge p3, v6, :cond_7

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_7
    iget p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    if-eq p3, p2, :cond_8

    goto :goto_3

    :cond_8
    move p3, v7

    :goto_3
    sget p2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    if-le p2, p3, :cond_a

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p3}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->convertPosition(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_9
    sget p2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    const-string p0, "key_selected_tab"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
