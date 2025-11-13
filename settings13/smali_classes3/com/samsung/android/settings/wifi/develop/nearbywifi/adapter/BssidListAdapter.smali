.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BssidListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBssidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    return-void
.end method

.method private makeCuString(I)Ljava/lang/String;
    .locals 2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const-string p0, "-"

    return-object p0

    .line 103
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%d%%"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeStaString(I)Ljava/lang/String;
    .locals 2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const-string p0, "-"

    return-object p0

    .line 109
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;I)V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetbssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetfreq(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetch(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget v6, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v6}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetrssi(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetcu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->makeCuString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetsta(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->makeStaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetsecurity(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetextra(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;
    .locals 2

    .line 72
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_bssid_item:I

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter$NearbyWifiViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setBssidList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    return-void
.end method
