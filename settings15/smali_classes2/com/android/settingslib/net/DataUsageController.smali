.class public final Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field public static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    return-void
.end method


# virtual methods
.method public final getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    move-object v9, v8

    goto :goto_2

    :cond_2
    array-length v3, v1

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v6}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v9, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    move-wide v14, v3

    move-wide v12, v5

    goto :goto_4

    :cond_5
    const-wide v5, 0x90321000L

    sub-long v5, v3, v5

    move-wide v12, v3

    move-wide v14, v5

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v14

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/net/DataUsageController;->getUsageLevel(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-string v0, "Failed to get data usage, no entry data"

    const-string v1, "DataUsageController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_6
    new-instance v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    iput-wide v1, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v10, v0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v16, 0x10010

    const/16 v17, 0x0

    move-wide v6, v12

    move-wide v12, v14

    move-wide v3, v14

    move-wide v14, v6

    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    iput-wide v3, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    if-eqz v9, :cond_9

    iget-wide v0, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    goto :goto_5

    :cond_7
    move-wide v0, v2

    :goto_5
    iput-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v0, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    move-wide v3, v0

    goto :goto_6

    :cond_8
    move-wide v3, v2

    :goto_6
    iput-wide v3, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :goto_7
    return-object v5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    aget v0, v1, v0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public final getUsageLevel(Landroid/net/NetworkTemplate;JJ)J
    .locals 7

    const-string v0, "DataUsageController"

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1

    :cond_0
    const-string p0, "Failed to get data usage, no entry data"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to get data usage, remote call failed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method
