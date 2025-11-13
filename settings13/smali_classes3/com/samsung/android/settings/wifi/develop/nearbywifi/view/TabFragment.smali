.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabFragment.java"


# instance fields
.field private mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentTags:[Ljava/lang/String;

.field private mFragments:[Landroidx/fragment/app/Fragment;

.field private mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

.field private mProgressMenu:Landroid/view/MenuItem;

.field private mRefreshMenu:Landroid/view/MenuItem;

.field private mScanReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTabIndex:I

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mWaitingForScanResult:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProgressMenu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mProgressMenu:Landroid/view/MenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshMenu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mRefreshMenu:Landroid/view/MenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForScanResult(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWaitingForScanResult(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanResultUpdated(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->scanResultUpdated(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mControllers:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    const-string v0, "nearbywifi"

    const-string v1, "channel_util"

    .line 68
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragmentTags:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    .line 76
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mScanReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initRepository(Landroid/content/Context;)V
    .locals 3

    const-string v0, "wifiscanner"

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    .line 192
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getInstance()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiScanner;->getAvailableChannels(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->setSupportedChannels(Ljava/util/List;)V

    const-string v0, "wifi"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 195
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->scanResultUpdated(Ljava/util/List;)V

    return-void
.end method

.method private refreshFragment()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NearbyWifi.TabFragment"

    const-string v1, "Refresh NearbyWifiFragment"

    .line 208
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->refresh()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method private scanResultUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getInstance()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->update(Ljava/util/List;)V

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->dump()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyWifi.TabFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->refreshFragment()V

    return-void
.end method

.method private setupActionBarMenus(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 170
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 178
    sget v0, Lcom/android/settings/R$menu;->sec_wifi_development_nearbywifi:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    sget p2, Lcom/android/settings/R$id;->refresh:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mRefreshMenu:Landroid/view/MenuItem;

    .line 180
    sget p2, Lcom/android/settings/R$id;->progress:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mProgressMenu:Landroid/view/MenuItem;

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setupActionBarMenus: mWaitingForScanResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NearbyWifi.TabFragment"

    invoke-static {p2, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mProgressMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initTab(I)V
    .locals 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTab["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyWifi.TabFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "nearbywifi"

    .line 265
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    aput-object v3, v2, v4

    :cond_0
    const-string v2, "channel_util"

    .line 271
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    aput-object v3, v0, v2

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    aput-object v2, v0, p1

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    aput-object v2, v0, p1

    .line 288
    :goto_0
    sget v0, Lcom/android/settings/R$id;->tabcontent:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragmentTags:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 289
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 291
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "selected_tab"

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated: mSelectedTabIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyWifi.TabFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->initRepository(Landroid/content/Context;)V

    .line 133
    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->initTab(I)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated: selectedTab="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isSelected="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    const-string v1, "(null)"

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->setupActionBarMenus(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView: mSelectedTabIndex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NearbyWifi.TabFragment"

    invoke-static {v0, p3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget p3, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_tab_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 299
    sget p2, Lcom/android/settings/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 300
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$2;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->refresh:I

    if-ne v0, v1, :cond_1

    .line 156
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NearbyWifi.TabFragment"

    const-string v1, "Scan requested"

    .line 157
    invoke-static {p1, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mProgressMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v0

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mScanReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mWaitingForScanResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: mSelectedTabIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyWifi.TabFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    const-string v1, "selected_tab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public selectTab(I)V
    .locals 4

    .line 227
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: mNearbyWifiFragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mChannelUtilFragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyWifi.TabFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p1, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v2, v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v2, v0, p1

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mChannelUtilFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;

    aput-object v2, v0, p1

    goto :goto_0

    .line 241
    :cond_3
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mNearbyWifiFragment:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    aput-object v2, v0, p1

    .line 249
    :goto_0
    sget v0, Lcom/android/settings/R$id;->tabcontent:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mFragmentTags:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 253
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 255
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->mSelectedTabIndex:I

    return-void
.end method
