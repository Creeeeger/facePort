.class public final Landroid/telephony/TelephonyHistogram;
.super Ljava/lang/Object;
.source "TelephonyHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o ABSENT:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist MAX_HISTORY_LINES:I = 0x0

.field private static final greylist-max-o PRESENT:I = 0x1

.field private static final greylist-max-o RANGE_CALCULATION_COUNT:I = 0xa

.field public static final whitelist TELEPHONY_CATEGORY_RIL:I = 0x1

.field private static final blacklist TIME_UPDATE_MILLIS:J


# instance fields
.field private greylist-max-o mAverageTimeMs:I

.field private final greylist-max-o mBucketCount:I

.field private final greylist-max-o mBucketCounters:[I

.field private final greylist-max-o mBucketEndPoints:[I

.field private final greylist-max-o mCategory:I

.field private blacklist mHistory:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mId:I

.field private greylist-max-o mInitialTimings:[I

.field private blacklist mLastUpdateTime:J

.field private greylist-max-o mMaxTimeMs:I

.field private greylist-max-o mMinTimeMs:I

.field private greylist-max-o mSampleCount:I

.field private blacklist mTermAverageTimeMs:I

.field private blacklist mTermMaxTimeMs:I

.field private blacklist mTermMinTimeMs:I

.field private blacklist mTermSampleCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 91
    const/16 v0, 0x18

    sput v0, Landroid/telephony/TelephonyHistogram;->MAX_HISTORY_LINES:I

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/telephony/TelephonyHistogram;->TIME_UPDATE_MILLIS:J

    .line 400
    new-instance v0, Landroid/telephony/TelephonyHistogram$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyHistogram$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "id"    # I
    .param p3, "bucketCount"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/telephony/TelephonyHistogram;-><init>(IIIZ)V

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(IIIZ)V
    .locals 7
    .param p1, "category"    # I
    .param p2, "id"    # I
    .param p3, "bucketCount"    # I
    .param p4, "bHistory"    # Z

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 96
    const/4 v2, 0x0

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 96
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 97
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 98
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 99
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 110
    const/4 v4, 0x1

    if-le p3, v4, :cond_1

    .line 113
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 114
    iput p2, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 115
    const v5, 0x7fffffff

    iput v5, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 116
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 117
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 118
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 119
    const/16 v5, 0xa

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 120
    iput p3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 121
    add-int/lit8 v5, p3, -0x1

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 122
    new-array v5, p3, [I

    iput-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 125
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 126
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 127
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 128
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 130
    if-eqz p4, :cond_0

    .line 131
    new-instance v5, Ljava/util/ArrayDeque;

    sget v6, Landroid/telephony/TelephonyHistogram;->MAX_HISTORY_LINES:I

    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v5, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    .line 132
    invoke-direct {p0, v0, v1}, Landroid/telephony/TelephonyHistogram;->getCurrentDiffTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of buckets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 97
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 98
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 99
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 426
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 427
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 428
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 429
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 430
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/TelephonyHistogram;)V
    .locals 2
    .param p1, "th"    # Landroid/telephony/TelephonyHistogram;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 97
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 98
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 99
    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 138
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    .line 139
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    .line 140
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 141
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 142
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 143
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 144
    invoke-direct {p1}, Landroid/telephony/TelephonyHistogram;->getInitialTimings()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 145
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    .line 146
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    .line 147
    invoke-virtual {p1}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    .line 150
    iget v0, p1, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 151
    iget v0, p1, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 152
    iget v0, p1, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 153
    iget v0, p1, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 154
    iget-wide v0, p1, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    iput-wide v0, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 155
    iget-object v0, p1, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    .line 157
    return-void
.end method

.method private greylist-max-o addToBucketCounter([I[II)V
    .locals 2
    .param p1, "bucketEndPoints"    # [I
    .param p2, "bucketCounters"    # [I
    .param p3, "time"    # I

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 224
    aget v1, p1, v0

    if-gt p3, v1, :cond_0

    .line 225
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 226
    return-void

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 230
    return-void
.end method

.method private blacklist appendHistory(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "stamp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[Ljava/lang/Integer;>;"
    :goto_0
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    sget v1, Landroid/telephony/TelephonyHistogram;->MAX_HISTORY_LINES:I

    if-lt v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method private greylist-max-o calculateBucketEndPoints([I)V
    .locals 4
    .param p1, "bucketEndPoints"    # [I

    .line 233
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    if-ge v0, v1, :cond_0

    .line 234
    iget v2, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    sub-int/2addr v3, v2

    mul-int/2addr v3, v0

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 235
    .local v2, "endPt":I
    add-int/lit8 v1, v0, -0x1

    aput v2, p1, v1

    .line 233
    .end local v2    # "endPt":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 241
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;[Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 244
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/telephony/TelephonyHistogram;->getCalculateTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] min = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " avg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[Ljava/lang/Integer;>;"
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method private blacklist dumpRest(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 250
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 251
    .local v2, "diffTime":J
    const-wide/16 v4, 0x0

    .line 252
    .local v4, "time":J
    sget-wide v6, Landroid/telephony/TelephonyHistogram;->TIME_UPDATE_MILLIS:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 253
    sub-long v4, v2, v6

    .line 255
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v5}, Landroid/telephony/TelephonyHistogram;->getCurrentDiffTime(J)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroid/telephony/TelephonyHistogram;->getCalculateTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(dump)] min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " avg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private blacklist getCalculateTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getCurrentDiffTime(J)J
    .locals 2
    .param p1, "delta"    # J

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o getDeepCopyOfArray([I)[I
    .locals 3
    .param p1, "array"    # [I

    .line 216
    array-length v0, p1

    new-array v0, v0, [I

    .line 217
    .local v0, "clone":[I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v0
.end method

.method private greylist-max-o getInitialTimings()[I
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    return-object v0
.end method

.method private blacklist updateLogging(I)V
    .locals 11
    .param p1, "time"    # I

    .line 293
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 297
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 298
    .local v2, "diffTime":J
    sget-wide v4, Landroid/telephony/TelephonyHistogram;->TIME_UPDATE_MILLIS:J

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-gez v6, :cond_4

    .line 299
    iget v4, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    if-nez v4, :cond_1

    .line 300
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 301
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 302
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 303
    iput v7, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    goto :goto_0

    .line 305
    :cond_1
    iget v5, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    if-ge p1, v5, :cond_2

    .line 306
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 308
    :cond_2
    iget v5, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    if-le p1, v5, :cond_3

    .line 309
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 311
    :cond_3
    iget v5, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    int-to-long v5, v5

    int-to-long v8, v4

    mul-long/2addr v5, v8

    int-to-long v8, p1

    add-long/2addr v5, v8

    .line 312
    .local v5, "totalTime":J
    add-int/2addr v4, v7

    iput v4, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    int-to-long v7, v4

    div-long v7, v5, v7

    long-to-int v4, v7

    iput v4, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 313
    .end local v5    # "totalTime":J
    goto :goto_0

    .line 315
    :cond_4
    sub-long v8, v2, v4

    invoke-direct {p0, v8, v9}, Landroid/telephony/TelephonyHistogram;->getCurrentDiffTime(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    iget v10, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    iget v9, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v9, 0x2

    iget v10, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/telephony/TelephonyHistogram;->appendHistory(Landroid/util/Pair;)V

    .line 316
    rem-long v4, v2, v4

    sub-long v4, v0, v4

    iput-wide v4, p0, Landroid/telephony/TelephonyHistogram;->mLastUpdateTime:J

    .line 317
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMinTimeMs:I

    .line 318
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermMaxTimeMs:I

    .line 319
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mTermAverageTimeMs:I

    .line 320
    iput v7, p0, Landroid/telephony/TelephonyHistogram;->mTermSampleCount:I

    .line 322
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addTimeTaken(I)V
    .locals 7
    .param p1, "time"    # I

    .line 333
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyHistogram;->updateLogging(I)V

    .line 337
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    if-ge p1, v3, :cond_1

    .line 352
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 354
    :cond_1
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    if-le p1, v3, :cond_2

    .line 355
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 357
    :cond_2
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    int-to-long v3, v3

    int-to-long v5, v0

    mul-long/2addr v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 358
    .local v3, "totalTime":J
    add-int/2addr v0, v2

    iput v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    int-to-long v5, v0

    div-long v5, v3, v5

    long-to-int v5, v5

    iput v5, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    .line 360
    if-ge v0, v1, :cond_3

    .line 361
    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    sub-int/2addr v0, v2

    aput p1, v1, v0

    goto :goto_3

    .line 362
    :cond_3
    if-ne v0, v1, :cond_5

    .line 363
    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    sub-int/2addr v0, v2

    aput p1, v5, v0

    .line 366
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 369
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 370
    iget-object v2, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    iget-object v6, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v6, v6, v0

    invoke-direct {p0, v2, v5, v6}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "j":I
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    goto :goto_3

    .line 374
    :cond_5
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    iget-object v1, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    goto :goto_3

    .line 338
    .end local v3    # "totalTime":J
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 339
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    .line 340
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    .line 341
    iput p1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    goto :goto_2

    .line 343
    :cond_7
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    .line 345
    :goto_2
    iput v2, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    .line 346
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 347
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aput p1, v0, v1

    .line 348
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 349
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 378
    :goto_3
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 259
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mHistory:Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 263
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 264
    invoke-virtual {p0}, Landroid/telephony/TelephonyHistogram;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 267
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 268
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->dumpRest(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 273
    return-void
.end method

.method public whitelist getAverageTime()I
    .locals 1

    .line 176
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    return v0
.end method

.method public whitelist getBucketCount()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    return v0
.end method

.method public whitelist getBucketCounters()[I
    .locals 4

    .line 202
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 203
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [I

    .line 204
    .local v1, "tempEndPoints":[I
    new-array v0, v0, [I

    .line 205
    .local v0, "tempBucketCounters":[I
    invoke-direct {p0, v1}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 206
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    if-ge v2, v3, :cond_0

    .line 207
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    aget v3, v3, v2

    invoke-direct {p0, v1, v0, v3}, Landroid/telephony/TelephonyHistogram;->addToBucketCounter([I[II)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "j":I
    :cond_0
    return-object v0

    .line 211
    .end local v0    # "tempBucketCounters":[I
    .end local v1    # "tempEndPoints":[I
    :cond_1
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBucketEndPoints()[I
    .locals 3

    .line 192
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 193
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    .line 194
    .local v0, "tempEndPoints":[I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->calculateBucketEndPoints([I)V

    .line 195
    return-object v0

    .line 197
    .end local v0    # "tempEndPoints":[I
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyHistogram;->getDeepCopyOfArray([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCategory()I
    .locals 1

    .line 160
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    return v0
.end method

.method public whitelist getMaxTime()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    return v0
.end method

.method public whitelist getMinTime()I
    .locals 1

    .line 168
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    return v0
.end method

.method public whitelist getSampleCount()I
    .locals 1

    .line 180
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Histogram id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Time(ms): min = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " avg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "basic":Ljava/lang/String;
    iget v1, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 386
    return-object v0

    .line 388
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " Interval Endpoints:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "intervals":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    array-length v3, v3

    const-string v4, " "

    if-ge v2, v3, :cond_1

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "i":I
    :cond_1
    const-string v2, " Interval counters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 433
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMinTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mMaxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mAverageTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mSampleCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 442
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mInitialTimings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 445
    :goto_0
    iget v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketEndPoints:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 447
    iget-object v0, p0, Landroid/telephony/TelephonyHistogram;->mBucketCounters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 448
    return-void
.end method
