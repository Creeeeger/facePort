.class public Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;
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
    name = "TemperatureHistoryItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist skinTemp:I

.field private blacklist updatedTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->updatedTime:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->skinTemp:I

    .line 201
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->-$$Nest$fgetupdatedTime(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->updatedTime:J

    .line 192
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;->-$$Nest$fgetskinTemp(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->skinTemp:I

    .line 193
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->getUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->updatedTime:J

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->getSkinTemperature()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->skinTemp:I

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSkinTemperature()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->skinTemp:I

    return v0
.end method

.method public whitelist getUpdatedTimestamp()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->updatedTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 231
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->updatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget v0, p0, Lcom/samsung/android/sdhms/SemThermalStats$TemperatureHistoryItem;->skinTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void
.end method
