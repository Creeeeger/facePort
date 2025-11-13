.class public Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;
.super Landroidx/preference/Preference;
.source "ApplicationHistoryChartPreference.java"


# instance fields
.field mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

.field private mSpinner:Landroid/widget/Spinner;

.field mTcpSocketStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    .line 34
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_development_history_chart_fragment:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private buildChardData(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;",
            ">;)",
            "Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;Ljava/util/List;)V

    return-object v0
.end method

.method private getTcpSocketStats(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ApplicationHistoryChartPreference"

    if-nez p1, :cond_0

    const-string p0, "Context is null"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "sem_wifi"

    .line 184
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_1

    const-string p0, "Fail to get SemWifiManager"

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0x258

    .line 190
    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->parseEntry(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string p0, "TcpMonitorSocketForegroundHistory is null"

    .line 197
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private makeChart(Ljava/lang/String;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->buildChardData(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->clearPaths()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxDomainValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxRangeValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->configureGraph(JJ)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getScatterRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setScatterRadius(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxScatterDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setScatterDensity(F)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisLabels([Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisTick()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisTick(J)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisFormat()Ljava/text/Format;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisFormat(Ljava/text/Format;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisLabels()[Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisLabels([Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisOffset(J)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->showValueLabel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setLabelVisible(Z)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    const/16 v1, 0xb4

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setPrimaryColor(I)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const-string v2, "Total sockets(Good, Wait, Slow)"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setPrimaryLegend(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    const/16 v1, 0x3f

    const/16 v2, 0x91

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setSecondaryColor(I)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const-string v2, "Good sockets"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setSecondaryLegend(Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->addPath(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getSecondPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->addSecondPath(Ljava/util/List;)V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->invalidateGraph()V

    return-void
.end method

.method private setupSpinner(Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    sget v1, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    .line 60
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->getSpinnerArray()[Ljava/lang/String;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 64
    sget v0, Lcom/android/settings/R$layout;->sec_simple_spinner_dropdown_item:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public changeItem(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->makeChart(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "ApplicationHistoryChartPreference"

    const-string p1, "changeItem, but chart is null"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getSpinnerArray()[Ljava/lang/String;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->getPackages()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 40
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 41
    sget v0, Lcom/android/settings/R$id;->chart_history_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    .line 42
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->setup(Landroid/content/Context;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 45
    sget p0, Lcom/android/settings/R$id;->chart_notification_no_available_log:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    sget p0, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 50
    :cond_0
    sget v1, Lcom/android/settings/R$id;->chart_notification_no_available_log:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    sget v1, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->setupSpinner(Landroid/view/View;)V

    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->getTcpSocketStats(Landroid/content/Context;)V

    return-void
.end method
