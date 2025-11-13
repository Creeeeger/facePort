.class public Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AspectRatioFragmentUserSelect.java"


# static fields
.field private static final LABEL:[I

.field private static mTabCount:I


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mKeyAppName:Ljava/lang/String;

.field private mPackageManager:Landroid/app/ApplicationPackageManager;

.field private mSelectedTab:I

.field private mTabs:Lcom/google/android/material/tabs/TabLayout;

.field private mUserInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SemUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTabs(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 36
    sget v1, Lcom/android/settings/R$string;->work_sound_personal_for_samsung:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->work_title:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->LABEL:[I

    .line 41
    array-length v0, v0

    sput v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    return-void
.end method

.method private isSecondaryUser(I)Z
    .locals 0

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    const/16 p0, 0x2a

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 9

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-string v2, " "

    const-string v3, "user: "

    const-string v4, "AspectRatioFragmentUserSelect"

    if-eqz v1, :cond_2

    .line 198
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->isSecondaryUser(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SemUserInfo;

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v6}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v7, v1, :cond_1

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->newInstance(Landroid/content/pm/SemUserInfo;Ljava/lang/String;)Lcom/samsung/android/settings/display/AspectRatioFragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SemUserInfo;

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v5}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-eqz v6, :cond_4

    .line 202
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->isSecondaryUser(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/AspectRatioFragment;->newInstance(Landroid/content/pm/SemUserInfo;Ljava/lang/String;)Lcom/samsung/android/settings/display/AspectRatioFragment;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 220
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_7

    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AspectRatioFragmentUserSelect"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 176
    sget p0, Lcom/android/settings/R$xml;->placeholder_preference_screen:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationPackageManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mPackageManager:Landroid/app/ApplicationPackageManager;

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":settings:fragment_args_key"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mKeyAppName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p3, :cond_0

    const-string v0, "key_selected_tab"

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    goto :goto_0

    .line 87
    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    .line 90
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p3

    .line 91
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, p3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 92
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    sget v1, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 97
    new-instance v2, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    .line 98
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    sget v2, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x0

    move v3, v2

    .line 102
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    new-instance v4, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 122
    new-instance v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view page count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AspectRatioFragmentUserSelect"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sget-object v3, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->LABEL:[I

    array-length v3, v3

    const/16 v4, 0x8

    if-ge v0, v3, :cond_2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 141
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    if-eq v0, p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 145
    :goto_2
    sget p2, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    const/4 v3, 0x2

    if-le p2, v0, :cond_5

    .line 146
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->convertPosition(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 148
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 150
    :cond_4
    sget p2, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabCount:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 155
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x102003f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    .line 159
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    .line 162
    invoke-static {p3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->mSelectedTab:I

    const-string p0, "key_selected_tab"

    .line 171
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
