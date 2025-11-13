.class public abstract Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mMaxDomainValue:J

.field public mMaxRangeValue:J

.field public mPoints:Ljava/util/List;

.field public mSecondPoints:Ljava/util/List;

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    const/4 v0, 0x1

    invoke-static {v0, p1}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, p1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    return-void
.end method


# virtual methods
.method public final getDomainAxisLabels()[Ljava/util/Date;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public getDomainAxisTick()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public abstract getValueAxisLabels()[Ljava/lang/CharSequence;
.end method

.method public abstract getValueAxisOffset()J
.end method

.method public showValueLabel()Z
    .locals 0

    instance-of p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;

    return p0
.end method
