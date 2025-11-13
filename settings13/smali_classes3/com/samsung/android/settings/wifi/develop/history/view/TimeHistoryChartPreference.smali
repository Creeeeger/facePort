.class public Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;
.super Landroidx/preference/Preference;
.source "TimeHistoryChartPreference.java"


# instance fields
.field mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

.field private mSpinner:Landroid/widget/Spinner;

.field mUsabilityStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    .line 31
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_development_history_chart_fragment:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private getUsabilityStats(Landroid/content/Context;)V
    .locals 2

    const-string v0, "TimeHistoryChartPreference"

    if-nez p1, :cond_0

    const-string p0, "Fail to get Context"

    .line 121
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "sem_wifi"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_1

    const-string p0, "Fail to get SemWifiManager"

    .line 127
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0x960

    .line 131
    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->parseEntry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const-string p0, "WifiUsabilityStatsEntry is null"

    .line 139
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private makeChart(Ljava/lang/String;)V
    .locals 5

    const-string v0, "RSSI"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;->createRssiChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "BcnCnt"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;->createBeaconChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "TxRetry"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;->createTxRetriesChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "TxGood"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;->createTxSuccessChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "TxBad"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;->createTxBadChart(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;

    move-result-object p1

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->clearPaths()V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxDomainValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxRangeValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->configureGraph(JJ)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getScatterRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setScatterRadius(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getMaxScatterDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setScatterDensity(F)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisLabels([Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisTick()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisTick(J)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisFormat()Ljava/text/Format;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisFormat(Ljava/text/Format;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisLabels()[Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setDomainAxisLabels([Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisOffset(J)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->showValueLabel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setLabelVisible(Z)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->addPath(Ljava/util/List;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->invalidateGraph()V

    return-void

    :cond_4
    const-string p0, "TimeHistoryChartPreference"

    const-string p1, "Unsupported chart"

    .line 100
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupSpinner(Landroid/view/View;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    sget v1, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    .line 57
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->getSpinnerArray()[Ljava/lang/String;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 61
    sget v0, Lcom/android/settings/R$layout;->sec_simple_spinner_dropdown_item:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public changeItem(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->makeChart(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "TimeHistoryChartPreference"

    const-string p1, "changeItem, but chart is null or stats is empty"

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected getSpinnerArray()[Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->time_history_entries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    sget v0, Lcom/android/settings/R$id;->chart_history_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->getUsabilityStats(Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 42
    sget p0, Lcom/android/settings/R$id;->chart_notification_no_available_log:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    sget p0, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 47
    :cond_0
    sget v1, Lcom/android/settings/R$id;->chart_notification_no_available_log:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    sget v1, Lcom/android/settings/R$id;->chart_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->setupSpinner(Landroid/view/View;)V

    return-void
.end method
