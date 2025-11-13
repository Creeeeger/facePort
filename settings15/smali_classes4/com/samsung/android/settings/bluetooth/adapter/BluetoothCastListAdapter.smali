.class public final Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;
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

    const-string p0, "BluetoothCastListAdapter"

    return-object p0
.end method

.method public final onAnimationsFinished()V
    .locals 1

    const-string p0, "BluetoothCastListAdapter"

    const-string v0, "BluetoothCastListAdapter: onAnimationsFinished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const-string v0, "BluetoothCastListAdapter"

    if-ltz p2, :cond_26

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    iget-object v1, p2, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u200e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    new-instance v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    iget-object v3, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getManufacturerData()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    iget-object v3, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBindViewHolder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f150200

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->isDialogType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f150201

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f150202

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isBusy()Z

    move-result p0

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    xor-int/lit8 v2, p0, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfiles()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v8, "CachedBluetoothCastDevice"

    if-ge v2, v5, :cond_a

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-nez v5, :cond_4

    const-string v5, "getConnectionSummary :: profile is null"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v5}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getCastProfileConnectionState(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)I

    move-result v5

    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_7

    if-eq v5, v7, :cond_6

    const/4 v9, 0x3

    if-eq v5, v9, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    move v3, v6

    move v4, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1406bf

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1406be

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    iget-object p0, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1406bb

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_b
    const/4 p0, 0x0

    :goto_4
    const/16 v1, 0x8

    if-eqz p0, :cond_c

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->mCachedCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object v2, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getBluetoothCastType()I

    move-result v3

    if-ne v3, v6, :cond_23

    iget-object v2, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    iget-object v9, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v9}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getManufacturerData()[B

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getBtClassDrawable :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v10}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", BluetoothClass = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_a

    :cond_d
    const v5, 0x7f080700

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v8

    const/16 v9, 0x100

    const v10, 0x7f080704

    if-eq v8, v9, :cond_1f

    const/16 v9, 0x200

    if-eq v8, v9, :cond_1d

    const/16 v7, 0x400

    if-eq v8, v7, :cond_14

    const/16 v7, 0x600

    if-eq v8, v7, :cond_11

    const/16 v7, 0x700

    if-eq v8, v7, :cond_e

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x704

    if-ne v7, v8, :cond_1b

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GEAR FIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GALAXY FIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const v5, 0x7f0806cf

    goto/16 :goto_a

    :cond_10
    const v5, 0x7f08070b

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x680

    if-eq v0, v3, :cond_13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x640

    if-ne v0, v3, :cond_12

    goto :goto_6

    :cond_12
    const v5, 0x7f0806d5

    goto/16 :goto_a

    :cond_13
    :goto_6
    const v5, 0x7f0806f5

    goto/16 :goto_a

    :cond_14
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SAMSUNG LEVEL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BOX"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v3, 0x7f0806dc

    goto :goto_7

    :cond_15
    const v3, 0x7f0806e7

    goto :goto_7

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "GEAR CIRCLE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isGearIconX()Z

    move-result v3

    if-eqz v3, :cond_17

    const v3, 0x7f0806e5

    goto :goto_7

    :cond_17
    move v3, v0

    :goto_7
    if-eqz v3, :cond_18

    move v5, v3

    goto/16 :goto_a

    :cond_18
    invoke-virtual {p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isGearIconX()Z

    move-result v3

    if-eqz v3, :cond_19

    const v5, 0x7f080707

    goto :goto_a

    :cond_19
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v7, 0x43c

    if-ne v3, v7, :cond_1a

    const v5, 0x7f080708

    goto :goto_a

    :cond_1a
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v7, 0x434

    if-ne v3, v7, :cond_1b

    const v5, 0x7f0806d4

    goto :goto_a

    :cond_1b
    :goto_8
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_22

    const v5, 0x7f0806f0

    goto :goto_a

    :cond_1d
    iget-object v0, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getManufacturerData()[B

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v3, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    if-eqz v0, :cond_1e

    iget v0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-ne v0, v7, :cond_1e

    iget-object v0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-byte v0, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    if-ne v0, v7, :cond_1e

    :goto_9
    move v5, v10

    goto :goto_a

    :cond_1e
    const v5, 0x7f0806ef

    goto :goto_a

    :cond_1f
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x11c

    if-ne v0, v3, :cond_20

    goto :goto_9

    :cond_20
    const v5, 0x7f0806ed

    goto :goto_a

    :cond_21
    const-string v0, "mBtClass is null"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_a
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_23
    iget-object p2, p2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mContext:Landroid/content/Context;

    const v0, 0x7f080ced

    const v3, 0x7f080cee

    invoke-static {p2, v2, v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_24

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_24
    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_25

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_25
    return-void

    :cond_26
    :goto_b
    const-string/jumbo p0, "onBindViewHolder: failed - invalid index"

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

    const v0, 0x7f0d0939

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mIcon:Landroid/widget/ImageView;

    const p2, 0x1020016

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x1020010

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mSummary:Landroid/widget/TextView;

    const p2, 0x7f0a103b

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mTipsBtn:Landroid/widget/ImageView;

    const p2, 0x7f0a088a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter$CastViewHolder;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public final printAddLog(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public final update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisibleCastGroup(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisibleCastGroup(I)V

    :goto_0
    return-void
.end method
