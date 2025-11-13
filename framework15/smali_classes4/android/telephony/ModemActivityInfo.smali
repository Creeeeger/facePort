.class public final Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$TxPowerLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TX_POWER_LEVELS:I = 0x5

.field public static final whitelist TX_POWER_LEVEL_0:I = 0x0

.field public static final whitelist TX_POWER_LEVEL_1:I = 0x1

.field public static final whitelist TX_POWER_LEVEL_2:I = 0x2

.field public static final whitelist TX_POWER_LEVEL_3:I = 0x3

.field public static final whitelist TX_POWER_LEVEL_4:I = 0x4

.field private static final blacklist TX_POWER_RANGES:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private greylist-max-o mIdleTimeMs:I

.field private blacklist mSizeOfSpecificInfo:I

.field private greylist-max-o mSleepTimeMs:I

.field private greylist-max-o mTimestamp:J

.field private blacklist mTotalRxTimeMs:I

.field private blacklist mTotalTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Range;

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JII[II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v0, v0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p5, p6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v1, v0, v2

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v0, v0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(JJJ[IJ)V
    .locals 13

    move-wide/from16 v0, p3

    long-to-int v5, v0

    move-wide/from16 v9, p5

    long-to-int v6, v9

    move-wide/from16 v11, p8

    long-to-int v8, v11

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    return-void
.end method

.method public constructor blacklist <init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .locals 6

    long-to-int v3, p3

    long-to-int v4, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    return-void
.end method

.method public static whitelist getNumTxPowerLevels()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ModemActivityInfo;

    iget-wide v3, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iget-wide v5, v2, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object v4, v2, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;
    .locals 13

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v4

    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    if-ne v4, v5, :cond_3

    if-nez v2, :cond_3

    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_1

    iget-object v5, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    iget-object v6, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    new-array v6, v7, [I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    nop

    invoke-virtual {p1, v8, v4, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v9

    invoke-virtual {p0, v8, v4, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    new-instance v7, Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v4, v5}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v8

    invoke-virtual {p0, v4, v5}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-direct {v7, v4, v5, v6, v8}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v7, v0, v1

    goto :goto_4

    :cond_1
    new-array v5, v7, [I

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_2

    nop

    invoke-virtual {p1, v6, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v8

    invoke-virtual {p0, v6, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    new-instance v6, Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v7

    invoke-virtual {p0, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {v6, v4, v8, v5, v7}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v6, v0, v1

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    if-nez v2, :cond_5

    iget-object v3, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v9, Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    move-object v1, v9

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    return-object v9
.end method

.method public whitelist getIdleTimeMillis()J
    .locals 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getReceiveTimeMillis()J
    .locals 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(I)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(II)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .locals 2

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getSpecificInfoFrequencyRange(I)I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v0

    return v0
.end method

.method public blacklist getSpecificInfoLength()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    return v0
.end method

.method public blacklist getSpecificInfoRat(I)I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTransmitDurationMillisAtPowerLevel(I)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(II)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(III)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransmitPowerRange(I)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(I)[I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(II)[I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public greylist-max-o isEmpty()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public greylist-max-o isValid()Z
    .locals 7

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerValid()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerValid()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    nop

    :goto_1
    return v1
.end method

.method public greylist-max-o setIdleTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return-void
.end method

.method public blacklist setIdleTimeMillis(J)V
    .locals 1

    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    return-void
.end method

.method public blacklist setReceiveTimeMillis(IIJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .locals 1

    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    return-void
.end method

.method public greylist-max-o setSleepTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return-void
.end method

.method public blacklist setSleepTimeMillis(J)V
    .locals 1

    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-void
.end method

.method public blacklist setTransmitTimeMillis(II[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setTransmitTimeMillis(I[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityStatsTechSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
