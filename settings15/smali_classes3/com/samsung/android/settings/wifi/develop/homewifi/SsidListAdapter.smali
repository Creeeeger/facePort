.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mData:Ljava/util/ArrayList;

.field public final mSsidSearchHelper:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mSsidSearchHelper:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mSsidSearchHelper:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Initial # of SSIDs: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomeWifi.SsidListAdapter"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->data:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->band:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    const-string v2, "6G"

    goto :goto_2

    :cond_4
    const-string v2, "5G"

    goto :goto_2

    :cond_5
    const-string v2, "2.4G"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->expanded:Z

    if-eqz v0, :cond_9

    const/4 v4, 0x0

    :cond_9
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->selected:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->selected:Z

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->toggleBssid:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->expanded:Z

    if-eqz p0, :cond_a

    const/high16 p0, 0x43340000    # 180.0f

    goto :goto_4

    :cond_a
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;

    const p2, 0x7f0d0a66

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
