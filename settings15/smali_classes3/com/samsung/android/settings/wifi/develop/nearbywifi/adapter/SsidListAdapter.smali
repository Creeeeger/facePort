.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

.field public mSsidList:Ljava/util/ArrayList;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->ssid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->countBssid:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bestRssi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand24:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand5:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p2, p2, v2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p2, p2, v2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand6:Z

    const/4 p2, 0x2

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    const v0, 0x7f0d0a6e

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;Landroid/view/View;)V

    return-object p2
.end method
