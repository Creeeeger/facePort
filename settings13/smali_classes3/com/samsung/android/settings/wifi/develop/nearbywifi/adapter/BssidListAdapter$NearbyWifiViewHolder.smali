.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BssidListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyWifiViewHolder"
.end annotation


# instance fields
.field private final bssid:Landroid/widget/TextView;

.field private final ch:Landroid/widget/TextView;

.field private final cu:Landroid/widget/TextView;

.field private final extra:Landroid/widget/TextView;

.field private final freq:Landroid/widget/TextView;

.field private final rssi:Landroid/widget/TextView;

.field private final security:Landroid/widget/TextView;

.field private final sta:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->bssid:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetch(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->ch:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->cu:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextra(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->extra:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfreq(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->freq:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrssi(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->rssi:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecurity(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->security:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsta(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->sta:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    sget v0, Lcom/android/settings/R$id;->recycle_bssid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->bssid:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/android/settings/R$id;->recycle_freq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->freq:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/android/settings/R$id;->recycle_ch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->ch:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/android/settings/R$id;->recycle_rssi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->rssi:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/android/settings/R$id;->recycle_cu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->cu:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/settings/R$id;->recycle_sta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->sta:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/settings/R$id;->recycle_security:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->security:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/settings/R$id;->recycle_extra:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->extra:Landroid/widget/TextView;

    return-void
.end method
