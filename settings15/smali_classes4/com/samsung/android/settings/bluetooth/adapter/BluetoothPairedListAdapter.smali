.class public final Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;
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

    const-string p0, "BluetoothPairedListAdapter"

    return-object p0
.end method

.method public final onAnimationsFinished()V
    .locals 1

    const-string p0, "BluetoothPairedListAdapter"

    const-string v0, "BluetoothPairedListAdapter: onAnimationsFinished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "BluetoothPairedListAdapter"

    if-ltz p2, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    iget-object v1, p2, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBindViewHolder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isBonded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", groupId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    invoke-static {v3, v4, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f150200

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->isDialogType()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f150201

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f150202

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusyForList()Z

    move-result v3

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/16 v5, 0x5e

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v5, 0xc

    if-eq v0, v5, :cond_5

    iget-boolean v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->isDialogType()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    const v5, 0x7f0a022c

    invoke-virtual {v0, v5, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f1406f0

    invoke-static {v5, v6, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mIsSupportTips:Z

    if-eqz p0, :cond_b

    iget-object p0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    if-lt v0, p0, :cond_a

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    :goto_6
    const-string/jumbo p0, "onBindViewHolder failed - invalid index"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    const v0, 0x7f0d093b

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mIcon:Landroid/widget/ImageView;

    const p2, 0x1020016

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x1020010

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0a04ef

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mDetails:Landroid/widget/ImageView;

    const p2, 0x7f0a103b

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    const p2, 0x7f0a088a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a1102

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter$PairedViewHolder;->mBadgeView:Landroid/view/View;

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

    const-string p1, "BluetoothPairedListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final update()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update: mPreferenceList size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPairedListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisiblePairedGroup(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisiblePairedGroup(I)V

    :goto_0
    return-void
.end method
