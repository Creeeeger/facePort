.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mData:Ljava/util/ArrayList;

.field public mPrimaryTextColor:I

.field public mPrimaryTextColorB:I

.field public mPrimaryTextColorG:I

.field public mPrimaryTextColorR:I

.field public final mSearchHelper:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mSearchHelper:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3, v0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mSearchHelper:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-eqz v0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->ssidLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->ssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->ssidLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    if-eqz v0, :cond_8

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->bssid:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->band:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v4, v4, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    if-eq v4, v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, "6G"

    goto :goto_1

    :cond_3
    const-string v3, "5G"

    goto :goto_1

    :cond_4
    const-string v3, "2.4G"

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    const/16 v3, -0x63

    if-gt v0, v3, :cond_5

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    const-string v3, "---"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v3, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    const/16 v4, -0x46

    if-gt v3, v4, :cond_6

    const/16 p0, 0xff

    invoke-static {p0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    goto :goto_3

    :cond_6
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mPrimaryTextColor:I

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    if-gt v3, v4, :cond_7

    move v1, v2

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->circle:Landroid/view/View;

    iget p1, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssidColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;

    const p2, 0x7f0d0a60

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
