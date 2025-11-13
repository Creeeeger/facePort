.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSummaryColor:I

.field public mTopHotspotWifiApClientConfigList:Ljava/util/List;

.field public mWarningColor:I


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mTopHotspotWifiApClientConfigList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mTopHotspotWifiApClientConfigList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->progressBarImageView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarColorId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->progressBarImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->deviceNameTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->deviceNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->deviceNameTextView:Landroid/widget/TextView;

    const/16 v2, 0x9b

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataUsageForTodayInBytes:J

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mSummaryColor:I

    if-eqz v0, :cond_6

    iget-wide v3, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataLimitForEachDayInBytes:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v3, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataUsageForTodayInBytes:J

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v4, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataLimitForEachDayInBytes:J

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->connectedIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByDataLimitCondition:Z

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mWarningColor:I

    const-string v3, "WifiApClientsRecyclerViewAdapter"

    if-nez v1, :cond_5

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mIsDataPausedByTimeLimitCondition:Z

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Time limit reached (Default Summary) for : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_4

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Data limit almost reached (Default Summary) for : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Data limit reached (Default Summary) for : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->dataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;->connectedIconImageView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;

    const p2, 0x7f0d0a12

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter$ClientsViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
