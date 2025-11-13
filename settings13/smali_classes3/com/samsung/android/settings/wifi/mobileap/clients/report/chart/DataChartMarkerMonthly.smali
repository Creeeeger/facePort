.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;
.source "DataChartMarkerMonthly.java"


# instance fields
.field private chartValue:Lcom/github/mikephil/charting/charts/BarChart;

.field mMapDateEntriesMonthly:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkerXLabelText:Landroid/widget/TextView;

.field private mMarkerYValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    sget v5, Lcom/android/settings/R$layout;->common_marker:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;II)V

    .line 28
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    .line 29
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->chartValue:Lcom/github/mikephil/charting/charts/BarChart;

    .line 30
    sget p1, Lcom/android/settings/R$id;->common_marker_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 31
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mIsRTL:Z

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 33
    sget p1, Lcom/android/settings/R$id;->chart_marker_x_label:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerXLabelText:Landroid/widget/TextView;

    .line 34
    sget p1, Lcom/android/settings/R$id;->chart_marker_y_value:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerYValueText:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->app_detail_chart_marker_layout_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerHeight:F

    return-void
.end method


# virtual methods
.method public bridge synthetic calculateLeftIndex(I)I
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->calculateLeftIndex(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;FF)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->draw(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public bridge synthetic getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->getOffsetForDrawingAtPoint(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 5

    .line 41
    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerXLabelText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v0

    float-to-int v0, v0

    if-lez v0, :cond_1

    move v1, v4

    .line 55
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    .line 56
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerYValueText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method

.method public bridge synthetic setMissingIndex(I)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->setMissingIndex(I)V

    return-void
.end method
