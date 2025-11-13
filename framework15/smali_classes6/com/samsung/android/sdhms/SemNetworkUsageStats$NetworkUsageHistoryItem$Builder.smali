.class public final Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemNetworkUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist packageName:Ljava/lang/String;

.field private blacklist uid:I

.field private blacklist usage:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpackageName(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->usage:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)V

    return-object v0
.end method

.method public blacklist packageName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist uid(I)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->uid:I

    return-object p0
.end method

.method public blacklist usage(J)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->usage:J

    return-object p0
.end method
