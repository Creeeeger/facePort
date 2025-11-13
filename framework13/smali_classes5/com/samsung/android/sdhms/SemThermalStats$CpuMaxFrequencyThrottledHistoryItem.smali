.class public Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;
.super Ljava/lang/Object;
.source "SemThermalStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemThermalStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuMaxFrequencyThrottledHistoryItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist cpuMaxFreq:I

.field private blacklist updatedTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->updatedTime:J

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->cpuMaxFreq:I

    .line 307
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->-$$Nest$fgetupdatedTime(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->updatedTime:J

    .line 298
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;->-$$Nest$fgetcpuMaxFreq(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->cpuMaxFreq:I

    .line 299
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->getUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->updatedTime:J

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->getCpuMaxFrequency()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->cpuMaxFreq:I

    .line 248
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCpuMaxFrequency()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->cpuMaxFreq:I

    return v0
.end method

.method public whitelist getUpdatedTimestamp()J
    .locals 2

    .line 256
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->updatedTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 337
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    iget v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->cpuMaxFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return-void
.end method
