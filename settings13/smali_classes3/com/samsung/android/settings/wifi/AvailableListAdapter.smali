.class public Lcom/samsung/android/settings/wifi/AvailableListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "AvailableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;,
        Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;,
        Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;
    }
.end annotation


# instance fields
.field private mDisableIntent:Landroid/content/Intent;

.field private mHideContextMenus:Z

.field private mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;


# direct methods
.method public static synthetic $r8$lambda$JZhv6BizEQjBmc2mmhDEbQ3Rlnc(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6hHHpfHdyDQxf7BodNaZaJVn2o(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-S-r5B--Q0Q_okQ8wfddfpYnLs(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cvu4JKtLFw78ldlFnwZ8VL3EFrw(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->lambda$onBindViewHolder$3(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHideContextMenus(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mHideContextMenus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlaunchModifyFragment(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->launchModifyFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchNetworkConnectFragment(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->launchNetworkConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    .line 93
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->getTipsIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 5

    const-string v0, "sem_wifi"

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 321
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "WPA_PSK"

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SAE"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 330
    iget-object v4, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->isDisabledByWifiManager(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SAE type is disabled "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 337
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 338
    iget-object p2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_4
    return-object v1
.end method

.method private isDisabledByWifiManager(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 347
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 348
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    :cond_0
    move p0, v2

    :cond_1
    return p0
.end method

.method private isDisabledWithEapCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 357
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEapNetworkWithCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 362
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/16 p1, 0xc

    if-eq p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isLastItem(I)Z
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v0, "0150"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->launchNetworkAddFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v0, "0106"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 406
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->getSecScannerIntent(Z)Landroid/content/Intent;

    move-result-object p1

    .line 408
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity found : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->launchWifiTips(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 477
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 478
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsAdminRestricted()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    if-eqz p0, :cond_1

    .line 483
    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;->onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WifiList.Available"

    const-string p1, "onClick item but ignored."

    .line 479
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private launchModifyFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_modify_wifientry_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-class v1, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private launchNetworkAddFragment()V
    .locals 3

    .line 640
    const-class v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private launchNetworkConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 644
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 645
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_connect_wifientry_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-class v1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private launchWifiTips(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 6

    const-string v0, "WifiList.Available"

    .line 657
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    if-eqz v1, :cond_c

    .line 659
    :try_start_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 662
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 663
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v3
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "disableReason"

    if-nez v3, :cond_5

    .line 664
    :try_start_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetOemDisableReason()I

    move-result v2
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x2

    const-string v5, "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 685
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 666
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 677
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 680
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 692
    :cond_5
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_8

    .line 694
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 696
    iget v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 698
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_BY_WIPS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    if-ne v2, v5, :cond_a

    .line 702
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_NO_INTERNET_PERMANENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 706
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->isDisabledWithEapCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 707
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 710
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    .line 712
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    .line 711
    invoke-static {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    :cond_a
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "config"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 716
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "netid"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v3, "randomMacSetting"

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v2, "isSecMHS"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecMHS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    const-string p1, "launchWifiTips failure, config is null"

    .line 723
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchWifiTips, ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_c
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.wifi.salogging.intent.action.WIFI_TIPS_SA_LOGGING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 513
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 518
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 519
    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public deleteItem(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "WifiList.Available"

    if-ltz v0, :cond_0

    .line 535
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 536
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 537
    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_0
    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "delete_error: not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public getAvailableCount()I
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getAvailableList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->isLastItem(I)Z

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.Available"

    return-object p0
.end method

.method public isDisable(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 6

    .line 277
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    .line 281
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 283
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_5

    .line 296
    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-ne p0, v5, :cond_5

    :cond_1
    return v5

    .line 285
    :cond_2
    iget-boolean p0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    return p0

    .line 304
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object p0

    if-nez p0, :cond_5

    .line 305
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result p0

    if-nez p0, :cond_5

    .line 306
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetOemDisableReason()I

    move-result p0

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    if-eqz p0, :cond_0

    .line 745
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;->onLaunchActivityFinished()V

    :cond_0
    return-void
.end method

.method protected notifyOnLaunchActivityIfNeeded()V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    if-eqz p0, :cond_0

    .line 738
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;->onLaunchActivity()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 389
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 390
    check-cast p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;

    .line 391
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 392
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->-$$Nest$fgetmWifiQrScanBtn(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/ImageButton;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    if-ltz p2, :cond_a

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto/16 :goto_3

    .line 422
    :cond_2
    check-cast p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 425
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fputmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 428
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->isDisable(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    .line 430
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 432
    :cond_3
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsTipsRequired()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 437
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p2}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 438
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-virtual {p2, v4}, Lcom/android/wifitrackerlib/WifiEntry;->semSetPrintedSummaryForAnimation(Ljava/lang/String;)V

    .line 441
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 442
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 446
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 448
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 452
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 457
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_7

    .line 458
    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEapNetwork(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEapNetworkWithCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 459
    :cond_6
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 460
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 465
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 467
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 470
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 418
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onBindViewHolder failed - invalid index "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 376
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_wifi_add_network:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    .line 378
    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_wifi_list_preference:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 381
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    .line 382
    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setHideContextMenus()V
    .locals 1

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mHideContextMenus:Z

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    return-void
.end method

.method public updateItem(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 526
    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateListWithAnimation(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 548
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 551
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 552
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 556
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "WifiList.Available"

    if-nez v1, :cond_5

    .line 557
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "remove not scanned or changed items"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 559
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->deleteItem(I)V

    goto :goto_2

    .line 563
    :cond_5
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "compare start"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 564
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 565
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    move v4, v0

    .line 567
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 568
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, -0x1

    :goto_5
    if-ltz v4, :cond_d

    if-lt v4, v1, :cond_d

    .line 573
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    .line 574
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    if-eq v4, v1, :cond_c

    .line 576
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wifitrackerlib/WifiEntry;

    .line 577
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "different_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " != new "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->deleteItem(I)V

    .line 580
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 581
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wifitrackerlib/WifiEntry;

    if-eq v3, v4, :cond_f

    .line 584
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->deleteItem(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result v4

    .line 585
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_from_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_a
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_6

    .line 589
    :cond_b
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_6

    .line 591
    :cond_c
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsSummaryChanged()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 592
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->updateItem(Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_6

    :cond_d
    if-lez v4, :cond_e

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is existed index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    .line 598
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_e
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V

    .line 604
    :cond_f
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_10

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 606
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_11

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is different "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 611
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_14

    .line 612
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "remove tail items"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 614
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->deleteItem(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_14
    return-void
.end method
