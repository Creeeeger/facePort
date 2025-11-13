.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;

    return-void
.end method


# virtual methods
.method public final getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 0

    sget-object p1, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->COLOR_PALLETS:[Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    return p0
.end method
