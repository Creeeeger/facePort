.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;
.super Landroidx/preference/Preference;
.source "NearbyWifiPreference.java"


# instance fields
.field private mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

.field private mBssidTitle:Landroid/view/View;

.field private mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

.field private mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

.field private mSelectedSsid:Ljava/lang/String;

.field private mSsid:Landroid/widget/TextView;

.field private final mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

.field private mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

.field private mSsidTitle:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$n3aGZ4ehSQyEGr2gfvjJLjv1aEg(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->lambda$new$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 76
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_fragment:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->changeMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showBssidList(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->setRadarUnit(Ljava/util/List;)V

    return-void
.end method

.method private showSsidList()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->setRadarUnit(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public changeMode()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->isSsidMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->findSsidInfo(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->showBssidList(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->showSsidList()V

    :goto_0
    return-void
.end method

.method public isSsidMode()Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 83
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getInstance()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    .line 85
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_scan_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getSsidList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidClickListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->setOnClickListener(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mNearbyWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->radarCanvas:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->setRadarUnit(Ljava/util/List;)V

    .line 94
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidTitle:Landroid/view/View;

    .line 95
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->bssid_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidTitle:Landroid/view/View;

    .line 97
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsid:Landroid/widget/TextView;

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->isSsidMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSsidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitBySsid()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->setRadarUnit(Ljava/util/List;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mSelectedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->findSsidInfo(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;->setBssidList(Ljava/util/List;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/BssidListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRadarView:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->setRadarUnit(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
