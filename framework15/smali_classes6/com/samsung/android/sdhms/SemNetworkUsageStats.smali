.class public Lcom/samsung/android/sdhms/SemNetworkUsageStats;
.super Ljava/lang/Object;
.source "SemNetworkUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;,
        Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist endTime:J

.field private blacklist netUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist startTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->startTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->endTime:J

    sget-object v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->netUsageList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->-$$Nest$fgetstartTime(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->startTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->-$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->endTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->-$$Nest$fgetnetUsageList(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->netUsageList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->getStartTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->startTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->getEndTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->endTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->getNetworkUsageHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->netUsageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->endTime:J

    return-wide v0
.end method

.method public whitelist getNetworkUsageHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->netUsageList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->startTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;->netUsageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
