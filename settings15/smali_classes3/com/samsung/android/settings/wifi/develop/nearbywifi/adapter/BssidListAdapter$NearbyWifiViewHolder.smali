.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bssid:Landroid/widget/TextView;

.field public final ch:Landroid/widget/TextView;

.field public final cu:Landroid/widget/TextView;

.field public final extra:Landroid/widget/TextView;

.field public final freq:Landroid/widget/TextView;

.field public final mlo:Landroid/widget/TextView;

.field public final mloLayout:Landroid/view/View;

.field public final rssi:Landroid/widget/TextView;

.field public final security:Landroid/widget/TextView;

.field public final sta:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0c5b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->bssid:Landroid/widget/TextView;

    const v0, 0x7f0a0c60

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->freq:Landroid/widget/TextView;

    const v0, 0x7f0a0c5c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->ch:Landroid/widget/TextView;

    const v0, 0x7f0a0c62

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->rssi:Landroid/widget/TextView;

    const v0, 0x7f0a0c5e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->cu:Landroid/widget/TextView;

    const v0, 0x7f0a0c65

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->sta:Landroid/widget/TextView;

    const v0, 0x7f0a0c63

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->security:Landroid/widget/TextView;

    const v0, 0x7f0a0c5f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->extra:Landroid/widget/TextView;

    const v0, 0x7f0a0980

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->mloLayout:Landroid/view/View;

    const v0, 0x7f0a097f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->mlo:Landroid/widget/TextView;

    return-void
.end method
