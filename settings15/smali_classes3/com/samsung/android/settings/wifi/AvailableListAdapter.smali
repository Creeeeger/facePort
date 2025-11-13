.class public final Lcom/samsung/android/settings/wifi/AvailableListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDisableIntent:Landroid/content/Intent;

.field public mHideContextMenus:Z

.field public mIsAdmin:Z

.field public mIsTipsIconClicked:Z

.field public mIsTipsIconCreated:Z

.field public mListener:Lcom/android/settings/wifi/WifiSettings$6;


# direct methods
.method public static getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 8

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPA_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "SAE"

    invoke-static {v2, p1, v3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v4, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget-wide v4, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :cond_2
    const-string p0, "SAE type is disabled "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiList.Available"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object p1

    :cond_5
    return-object v0
.end method

.method public static hideTipsDisabledIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final addItem(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "add_"

    const-string v0, ": "

    invoke-static {p2, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

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

.method public final deleteItem(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "WifiList.Available"

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-eqz v2, :cond_1

    const-string p0, "delete_"

    const-string v2, ": "

    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const-string p0, "delete_error: not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

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

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.Available"

    return-object p0
.end method

.method public final notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLaunching:Z

    :cond_0
    return-void
.end method

.method public final notifyOnLaunchActivityIfNeeded()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsLaunching:Z

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getItemViewType(I)I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f141a51

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    if-ltz v1, :cond_11

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto/16 :goto_8

    :cond_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    iput-object v1, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x5

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v6}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result v6

    if-eq v6, v7, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    iget-object v8, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v9, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v8, v9, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object v8, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-object v8, v9, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->prevSummaryString:Ljava/lang/String;

    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    iget-boolean v11, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsMaxSummaryLineOn:Z

    const/4 v12, 0x4

    if-eqz v11, :cond_4

    const/16 v11, 0x14

    goto :goto_2

    :cond_4
    move v11, v12

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v4, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->hideTipsDisabledIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V

    goto/16 :goto_7

    :cond_5
    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v8

    if-nez v8, :cond_10

    iget-boolean v8, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    const/4 v11, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x3

    if-eqz v10, :cond_9

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v17

    const/4 v4, 0x2

    if-eqz v17, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v9

    if-eq v9, v5, :cond_a

    if-eq v9, v4, :cond_7

    if-eq v9, v14, :cond_7

    if-eq v9, v13, :cond_8

    if-eq v9, v11, :cond_6

    if-eq v9, v3, :cond_7

    const/16 v3, 0xc

    if-eq v9, v3, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v15, :cond_9

    iget v3, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq v3, v13, :cond_7

    if-eq v3, v11, :cond_7

    if-ne v3, v5, :cond_9

    :cond_7
    move v3, v5

    goto :goto_4

    :cond_8
    if-eqz v15, :cond_7

    iget v3, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ne v3, v7, :cond_7

    :cond_9
    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    iget-boolean v3, v10, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v9}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result v3

    if-eq v3, v4, :cond_7

    if-eq v3, v14, :cond_7

    if-eq v3, v12, :cond_7

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_f

    if-nez v6, :cond_f

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v3

    if-eq v3, v14, :cond_d

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v3

    if-eq v3, v13, :cond_d

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v3

    if-ne v3, v11, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    move v3, v5

    :goto_6
    if-eqz v3, :cond_e

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEapNetworkWithCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget v3, v8, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v1, v6}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsTipsIconCreated:Z

    goto :goto_7

    :cond_f
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->hideTipsDisabledIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V

    goto :goto_7

    :cond_10
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->hideTipsDisabledIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V

    :goto_7
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_11
    :goto_8
    const-string v0, "onBindViewHolder failed - invalid index "

    const-string v2, "WifiList.Available"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0a04

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0a7c

    invoke-virtual {p1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0a03

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0a7b

    invoke-virtual {p1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
