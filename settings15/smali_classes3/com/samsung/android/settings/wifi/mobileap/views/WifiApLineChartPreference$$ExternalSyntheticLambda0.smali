.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# instance fields
.field public final synthetic f$0:Lcom/github/mikephil/charting/charts/LineChart;


# direct methods
.method public synthetic constructor <init>(Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$$ExternalSyntheticLambda0;->f$0:Lcom/github/mikephil/charting/charts/LineChart;

    return-void
.end method


# virtual methods
.method public final getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 0

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$$ExternalSyntheticLambda0;->f$0:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    return p0
.end method
