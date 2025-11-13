.class public final Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemThermalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist cpuMaxFreq:I

.field private blacklist updatedTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcpuMaxFreq(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->cpuMaxFreq:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdatedTime(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->updatedTime:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)V

    return-object v0
.end method

.method public blacklist cpuMaxFrequency(I)Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->cpuMaxFreq:I

    return-object p0
.end method

.method public blacklist updatedTime(J)Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->updatedTime:J

    return-object p0
.end method
