.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

.field public mBssidTitle:Landroid/view/View;

.field public mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

.field public mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

.field public mSelectedSsid:Ljava/lang/String;

.field public mSsid:Landroid/widget/TextView;

.field public final mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

.field public mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

.field public mSsidTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    const p1, 0x7f0d0a6c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    const p1, 0x7f0d0a6c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    const p1, 0x7f0d0a6c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    const p1, 0x7f0d0a6c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final changeMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->mBssidList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->showSsidList()V

    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a11a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0ed9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0ed1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsid:Landroid/widget/TextView;

    return-void
.end method

.method public final showSsidList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
