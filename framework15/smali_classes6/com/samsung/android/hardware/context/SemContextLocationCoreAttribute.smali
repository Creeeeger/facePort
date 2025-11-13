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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIDDIJ)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_0

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIIDDIII)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIIJIIDF)V
    .locals 13

    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    move v1, p1

    iput v1, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    move v2, p2

    iput v2, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    new-instance v12, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    move-object v4, v12

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;-><init>(JIIDF)V

    iput-object v12, v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/location/Location;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II[I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    array-length v1, p3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    array-length v2, p3

    invoke-static {p3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

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

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v11, 0x10

    const-string v12, "FloatType"

    if-eq v1, v11, :cond_4

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v11, 0x11

    if-ne v1, v11, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    new-array v1, v9, [I

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v2, v1, v10

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    new-array v1, v9, [I

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    aput v2, v1, v10

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    new-array v1, v9, [J

    new-array v2, v6, [D

    new-array v3, v6, [F

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    aput-wide v13, v1, v10

    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    aput-wide v13, v2, v10

    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    aput-wide v13, v2, v9

    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    aput-wide v13, v2, v7

    iget-object v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getSpeed()F

    move-result v11

    aput v11, v3, v10

    iget-object v10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v10

    aput v10, v3, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    aput v9, v3, v7

    const-string v7, "StringType"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    :goto_0
    new-array v1, v6, [I

    new-array v3, v9, [J

    new-array v6, v9, [D

    new-array v11, v9, [F

    iget v13, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    aput v13, v1, v10

    iget-object v13, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v13, v13, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    aput v13, v1, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v9, v9, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    aput v9, v1, v7

    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v13, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    aput-wide v13, v3, v10

    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget-wide v13, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    aput-wide v13, v6, v10

    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    iget v7, v7, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    aput v7, v11, v10

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    :pswitch_2
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    new-array v1, v7, [D

    new-array v3, v9, [I

    new-array v6, v9, [J

    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v11, v1, v10

    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v11, v1, v9

    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    aput v7, v3, v10

    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    aput-wide v11, v6, v10

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v1, v9, :cond_6

    new-array v1, v7, [D

    const/4 v2, 0x4

    new-array v2, v2, [I

    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v11, v1, v10

    iget-wide v11, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v11, v1, v9

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v3, v2, v10

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v3, v2, v9

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    aput v3, v2, v7

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v3, v2, v6

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v1, v7, :cond_7

    new-array v1, v9, [I

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v10

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    new-array v1, v6, [I

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v2, v1, v10

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v2, v1, v9

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    aput v2, v1, v7

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    new-array v1, v7, [I

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    aput v2, v1, v10

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    aput v2, v1, v9

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    array-length v1, v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRawData:[I

    array-length v3, v3

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_a
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const-string v2, "Mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const-string v3, "Action"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAttribute() mode : "

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

    const/16 v1, 0x2f

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    nop

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

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemContextLocationCoreAttribute"

    const/4 v3, -0x1

    if-lt v0, v3, :cond_18

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    const/4 v5, 0x1

    const-string v6, "Action value is wrong!!"

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_8

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v3, 0x17

    if-eq v0, v3, :cond_8

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v3, 0xe

    if-le v0, v3, :cond_8

    :cond_3
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_7

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v4, 0x16

    if-le v0, v4, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "FusedBatchOption is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    :goto_0
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_9

    const-string v0, "FenceID is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_a

    const-string v0, "Radius is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_b

    const-string v0, "Status is wrong!1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_c

    const-string v0, "TotalGpsCount is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_d

    const-string v0, "Success gps count is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_e

    const-string v0, "Minimum distance is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_f

    const-string v0, "Minimum time is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_10

    const-string v0, "Accuracy is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-gez v0, :cond_11

    const-string v0, "Timestamp is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v3, v6

    if-ltz v0, :cond_17

    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v0, v3, v6

    if-lez v0, :cond_12

    goto :goto_2

    :cond_12
    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v3, v6

    if-ltz v0, :cond_16

    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v0, v3, v6

    if-lez v0, :cond_13

    goto :goto_1

    :cond_13
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRequestId:I

    if-gez v0, :cond_14

    const-string v0, "RequestId is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mBatchingSize:I

    if-gez v0, :cond_15

    const-string v0, "BatchingSize is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    return v5

    :cond_16
    :goto_1
    const-string v0, "Latitude is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    :goto_2
    const-string v0, "Longitude is wrong"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    :goto_3
    const-string v0, "Mode value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
