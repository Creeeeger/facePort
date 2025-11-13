.class public Lcom/samsung/android/settings/wifi/ConnectedListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "ConnectedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;,
        Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;
    }
.end annotation


# static fields
.field public static final CSC_ENABLE_TENCENT_SECURITY_WIFI:Z


# instance fields
.field private ITEM_VIEW_ACCESSPOINT:I

.field private mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

.field private mPickerHelperMode:Z


# direct methods
.method public static synthetic $r8$lambda$oB8cS9ToZQpj9-2hkrb4mi_XTtg(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->lambda$onBindViewHolder$1(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtmmZ0chBAimxTMWYIC29u4b0yQ(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vmTdjh0AMEu59dPZHK_OlFge_aw(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->CSC_ENABLE_TENCENT_SECURITY_WIFI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V
    .locals 8

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->ITEM_VIEW_ACCESSPOINT:I

    return-void
.end method

.method private getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 2

    const-string p0, "sem_wifi"

    .line 307
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 309
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 315
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 316
    iget-object v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    return-object p2
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;->onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 3

    .line 171
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v0, "0110"

    const-wide/16 v1, 0x3

    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->launchNetworkDetailsFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->launchWifiTips(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 4

    .line 223
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiList.Connected"

    const-string v1, "launchNetworkDetailsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 226
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "settings_wifi_details_datausage_header"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->pref_title_network_details:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 236
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_chosen_wifientry_config"

    .line 237
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    const-class p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private launchWifiTips(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 7

    const-string v0, "WifiList.Connected"

    .line 262
    :try_start_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 264
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 267
    iget-boolean p2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 280
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wcm status : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget p2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p2, v6, :cond_4

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 285
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 287
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    .line 291
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->getTipsIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "wcm_status"

    .line 292
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "config"

    .line 293
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "randomMacSetting"

    .line 294
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "title"

    .line 295
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "netid"

    .line 296
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string p0, "launchWifiTips failure, config is null"

    .line 299
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchWifiTips, ActivityNotFoundException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "WifiList.Connected"

    const-string v0, "getItemCount failed - mList is NULL"

    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 210
    iget p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->ITEM_VIEW_ACCESSPOINT:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.Connected"

    return-object p0
.end method

.method protected notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 0

    return-void
.end method

.method protected notifyOnLaunchActivityIfNeeded()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const-string v0, "WifiList.Connected"

    if-ltz p2, :cond_b

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto/16 :goto_4

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_1

    const-string p0, "onBindViewHolder failed - null WifiEntry"

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    .line 153
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    if-eqz v4, :cond_3

    .line 155
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings onClickListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    const-string v4, " "

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBindView Connected AP : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    check-cast p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;

    .line 163
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 164
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$color;->sec_wifi_ap_activity_label_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne p2, v3, :cond_5

    .line 170
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDetailIconLayout(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDetailIconLayout(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDetailIconLayout(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmDetailIcon(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_preference_details:I

    .line 182
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->button_tts:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 185
    invoke-static {p2}, Lcom/samsung/wifitrackerlib/WcmUtils;->getSnsCurrentMode(Lcom/samsung/android/wifi/SemWifiManager;)I

    move-result p2

    .line 186
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 187
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    move v2, v7

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    if-eqz v3, :cond_8

    .line 189
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-nez v4, :cond_7

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    and-int/2addr v2, v7

    :cond_8
    if-eqz v2, :cond_a

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WCM current Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutWcm(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 195
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p2}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_9
    const-string p2, "onClick - image is null"

    .line 198
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 201
    :cond_a
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmRelativeLayoutWcm(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    :goto_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->updateTencentSecuritySummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)V

    return-void

    :cond_b
    :goto_4
    const-string p0, "onBindViewHolder failed - invalid index"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_list_preference:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    .line 131
    new-instance p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    return-void
.end method

.method public setPickerHelperMode()V
    .locals 1

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    return-void
.end method

.method protected updateTencentSecuritySummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)V
    .locals 5

    .line 325
    sget-boolean v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->CSC_ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v0, :cond_4

    .line 326
    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityEnabled()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 330
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->checkApSecurityState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_secured_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 337
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_unsecured_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionButton(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionButton(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$1;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 354
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->-$$Nest$fgetmTwsDetectionButton(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
