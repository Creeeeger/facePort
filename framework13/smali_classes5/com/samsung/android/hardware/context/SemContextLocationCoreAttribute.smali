.class public Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextLocationCoreAttribute"


# instance fields
.field private blacklist mAccuracy:I

.field private blacklist mAction:I

.field private blacklist mBatchingSize:I

.field private blacklist mFenceId:I

.field private blacklist mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

.field private blacklist mLatitude:D

.field private blacklist mLocation:Landroid/location/Location;

.field private blacklist mLongitude:D

.field private blacklist mMinDistance:I

.field private blacklist mMinTime:I

.field private blacklist mMode:I

.field private blacklist mRadius:I

.field private blacklist mRawData:[I

.field private blacklist mRequestId:I

.field private blacklist mStatus:I

.field private blacklist mSuccessGpsCnt:I

.field private blacklist mTimeStamp:J

.field private blacklist mTotalGpsCnt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 124
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 125
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(IIDDIJ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 269
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 270
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 271
    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 272
    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 273
    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 274
    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 276
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "val"    # I

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 186
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 187
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 188
    if-nez p1, :cond_0

    .line 189
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 191
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 192
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    goto :goto_0

    .line 193
    :cond_1
    const/16 v0, 0x13

    if-ne p2, v0, :cond_2

    .line 194
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 197
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(IIIDDIII)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 152
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 153
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 154
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 155
    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 156
    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 157
    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 158
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 159
    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 161
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 242
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 243
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 244
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 245
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 247
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 217
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 218
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 219
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 220
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 221
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 223
    return-void
.end method

.method public constructor blacklist <init>(IIIJIIDF)V
    .locals 13
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "request_id"    # I
    .param p4, "period"    # J
    .param p6, "source"    # I
    .param p7, "flags"    # I
    .param p8, "max_power"    # D
    .param p10, "distance_thrs"    # F

    .line 303
    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 304
    move v1, p1

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 305
    move v2, p2

    iput v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 306
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 307
    new-instance v12, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    move-object v4, v12

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;-><init>(JIIDF)V

    iput-object v12, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 309
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/location/Location;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "location"    # Landroid/location/Location;

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 328
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 329
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 330
    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(II[I)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "rawData"    # [I

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 351
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 352
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 353
    array-length v1, p3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 354
    array-length v2, p3

    invoke-static {p3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 356
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 15

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const-string v2, "LongType"

    const-string v3, "This Type is default attribute type"

    const-string v4, "DoubleType"

    const-string v5, "SemContextLocationCoreAttribute"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "IntType"

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 526
    :pswitch_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v11, 0x10

    const-string v12, "FloatType"

    if-eq v1, v11, :cond_4

    const/16 v11, 0x11

    if-ne v1, v11, :cond_0

    goto/16 :goto_0

    .line 542
    :cond_0
    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 543
    new-array v1, v9, [I

    .line 544
    .local v1, "intType":[I
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v2, v1, v10

    .line 545
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 546
    .end local v1    # "intType":[I
    :cond_1
    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    .line 547
    new-array v1, v9, [I

    .line 548
    .restart local v1    # "intType":[I
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    aput v2, v1, v10

    .line 549
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 550
    .end local v1    # "intType":[I
    :cond_2
    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    .line 551
    new-array v1, v9, [J

    .line 552
    .local v1, "longType":[J
    new-array v2, v6, [D

    .line 553
    .local v2, "doubleType":[D
    new-array v3, v6, [F

    .line 554
    .local v3, "floatType":[F
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "stringType":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    aput-wide v13, v1, v10

    .line 556
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    aput-wide v13, v2, v10

    .line 557
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    aput-wide v13, v2, v9

    .line 558
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    aput-wide v13, v2, v7

    .line 559
    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getSpeed()F

    move-result v11

    aput v11, v3, v10

    .line 560
    iget-object v10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v10

    aput v10, v3, v9

    .line 561
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    aput v9, v3, v7

    .line 562
    const-string v7, "StringType"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 564
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 565
    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 567
    .end local v1    # "longType":[J
    .end local v2    # "doubleType":[D
    .end local v3    # "floatType":[F
    .end local v6    # "stringType":Ljava/lang/String;
    :cond_3
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    goto/16 :goto_1

    .line 528
    :cond_4
    :goto_0
    new-array v1, v6, [I

    .line 529
    .local v1, "intType":[I
    new-array v3, v9, [J

    .line 530
    .local v3, "longType":[J
    new-array v6, v9, [D

    .line 531
    .local v6, "doubleType":[D
    new-array v11, v9, [F

    .line 532
    .local v11, "floatType":[F
    iget v13, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v13, v1, v10

    .line 533
    iget-object v13, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v13, v13, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    aput v13, v1, v9

    .line 534
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v9, v9, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    aput v9, v1, v7

    .line 535
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v13, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    aput-wide v13, v3, v10

    .line 536
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v13, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    aput-wide v13, v6, v10

    .line 537
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v7, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    aput v7, v11, v10

    .line 538
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 539
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 540
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 541
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 510
    .end local v1    # "intType":[I
    .end local v3    # "longType":[J
    .end local v6    # "doubleType":[D
    .end local v11    # "floatType":[F
    :pswitch_2
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    .line 511
    new-array v1, v7, [D

    .line 512
    .local v1, "doubleType":[D
    new-array v3, v9, [I

    .line 513
    .local v3, "intType":[I
    new-array v6, v9, [J

    .line 514
    .local v6, "longType":[J
    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v11, v1, v10

    .line 515
    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v11, v1, v9

    .line 516
    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    aput v7, v3, v10

    .line 517
    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    aput-wide v11, v6, v10

    .line 518
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 519
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 520
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    .line 522
    .end local v1    # "doubleType":[D
    .end local v3    # "intType":[I
    .end local v6    # "longType":[J
    :cond_5
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    goto/16 :goto_1

    .line 475
    :pswitch_3
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v1, v9, :cond_6

    .line 476
    new-array v1, v7, [D

    .line 477
    .restart local v1    # "doubleType":[D
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 478
    .local v2, "intType":[I
    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v11, v1, v10

    .line 479
    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v11, v1, v9

    .line 480
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v3, v2, v10

    .line 481
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v3, v2, v9

    .line 482
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    aput v3, v2, v7

    .line 483
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v3, v2, v6

    .line 484
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 485
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_1

    .line 486
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_6
    if-ne v1, v7, :cond_7

    .line 487
    new-array v1, v9, [I

    .line 488
    .local v1, "intType":[I
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v10

    .line 489
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 490
    .end local v1    # "intType":[I
    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 491
    new-array v1, v6, [I

    .line 492
    .restart local v1    # "intType":[I
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v10

    .line 493
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v2, v1, v9

    .line 494
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    aput v2, v1, v7

    .line 495
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 496
    .end local v1    # "intType":[I
    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 497
    new-array v1, v7, [I

    .line 498
    .restart local v1    # "intType":[I
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    aput v2, v1, v10

    .line 499
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    aput v2, v1, v9

    .line 500
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 501
    .end local v1    # "intType":[I
    :cond_9
    const/16 v2, 0x17

    if-ne v1, v2, :cond_a

    .line 502
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    array-length v2, v1

    new-array v2, v2, [I

    .line 503
    .restart local v2    # "intType":[I
    array-length v3, v1

    invoke-static {v1, v10, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 506
    .end local v2    # "intType":[I
    :cond_a
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    nop

    .line 573
    :goto_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const-string v2, "Mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const-string v3, "Action"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAttribute() mode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v1, 0x2f

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 577
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 8

    .line 364
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "SemContextLocationCoreAttribute"

    if-lt v0, v1, :cond_18

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    goto/16 :goto_3

    .line 370
    :cond_0
    const/4 v5, 0x1

    const-string v6, "Action value is wrong!!"

    if-nez v0, :cond_2

    .line 371
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    :cond_1
    const/16 v1, 0x17

    if-eq v0, v1, :cond_8

    .line 374
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v2

    .line 377
    :cond_2
    if-ne v0, v5, :cond_4

    .line 378
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_3

    const/16 v1, 0xe

    if-le v0, v1, :cond_8

    .line 380
    :cond_3
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v2

    .line 383
    :cond_4
    if-ne v0, v4, :cond_8

    .line 384
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    const/16 v4, 0x16

    if-le v0, v4, :cond_5

    goto :goto_0

    .line 389
    :cond_5
    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    .line 391
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    const-string v0, "FusedBatchOption is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v2

    .line 386
    :cond_7
    :goto_0
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v2

    .line 397
    :cond_8
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_9

    .line 398
    const-string v0, "FenceID is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v2

    .line 402
    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_a

    .line 403
    const-string v0, "Radius is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v2

    .line 407
    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_b

    .line 408
    const-string v0, "Status is wrong!1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v2

    .line 412
    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_c

    .line 413
    const-string v0, "TotalGpsCount is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v2

    .line 417
    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_d

    .line 418
    const-string v0, "Success gps count is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v2

    .line 422
    :cond_d
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_e

    .line 423
    const-string v0, "Minimum distance is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return v2

    .line 427
    :cond_e
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_f

    .line 428
    const-string v0, "Minimum time is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v2

    .line 432
    :cond_f
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_10

    .line 433
    const-string v0, "Accuracy is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v2

    .line 437
    :cond_10
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_11

    .line 438
    const-string v0, "Timestamp is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v2

    .line 442
    :cond_11
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v0, v6

    if-ltz v4, :cond_17

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_12

    goto :goto_2

    .line 447
    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v6

    if-ltz v4, :cond_16

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_13

    goto :goto_1

    .line 452
    :cond_13
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    if-gez v0, :cond_14

    .line 453
    const-string v0, "RequestId is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v2

    .line 457
    :cond_14
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    if-gez v0, :cond_15

    .line 458
    const-string v0, "BatchingSize is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v2

    .line 462
    :cond_15
    return v5

    .line 448
    :cond_16
    :goto_1
    const-string v0, "Latitude is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v2

    .line 443
    :cond_17
    :goto_2
    const-string v0, "Longitude is wrong"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v2

    .line 366
    :cond_18
    :goto_3
    const-string v0, "Mode value is wrong!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v2
.end method
