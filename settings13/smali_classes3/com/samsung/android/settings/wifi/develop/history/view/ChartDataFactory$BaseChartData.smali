.class public abstract Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.super Ljava/lang/Object;
.source "ChartDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseChartData"
.end annotation


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mEndTime:J

.field protected mMaxDomainValue:J

.field protected mMaxRangeValue:J

.field protected mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSecondPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mEndTime:J

    .line 51
    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    return-void
.end method


# virtual methods
.method protected getDomainAxisFormat()Ljava/text/Format;
    .locals 0

    .line 61
    sget-object p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method protected getDomainAxisLabels()[Ljava/util/Date;
    .locals 4

    .line 55
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 56
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mEndTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return-object p0
.end method

.method protected getDomainAxisTick()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method protected getMaxDomainValue()J
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method protected getMaxRangeValue()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    return-wide v0
.end method

.method protected getMaxScatterDensity()F
    .locals 0

    const p0, 0x3e99999a    # 0.3f

    return p0
.end method

.method protected getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    return-object p0
.end method

.method protected getScatterRadius()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getSecondPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    return-object p0
.end method

.method protected getStartTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    return-wide v0
.end method

.method public abstract getValueAxisLabels()[Ljava/lang/CharSequence;
.end method

.method public abstract getValueAxisOffset()J
.end method

.method protected showValueLabel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
