.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    return-void
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mChartDataModel:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

    float-to-int p1, p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;->mXaxisValueList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
