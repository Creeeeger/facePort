.class public Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CameraCutoutFragmentUserSelect.java"


# static fields
.field private static final LABEL:[I

.field private static mTabCount:I


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

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
.method static bridge synthetic -$$Nest$fgetmTabs(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

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

    sput-object v0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->LABEL:[I

    .line 41
    array-length v0, v0

    sput v0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

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
    .locals 5

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SemUserInfo;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraCutoutFragmentUserSelect"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v2}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->isSecondaryUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->newInstance(Landroid/content/pm/SemUserInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 191
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraCutoutFragmentUserSelect"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 160
    sget p0, Lcom/android/settings/R$xml;->placeholder_preference_screen:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationPackageManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mPackageManager:Landroid/app/ApplicationPackageManager;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p3, :cond_0

    const-string v0, "key_selected_tab"

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    goto :goto_0

    .line 76
    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    .line 79
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->tab_container:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 80
    sget v0, Lcom/android/settings/R$id;->view_pager:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 81
    new-instance v1, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    .line 82
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    sget v1, Lcom/android/settings/R$id;->tabs:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    move v2, v1

    .line 86
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mAdapter:Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    new-instance v3, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$1;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 108
    new-instance v2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 115
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sput p3, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view page count: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "CameraCutoutFragmentUserSelect"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sget-object v2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->LABEL:[I

    array-length v2, v2

    const/16 v3, 0x8

    if-ge p3, v2, :cond_2

    .line 123
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 127
    :cond_2
    iget p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    if-eq p3, p2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v1

    .line 131
    :goto_2
    sget p2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    const/4 v2, 0x2

    if-le p2, p3, :cond_5

    .line 132
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p3}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->convertPosition(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 134
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 136
    :cond_4
    sget p2, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabCount:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 141
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 142
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    .line 145
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mSelectedTab:I

    const-string p0, "key_selected_tab"

    .line 155
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
