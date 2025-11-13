.class public Lcom/samsung/android/sdhms/SemThermalStats;
.super Ljava/lang/Object;
.source "SemThermalStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;,
        Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;,
        Lcom/samsung/android/sdhms/SemThermalStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemThermalStats;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemThermalStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemThermalStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->tempHistoryList:Ljava/util/List;

    .line 96
    sget-object v0, Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->cpuFreqHistoryList:Ljava/util/List;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemThermalStats$Builder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->-$$Nest$fgettempHistoryList(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->tempHistoryList:Ljava/util/List;

    .line 88
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$Builder;->-$$Nest$fgetcpuFreqHistoryList(Lcom/samsung/android/sdhms/SemThermalStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->cpuFreqHistoryList:Ljava/util/List;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCpuMaxFrequencyThrottledHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$CpuMaxFrequencyThrottledHistoryItem;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->cpuFreqHistoryList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTemperatureHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->tempHistoryList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->tempHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemThermalStats;->cpuFreqHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 129
    return-void
.end method
