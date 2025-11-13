.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SsidListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;,
        Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

.field public mSsidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    return-void
.end method

.method private getBandString(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)Ljava/lang/String;
    .locals 1

    .line 103
    iget-boolean p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand24:Z

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2.4G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    iget-boolean p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand5:Z

    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n5G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "5G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    :goto_0
    iget-boolean p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand6:Z

    if-eqz p0, :cond_4

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n6G"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "6G"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;I)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetcountBssid(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->numOfBssids()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetbestRssi(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBestRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;->-$$Nest$fgetband(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->getBandString(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;
    .locals 3

    .line 73
    new-instance p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_ssid_item:I

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$NearbyWifiViewHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter;->mListener:Lcom/samsung/android/settings/wifi/develop/nearbywifi/adapter/SsidListAdapter$OnSsidClickListener;

    return-void
.end method
