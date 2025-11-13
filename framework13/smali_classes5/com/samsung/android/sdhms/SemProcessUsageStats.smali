.class public Lcom/samsung/android/sdhms/SemProcessUsageStats;
.super Ljava/lang/Object;
.source "SemProcessUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;,
        Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist cpuTime:J

.field private blacklist endTime:J

.field private blacklist procUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist startTime:J

.field private blacklist uptime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemProcessUsageStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->startTime:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->endTime:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->uptime:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->cpuTime:J

    .line 161
    sget-object v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->procUsageList:Ljava/util/List;

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->-$$Nest$fgetstartTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->startTime:J

    .line 147
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->-$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->endTime:J

    .line 148
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->-$$Nest$fgetuptime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->uptime:J

    .line 149
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->-$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->cpuTime:J

    .line 150
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->-$$Nest$fgetprocUsageList(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->procUsageList:Ljava/util/List;

    .line 151
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemProcessUsageStats;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemProcessUsageStats;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats;->getStartTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->startTime:J

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats;->getEndTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->endTime:J

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemProcessUsageStats;->getProcessUsageHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->procUsageList:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCpuTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->cpuTime:J

    return-wide v0
.end method

.method public whitelist getEndTimestamp()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->endTime:J

    return-wide v0
.end method

.method public whitelist getProcessUsageHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->procUsageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStartTimestamp()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->startTime:J

    return-wide v0
.end method

.method public whitelist getUptime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->uptime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats;->procUsageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 197
    return-void
.end method
