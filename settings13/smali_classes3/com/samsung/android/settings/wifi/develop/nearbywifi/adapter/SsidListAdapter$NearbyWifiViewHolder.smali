.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SsidListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NearbyWifiViewHolder"
.end annotation


# instance fields
.field private final band:Landroid/widget/TextView;

.field private final bestRssi:Landroid/widget/TextView;

.field private final countBssid:Landroid/widget/TextView;

.field private final ssid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;


# direct methods
.method public static synthetic $r8$lambda$vOs8FbfBthWar7wKuF3FGKkB96w(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetband(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->band:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbestRssi(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bestRssi:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountBssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->countBssid:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->ssid:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    .line 54
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    sget p1, Lcom/android/settings/R$id;->recycle_ssid:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->ssid:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/android/settings/R$id;->recycle_count_bssid:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->countBssid:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/android/settings/R$id;->recycle_best_rssi:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bestRssi:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/android/settings/R$id;->recycle_band:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->band:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/android/settings/R$id;->recycle_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;->onClick(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    :cond_1
    return-void
.end method
