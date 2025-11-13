.class public Landroid/hardware/scontext/SContextSLocationCoreAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSLocationCoreAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextSLocationCoreAttribute"


# instance fields
.field private blacklist mAccuracy:I

.field private blacklist mAction:I

.field private blacklist mFenceId:I

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mMin_Ditance:I

.field private blacklist mMin_Time:I

.field private blacklist mMode:I

.field private blacklist mRadius:I

.field private blacklist mStatus:I

.field private blacklist mSuccessGpsCnt:I

.field private blacklist mTimeStamp:J

.field private blacklist mTotalGpsCnt:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 48
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 77
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 78
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 79
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(IIDDIJ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .line 211
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 212
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 213
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 214
    iput-wide p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 215
    iput-wide p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 216
    iput p7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 217
    iput-wide p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 218
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 219
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I

    .line 133
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 134
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 135
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 136
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 137
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(IIIDDIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .line 105
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 106
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 107
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 108
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 109
    iput p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 110
    iput p9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 111
    iput p10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 112
    iput-wide p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 113
    iput-wide p6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 114
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .line 183
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 184
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 185
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 186
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 187
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 188
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 189
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .line 157
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 34
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 37
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    .line 38
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    .line 42
    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    .line 158
    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    .line 159
    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    .line 160
    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    .line 161
    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    .line 162
    iput p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    .line 163
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    .line 164
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 12

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    const-string v2, "This Type is default attribute type"

    const-string v3, "DoubleType"

    const-string v4, "SContextSLocationCoreAttribute"

    const-string v5, "IntType"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 341
    :pswitch_0
    iget v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v9, 0x8

    if-ne v1, v9, :cond_0

    .line 342
    new-array v1, v6, [D

    .line 343
    .local v1, "doubleType":[D
    new-array v2, v8, [I

    .line 344
    .local v2, "intType":[I
    new-array v6, v8, [J

    .line 345
    .local v6, "longType":[J
    iget-wide v9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v9, v1, v7

    .line 346
    iget-wide v9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v9, v1, v8

    .line 347
    iget v8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    aput v8, v2, v7

    .line 348
    iget-wide v8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v8, v6, v7

    .line 349
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 350
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 351
    const-string v3, "LongType"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 353
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    .end local v6    # "longType":[J
    :cond_0
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    goto :goto_0

    .line 310
    :pswitch_1
    iget v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/4 v9, 0x3

    if-ne v1, v8, :cond_1

    .line 311
    new-array v1, v6, [D

    .line 312
    .restart local v1    # "doubleType":[D
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 313
    .restart local v2    # "intType":[I
    iget-wide v10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v10, v1, v7

    .line 314
    iget-wide v10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v10, v1, v8

    .line 315
    iget v10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v10, v2, v7

    .line 316
    iget v7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v7, v2, v8

    .line 317
    iget v7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v7, v2, v6

    .line 318
    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v6, v2, v9

    .line 319
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 320
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 321
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 322
    new-array v1, v8, [I

    .line 323
    .local v1, "intType":[I
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v7

    .line 324
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 325
    .end local v1    # "intType":[I
    :cond_2
    const/4 v3, 0x7

    if-ne v1, v3, :cond_3

    .line 326
    new-array v1, v9, [I

    .line 327
    .restart local v1    # "intType":[I
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v7

    .line 328
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v2, v1, v8

    .line 329
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    aput v2, v1, v6

    .line 330
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 331
    .end local v1    # "intType":[I
    :cond_3
    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    .line 332
    new-array v1, v6, [I

    .line 333
    .restart local v1    # "intType":[I
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    aput v2, v1, v7

    .line 334
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    aput v2, v1, v8

    .line 335
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 337
    .end local v1    # "intType":[I
    :cond_4
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    nop

    .line 359
    :goto_0
    iget v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    const-string v2, "Mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    iget v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const-string v3, "Action"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAttribute() mode : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v1, 0x2f

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 363
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 224
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "SContextSLocationCoreAttribute"

    if-lt v0, v1, :cond_12

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    goto/16 :goto_2

    .line 230
    :cond_0
    const-string v5, "Action value is wrong!!"

    if-nez v0, :cond_2

    .line 231
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 233
    :cond_1
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v2

    .line 236
    :cond_2
    if-ne v0, v4, :cond_4

    .line 237
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_3

    const/16 v1, 0xe

    if-le v0, v1, :cond_4

    .line 239
    :cond_3
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v2

    .line 244
    :cond_4
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_5

    .line 245
    const-string v0, "FenceID is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v2

    .line 249
    :cond_5
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_6

    .line 250
    const-string v0, "Radius is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v2

    .line 254
    :cond_6
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_7

    .line 255
    const-string v0, "Status is wrong!1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v2

    .line 259
    :cond_7
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_8

    .line 260
    const-string v0, "TotalGpsCount is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v2

    .line 264
    :cond_8
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_9

    .line 265
    const-string v0, "Success gps count is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v2

    .line 269
    :cond_9
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    if-gez v0, :cond_a

    .line 270
    const-string v0, "Minimun distnace is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v2

    .line 274
    :cond_a
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    if-gez v0, :cond_b

    .line 275
    const-string v0, "Minimun time is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v2

    .line 279
    :cond_b
    iget v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_c

    .line 280
    const-string v0, "Accuracy is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v2

    .line 284
    :cond_c
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-gez v0, :cond_d

    .line 285
    const-string v0, "Timestamp is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v2

    .line 289
    :cond_d
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v5, v0, v5

    if-ltz v5, :cond_11

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_e

    goto :goto_1

    .line 294
    :cond_e
    iget-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v5, v0, v5

    if-ltz v5, :cond_10

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_f

    goto :goto_0

    .line 298
    :cond_f
    return v4

    .line 295
    :cond_10
    :goto_0
    const-string v0, "Latitidue is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v2

    .line 290
    :cond_11
    :goto_1
    const-string v0, "Longitude is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v2

    .line 226
    :cond_12
    :goto_2
    const-string v0, "Mode value is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v2
.end method
