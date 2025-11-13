.class public Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;
.super Landroid/widget/FrameLayout;
.source "HistoryView.java"


# instance fields
.field private mDomainAxisFormat:Ljava/text/Format;

.field private final mDomainAxisLabels:[Landroid/widget/TextView;

.field private mDomainAxisValues:[Ljava/lang/Object;

.field private final mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

.field private final mLegend1:Landroid/widget/TextView;

.field private final mLegend2:Landroid/widget/TextView;

.field private mMaxDomainValue:J

.field private final mValueAxisLabels:[Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateDomainAxisLabels(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->updateDomainAxisLabels(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->wifi_history_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget p1, Lcom/android/settings/R$id;->wifi_history_graph:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/android/settings/R$id;->wifi_history_label_top:I

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    sget v0, Lcom/android/settings/R$id;->wifi_history_label_middle:I

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    sget v0, Lcom/android/settings/R$id;->wifi_history_label_bottom:I

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    new-array p2, v3, [Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/android/settings/R$id;->wifi_history_label_start:I

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p2, v1

    sget v0, Lcom/android/settings/R$id;->wifi_history_label_end:I

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p2, v2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    .line 48
    sget p2, Lcom/android/settings/R$id;->wifi_history_legend1:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    sget p2, Lcom/android/settings/R$id;->wifi_history_legend2:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->addChartListener(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;)V

    return-void
.end method

.method private updateDomainAxisLabels(FF)V
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 150
    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 151
    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mMaxDomainValue:J

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisFormat:Ljava/text/Format;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    :goto_0
    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 158
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    long-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-long v7, p1

    add-long/2addr v5, v7

    .line 160
    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {v0, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length p1, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    return-void

    .line 165
    :cond_2
    new-instance p1, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    array-length v4, v3

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 166
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    mul-float/2addr v2, v5

    float-to-long v5, v2

    sub-long/2addr v3, v5

    .line 168
    invoke-virtual {p1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 169
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length p2, p0

    sub-int/2addr p2, v1

    aget-object p0, p0, p2

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length p2, p1

    if-ge v1, p2, :cond_4

    .line 172
    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->addPath(Ljava/util/List;)V

    return-void
.end method

.method public addSecondPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->addSecondPath(Ljava/util/List;)V

    return-void
.end method

.method public clearPaths()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->clearPaths()V

    return-void
.end method

.method public configureGraph(JJ)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mMaxDomainValue:J

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setMax(JJ)V

    return-void
.end method

.method public invalidateGraph()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->invalidateGraph()V

    return-void
.end method

.method public setDomainAxisFormat(Ljava/text/Format;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisFormat:Ljava/text/Format;

    return-void
.end method

.method public setDomainAxisLabels([Ljava/lang/Object;)V
    .locals 2

    .line 178
    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    return-void

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDomainAxisTick(J)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setValueAxisTick(J)V

    return-void
.end method

.method public setLabelVisible(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setShowValueLabel(Z)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setPrimaryColor(I)V

    return-void
.end method

.method public setPrimaryLegend(Ljava/lang/String;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setScatterDensity(F)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setScatterDensity(F)V

    return-void
.end method

.method public setScatterRadius(I)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setScatterRadius(I)V

    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setSecondaryColor(I)V

    return-void
.end method

.method public setSecondaryLegend(Ljava/lang/String;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setValueAxisLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 139
    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mValueAxisLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 143
    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setValueAxisOffset(J)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->setValueAxisOffset(J)V

    return-void
.end method
