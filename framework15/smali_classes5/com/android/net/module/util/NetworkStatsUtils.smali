.class public Lcom/android/net/module/util/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "NetworkStatsUtils.java"


# static fields
.field private static final blacklist DEFAULT_NETWORK_ALL:I = -0x1

.field public static final blacklist LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final blacklist METERED_ALL:I = -0x1

.field private static final blacklist ROAMING_ALL:I = -0x1

.field private static final blacklist SET_ALL:I = -0x1

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_ALL:I = 0x1

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_EXACT:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constrain(III)I
    .locals 3

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "low("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > high("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist constrain(JJJ)J
    .locals 3

    cmp-long v0, p2, p4

    if-gtz v0, :cond_2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide v0, p4

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "low("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > high("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist convertBucketDefaultNetworkStatus(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist convertBucketMetered(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist convertBucketRoaming(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist convertBucketState(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist convertBucketTag(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;
    .locals 19

    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->convertBucketState(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->convertBucketTag(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->convertBucketMetered(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRoaming()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->convertBucketRoaming(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getDefaultNetworkStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->convertBucketDefaultNetworkStatus(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static blacklist fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;
    .locals 4

    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    invoke-static {v1}, Lcom/android/net/module/util/NetworkStatsUtils;->fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist multiplySafeByRational(JJJ)J
    .locals 18

    move-wide/from16 v0, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    mul-long v8, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    or-long v14, v10, v12

    const/16 v16, 0x1f

    ushr-long v14, v14, v16

    cmp-long v14, v14, v2

    if-eqz v14, :cond_3

    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    div-long v2, v8, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_2

    :cond_1
    move-wide/from16 v2, p2

    long-to-double v14, v2

    long-to-double v2, v0

    div-double/2addr v14, v2

    move-wide/from16 v2, p0

    move-wide/from16 v16, v4

    long-to-double v4, v2

    mul-double/2addr v14, v4

    double-to-long v4, v14

    return-wide v4

    :cond_2
    move-wide/from16 v2, p0

    move-wide/from16 v16, v4

    goto :goto_0

    :cond_3
    move-wide/from16 v2, p0

    move-wide/from16 v16, v4

    :goto_0
    div-long v4, v8, v0

    return-wide v4

    :cond_4
    move-wide/from16 v2, p0

    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "Invalid Denominator"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
