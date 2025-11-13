.class public final Lcom/samsung/android/settings/wifi/ConnectedListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mInPickerDialog:Z

.field public mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

.field public mPickerHelperMode:Z


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "WifiList.Connected"

    const-string v0, "getItemCount failed - mList is NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.Connected"

    return-object p0
.end method

.method public final notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 0

    return-void
.end method

.method public final notifyOnLaunchActivityIfNeeded()V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    const-string v0, "WifiList.Connected"

    if-ltz p2, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_1

    const-string p0, "onBindViewHolder failed - null WifiEntry"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "Settings onClickListener : "

    const-string v5, "/"

    invoke-static {v4, v5, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mPickerHelperMode:Z

    invoke-static {v3, v4, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    const/4 v4, 0x1

    const-string v5, " "

    if-eqz v3, :cond_4

    const-string v3, "onBindView Connected AP : "

    invoke-static {p2, v3, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    check-cast p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p2, v3, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsMaxSummaryLineOn:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x14

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f06074a

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-ne p2, v6, :cond_6

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v6, p0, v1, v8}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIcon:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f143623

    invoke-static {v8, v9, v6, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f140886

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sem_wifi"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    move-result p2

    goto :goto_2

    :cond_7
    move p2, v3

    :goto_2
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    if-eqz v6, :cond_8

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-nez v6, :cond_9

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    and-int/2addr v2, v4

    :cond_a
    if-eqz v2, :cond_c

    const-string v2, "WCM current Mode : "

    invoke-static {p2, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, p2}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_b
    const-string p0, "onClick - image is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    return-void

    :cond_d
    :goto_6
    const-string p0, "onBindViewHolder failed - invalid index"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0a7c

    invoke-virtual {v1, v2, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mHideLeftRightPadding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mInPickerDialog:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0a7d

    invoke-virtual {v1, v2, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0a7b

    invoke-virtual {v1, v2, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a119e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a1041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0f81

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a088a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a118c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080e26

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080e25

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    :goto_1
    iput-object p0, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    const p0, 0x7f0a0888

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

    const p0, 0x7f0a001c

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    const p0, 0x7f0a118e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, p2, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    return-object p2
.end method
