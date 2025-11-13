.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBssidList:Ljava/util/List;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->bssid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->freq:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->ch:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->rssi:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->cu:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    const-string v2, "-"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->sta:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->security:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->extra:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wi-Fi standard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "unknown"

    goto :goto_2

    :pswitch_0
    const-string v2, "11be"

    goto :goto_2

    :pswitch_1
    const-string v2, "11ad"

    goto :goto_2

    :pswitch_2
    const-string v2, "11ax"

    goto :goto_2

    :pswitch_3
    const-string v2, "11ac"

    goto :goto_2

    :pswitch_4
    const-string v2, "11n"

    goto :goto_2

    :cond_2
    const-string v2, "legacy"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MHz\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    const/16 v4, 0x58

    const/16 v5, 0x4f

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_4

    :cond_4
    move v6, v4

    :goto_4
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_5

    :cond_5
    move v7, v4

    :goto_5
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    if-eqz v8, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    if-eqz v5, :cond_7

    const-string v5, "Required"

    goto :goto_6

    :cond_7
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z

    if-eqz v5, :cond_8

    const-string v5, "Capable"

    goto :goto_6

    :cond_8
    const-string v5, "X"

    :goto_6
    filled-new-array {v2, v6, v7, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "11e(%c) 11k(%c) 11v(%c) 11r(%c) 11w(%s)"

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    if-eqz p2, :cond_f

    iget-boolean p2, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mPresent:Z

    if-eqz p2, :cond_f

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->mloLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->mlo:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    if-nez p2, :cond_9

    const-string p0, ""

    goto/16 :goto_a

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MLD Address: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mMldMacAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Features: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mEmlCapabilities:S

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    const-string v2, "EMLSR(O) "

    goto :goto_7

    :cond_a
    const-string v2, "EMLSR(X) "

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mMldCapabilities:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_b

    const-string v2, "T2LM(O) "

    goto :goto_8

    :cond_b
    const-string v2, "T2LM(X) "

    :goto_8
    and-int/lit8 v0, v0, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SimultaneousLinks("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    if-eqz v2, :cond_c

    iget-boolean v3, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mPresent:Z

    if-eqz v3, :cond_c

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mAffiliatedLinks:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rnr:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;

    if-eqz p0, :cond_d

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mPresent:Z

    if-eqz v2, :cond_d

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;

    const-string v2, "\nID("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->linkId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->bssid:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " freq="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->freq:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_f
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->mloLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;

    const p2, 0x7f0d0a68

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
