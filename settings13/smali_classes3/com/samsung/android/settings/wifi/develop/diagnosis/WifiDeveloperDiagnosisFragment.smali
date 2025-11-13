.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDeveloperDiagnosisFragment.java"


# instance fields
.field private mCurrentTab:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mWifiDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mCurrentTab:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mCurrentTab:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->changeTab(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 123
    sget p2, Lcom/android/settings/R$id;->tabcontent:I

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->getSettingsByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    return-void
.end method

.method private changeTab(I)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "Wi-Fi Diagnosis"

    .line 102
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const-string v3, "Network Diagnosis"

    .line 104
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mNetworkDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0, v1, p1, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->addFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mWifiDiagnosisFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->addFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    .line 118
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private getSettingsByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    const-string p0, "Wi-Fi Diagnosis"

    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;-><init>()V

    goto :goto_0

    .line 131
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;-><init>()V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout_inflater"

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/android/settings/R$layout;->sec_wifi_developer_diagnosis:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lcom/android/settings/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 69
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mCurrentTab:I

    .line 71
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 90
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mCurrentTab:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 92
    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->mCurrentTab:I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->changeTab(I)V

    return-object p1
.end method
