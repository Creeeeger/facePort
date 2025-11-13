.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;
.super Landroidx/preference/Preference;
.source "CuBarChart.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBand:I

.field private mBandInfo:Landroid/widget/TextView;

.field private mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

.field private mCuInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, "NearbyWifi.CuBarChart"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "NearbyWifi.CuBarChart"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "NearbyWifi.CuBarChart"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "NearbyWifi.CuBarChart"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x50

    .line 68
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_cu_bar_chart:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->chart_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->band_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->setBandInfo()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->updateChartItem()V

    return-void
.end method

.method public setBandInfo()V
    .locals 2

    .line 89
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_development_nearbywifi_6g_cu_chart_title:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_development_nearbywifi_5g_cu_chart_title:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBandInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_development_nearbywifi_24g_cu_chart_title:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public setChartItem(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mBand:I

    .line 85
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    return-void
.end method

.method public updateChartItem()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setYaxis()V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mCuInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;

    .line 128
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    .line 129
    iget v3, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->channel:I

    iget v4, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->cu:I

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->frequency:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setCu(III)V

    const/16 v1, 0x50

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateChartItem(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->TAG:Ljava/lang/String;

    const-string p1, "mChartLayout is null, so cannot update chart items."

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setYaxis()V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;

    .line 114
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;-><init>(Landroid/content/Context;)V

    .line 115
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->channel:I

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->cu:I

    iget v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->frequency:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setCu(III)V

    const/16 v0, 0x50

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;->mChartLayout:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChartLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
