.class public final Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemProcessUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist pid:I

.field private blacklist processName:Ljava/lang/String;

.field private blacklist uid:I

.field private blacklist usage:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->pid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprocessName(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->processName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->usage:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)V

    return-object v0
.end method

.method public blacklist pid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->pid:I

    return-object p0
.end method

.method public blacklist processName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist uid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->uid:I

    return-object p0
.end method

.method public blacklist usage(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->usage:J

    return-object p0
.end method
