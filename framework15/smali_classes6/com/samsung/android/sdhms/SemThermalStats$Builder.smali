.class public final Lcom/samsung/android/sdhms/SemThermalStats$Builder;
.super Ljava/lang/Object;
.source "SemThermalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemThermalStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist cpuFreqHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist tempHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcpuFreqHistoryList(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->cpuFreqHistoryList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettempHistoryList(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->tempHistoryList:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemThermalStats;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemThermalStats;-><init>(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)V

    return-object v0
.end method

.method public blacklist cpuFreqHistoryList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemThermalStats$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemThermalStats$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->cpuFreqHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->cpuFreqHistoryList:Ljava/util/List;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->cpuFreqHistoryList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->updatedTime(J)Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->cpuMaxFrequency(I)Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->build()Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->cpuFreqHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist tempHistoryList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemThermalStats$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemThermalStats$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->tempHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->tempHistoryList:Ljava/util/List;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->tempHistoryList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->updatedTime(J)Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->skinTemperature(I)Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->build()Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->tempHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
