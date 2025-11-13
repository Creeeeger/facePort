.class public final Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;
.super Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAvailableListAdapter"

    return-object p0
.end method

.method public final onAnimationsFinished()V
    .locals 1

    const-string p0, "BluetoothAvailableListAdapter"

    const-string v0, "BluetoothAvailableListAdapter: onAnimationsFinished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "BluetoothAvailableListAdapter"

    if-lez v0, :cond_8

    if-ltz p2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object v0, p2, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBindViewHolder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isBonded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", groupId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    invoke-static {v3, v4, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f150200

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->isDialogType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f150201

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f150202

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusyForList()Z

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    const/16 v4, 0x5e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mIsSupportTips:Z

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    if-lt v1, p0, :cond_6

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    const v1, 0x7f0a0232

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string/jumbo p0, "onBindViewHolder: failed - invalid index"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    const v0, 0x7f0d0939

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mIcon:Landroid/widget/ImageView;

    const p2, 0x1020016

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x1020010

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0a103b

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter$AvailableViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    const p2, 0x7f0a088a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public final printAddLog(Landroidx/preference/Preference;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: cached = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothAvailableListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final update()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update: itemCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvailableListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    const/16 v3, 0x8

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
