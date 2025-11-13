.class public final synthetic Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object p1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->changeMode()V

    :cond_2
    :goto_0
    return-void
.end method
