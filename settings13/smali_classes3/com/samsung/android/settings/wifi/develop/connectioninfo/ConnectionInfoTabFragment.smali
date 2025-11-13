.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConnectionInfoTabFragment.java"


# instance fields
.field mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field private mConnectionL2InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mConnectionL3InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mConnectionStatusFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mCurrentTab:I

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mCurrentTab:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mCurrentTab:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->changeView(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mCurrentTab:I

    return-void
.end method

.method private changeView(I)V
    .locals 5

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "status"

    .line 98
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const-string v3, "l2"

    .line 99
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const-string v4, "l3"

    .line 100
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez p1, :cond_4

    .line 130
    sget p1, Lcom/android/settings/R$id;->tabcontent:I

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    invoke-virtual {v1, p1, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez p1, :cond_6

    .line 123
    sget p1, Lcom/android/settings/R$id;->tabcontent:I

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    invoke-virtual {v1, p1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez p1, :cond_8

    .line 116
    sget p1, Lcom/android/settings/R$id;->tabcontent:I

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    invoke-virtual {v1, p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 118
    :cond_8
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 138
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_develop_connection_info_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 53
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 60
    sget p3, Lcom/android/settings/R$layout;->sec_wifi_develop_connection_info_tab_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/android/settings/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 62
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mCurrentTab:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 89
    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mCurrentTab:I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->changeView(I)V

    return-object p1
.end method
