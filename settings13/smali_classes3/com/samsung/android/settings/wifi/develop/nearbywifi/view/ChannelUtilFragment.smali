.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChannelUtilFragment.java"


# instance fields
.field private KEY_CU_BAR_CHART_24G:Ljava/lang/String;

.field private KEY_CU_BAR_CHART_5G:Ljava/lang/String;

.field private KEY_CU_BAR_CHART_6G:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field private mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field private mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field private mCuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "NearbyWifi.ChannelUtilFragment"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->TAG:Ljava/lang/String;

    const-string v0, "cu_bar_chart_24g"

    .line 37
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_24G:Ljava/lang/String;

    const-string v0, "cu_bar_chart_5g"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_5G:Ljava/lang/String;

    const-string v0, "cu_bar_chart_6g"

    .line 39
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_6G:Ljava/lang/String;

    return-void
.end method

.method private setChannelRecommendation()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getChannelRecommendation()Ljava/util/Map;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "  - 2.4GHz band: "

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "\n"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x2

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "  - 5GHz band: "

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "  None"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "best_channel"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_development_nearbywifi_channel_util:I

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 49
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getInstance()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getCuInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_24G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_5G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->KEY_CU_BAR_CHART_6G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->setChartItem(ILjava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->setChartItem(ILjava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->setChartItem(ILjava/util/List;)V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->setChannelRecommendation()V

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public refresh()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->TAG:Ljava/lang/String;

    const-string v1, "Refresh Cu bar charts"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getCuInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->mCuMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem(Ljava/util/List;)V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilFragment;->setChannelRecommendation()V

    :cond_0
    return-void
.end method
