.class public Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mTabCount:I = 0x2


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

.field public mContentView:Landroid/view/ViewGroup;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mKeyAppName:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

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

    const-string p0, "AspectRatioFragmentUserSelect"

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
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationPackageManager;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    const-string v4, "key_selected_tab"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    goto :goto_0

    :cond_0
    iput v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v4, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const v5, 0x7f0a0fab

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a1105

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    new-instance v6, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    invoke-direct {v6, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    const-string v9, ":settings:fragment_args_key"

    const-string/jumbo v10, "userInfo"

    const/16 v11, 0x2a

    const/16 v12, 0xa

    const-string v13, "AspectRatioFragmentUserSelect"

    const-string v15, " "

    const-string/jumbo v3, "user: "

    if-eqz v8, :cond_3

    if-lt v8, v12, :cond_1

    if-gt v8, v11, :cond_1

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SemUserInfo;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    move-object/from16 p3, v11

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    if-ne v11, v8, :cond_2

    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {v8}, Lcom/samsung/android/settings/display/AspectRatioFragment;-><init>()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v11, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    move-object/from16 v11, p3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v8, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/SemUserInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    if-eqz v11, :cond_6

    const/16 v12, 0xa

    if-lt v11, v12, :cond_4

    const/16 v12, 0x2a

    if-gt v11, v12, :cond_5

    goto :goto_4

    :cond_4
    const/16 v12, 0x2a

    :cond_5
    move-object/from16 v16, v3

    goto :goto_5

    :cond_6
    const/16 v12, 0x2a

    :goto_4
    iget-object v11, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    new-instance v12, Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {v12}, Lcom/samsung/android/settings/display/AspectRatioFragment;-><init>()V

    move-object/from16 v16, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v10, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v3, v16

    const/16 v11, 0x2a

    const/16 v12, 0xa

    goto :goto_3

    :cond_8
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v8, v3, [Landroidx/fragment/app/Fragment;

    const/4 v9, 0x0

    move v10, v9

    :goto_7
    if-ge v10, v3, :cond_9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    iput-object v8, v6, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    const-string/jumbo v7, "no of fragments "

    const-string v8, "AspectRatioViewPagerAdapter"

    invoke-static {v3, v7, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v3, 0x7f0a0fb9

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    iput-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    move v3, v9

    :goto_8
    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    iget-object v6, v6, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length v6, v6

    if-ge v3, v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    iget-object v8, v8, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->LABEL:[I

    invoke-static {v3}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->convertPosition(I)I

    move-result v11

    aget v10, v10, v11

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v6, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    new-instance v6, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$1;

    invoke-direct {v6, v5}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v3, v6}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)V

    invoke-virtual {v5, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    sput v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "view page count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    invoke-static {v3, v4, v13}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v3, v5, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/16 v4, 0x8

    const/4 v6, 0x2

    if-ge v3, v6, :cond_b

    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_b
    iget v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    goto :goto_9

    :cond_c
    move v3, v9

    :goto_9
    sget v6, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    if-le v6, v3, :cond_e

    iget-object v6, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->convertPosition(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_d
    sget v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_e

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_a

    :cond_e
    const/4 v5, 0x2

    :goto_a
    iget-object v3, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x102003f

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    const-string p0, "key_selected_tab"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
