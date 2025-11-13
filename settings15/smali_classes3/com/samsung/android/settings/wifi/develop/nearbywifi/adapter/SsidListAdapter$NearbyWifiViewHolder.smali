.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bands:[Landroid/widget/TextView;

.field public final bestRssi:Landroid/widget/TextView;

.field public final countBssid:Landroid/widget/TextView;

.field public final ssid:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bands:[Landroid/widget/TextView;

    const v0, 0x7f0a0c64

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->ssid:Landroid/widget/TextView;

    const v0, 0x7f0a0c5d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->countBssid:Landroid/widget/TextView;

    const v0, 0x7f0a0c5a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->bestRssi:Landroid/widget/TextView;

    const v0, 0x7f0a0c57

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f0a0c58

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const v0, 0x7f0a0c59

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const p1, 0x7f0a0c61

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
