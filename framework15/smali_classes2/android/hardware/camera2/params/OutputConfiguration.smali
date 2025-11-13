.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$MirrorMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$StreamUseCase;,
        Landroid/hardware/camera2/params/OutputConfiguration$SensorPixelMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$TimestampBase;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SURFACES_COUNT:I = 0x4

.field public static final whitelist MIRROR_MODE_AUTO:I = 0x0

.field public static final whitelist MIRROR_MODE_H:I = 0x2

.field public static final whitelist MIRROR_MODE_NONE:I = 0x1

.field public static final whitelist MIRROR_MODE_V:I = 0x3

.field public static final whitelist ROTATION_0:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_180:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_270:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_90:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final blacklist SURFACE_TYPE_IMAGE_READER:I = 0x4

.field private static final blacklist SURFACE_TYPE_MEDIA_CODEC:I = 0x3

.field private static final blacklist SURFACE_TYPE_MEDIA_RECORDER:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OutputConfiguration"

.field public static final whitelist TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I = 0x4

.field public static final whitelist TIMESTAMP_BASE_DEFAULT:I = 0x0

.field public static final whitelist TIMESTAMP_BASE_MONOTONIC:I = 0x2

.field public static final blacklist TIMESTAMP_BASE_READOUT_SENSOR:I = 0x5

.field public static final whitelist TIMESTAMP_BASE_REALTIME:I = 0x3

.field public static final whitelist TIMESTAMP_BASE_SENSOR:I = 0x1

.field private static blacklist sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final greylist-max-o SURFACE_TYPE_SURFACE_VIEW:I

.field private final greylist-max-o SURFACE_TYPE_UNKNOWN:I

.field private blacklist mColorSpace:I

.field private final greylist-max-o mConfiguredDataspace:I

.field private final greylist-max-o mConfiguredFormat:I

.field private final greylist-max-o mConfiguredGenerationId:I

.field private final greylist-max-o mConfiguredSize:Landroid/util/Size;

.field private blacklist mDynamicRangeProfile:J

.field private final greylist-max-o mIsDeferredConfig:Z

.field private blacklist mIsMultiResolution:Z

.field private blacklist mIsReadoutSensorTimestampBase:Z

.field private greylist-max-o mIsShared:Z

.field private blacklist mMirrorMode:I

.field private greylist-max-o mPhysicalCameraId:Ljava/lang/String;

.field private blacklist mReadoutTimestampEnabled:Z

.field private final greylist-max-o mRotation:I

.field private blacklist mSensorPixelModesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStreamUseCase:J

.field private final greylist-max-o mSurfaceGroupId:I

.field private final greylist-max-o mSurfaceType:I

.field private greylist-max-o mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimestampBase:I

.field private blacklist mUsage:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;)V
    .locals 8

    nop

    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    move-wide v6, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string v2, "surfaceSize must not be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    iput-wide p4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;)V
    .locals 2

    nop

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/util/Size;J)V

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;J)V
    .locals 6

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string v2, "Surface must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    const-string v3, "Rotation constant"

    invoke-static {p3, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/view/Surface;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    invoke-static {p4}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v3, 0x1

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v3, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-ne v14, v3, :cond_2

    move v14, v3

    goto :goto_2

    :cond_2
    move v14, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    const/4 v1, 0x3

    const-string v3, "Rotation constant"

    invoke-static {v4, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-wide/from16 v19, v2

    move v3, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move/from16 v21, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move/from16 v22, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-wide/from16 v23, v1

    const/4 v1, 0x1

    if-ne v13, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move/from16 v17, v14

    move-object/from16 v25, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    move/from16 v26, v4

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-boolean v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    move/from16 v27, v5

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, -0x1

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_5

    :cond_4
    iput v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v4, 0x4

    if-eq v5, v4, :cond_5

    const/16 v4, 0x22

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v5

    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    nop

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    goto :goto_4

    :cond_5
    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    :goto_4
    const/4 v4, 0x0

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    :goto_5
    iput-object v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    move/from16 v4, v17

    iput-boolean v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    invoke-static/range {v25 .. v25}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntArrayToIntegerList([I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    move-wide/from16 v4, v19

    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    move/from16 v18, v2

    move/from16 v16, v3

    move-wide/from16 v2, v23

    iput-wide v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    move/from16 v2, v21

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    move/from16 v3, v22

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    const-string v3, "surfaceSize must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "klass must not be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Landroid/view/SurfaceHolder;

    if-ne p2, v3, :cond_0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_0

    :cond_0
    const-class v3, Landroid/graphics/SurfaceTexture;

    if-ne p2, v3, :cond_1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_0

    :cond_1
    const-class v2, Landroid/media/MediaRecorder;

    if-ne p2, v2, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_0

    :cond_2
    const-class v2, Landroid/media/MediaCodec;

    if-ne p2, v2, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    :goto_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    const/16 v2, 0x22

    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/util/Size;Ljava/lang/Class;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList([I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static blacklist convertIntegerToIntList(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, "Multi-resolution image reader must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Ljava/util/Collection;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    new-instance v4, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v0, p1, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams list must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getAndIncreaseMultiResolutionGroupId()I
    .locals 2

    sget-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAndIncreaseMultiResolutionGroupId$0(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method public static whitelist semCreateOutputConfiguration(ILandroid/view/Surface;II)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    return-object v0
.end method

.method public static whitelist semCreateOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/hardware/camera2/params/OutputConfiguration;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;I)V

    return-object v0
.end method

.method public static whitelist setSurfacesForMultiResolutionOutput(Ljava/util/Collection;Landroid/hardware/camera2/MultiResolutionImageReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")V"
        }
    .end annotation

    const-string v0, "outputConfigurations must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "multiResolutionImageReader must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getConfiguredSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/hardware/camera2/MultiResolutionImageReader;->getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputConfigurations and multiResolutionImageReader sizes must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addSensorPixelModeUsed(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid sensor pixel mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addSurface(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added surface size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different than pre-configured size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the pre-configured size will be used."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutputConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dataspace of added surface doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The format of added surface format doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceeds maximum number of surfaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface is already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearColorSpace()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSurfaceSharing()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enable surface sharing on multi-resolution output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v2, :cond_c

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-ne v3, v4, :cond_b

    iget-wide v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-ne v3, v4, :cond_b

    iget-wide v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_7

    iget-object v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_6

    return v0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    return v0

    :cond_8
    iget-wide v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iget-wide v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    return v0

    :cond_9
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iget v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    if-eq v4, v5, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v0

    :cond_c
    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguredSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getMaxSharedSurfaceCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public whitelist getMirrorMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    return v0
.end method

.method public blacklist getOption()I
    .locals 4

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRotation()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public whitelist getStreamUseCase()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceGroupId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public whitelist getSurfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestampBase()I
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    iget-object v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v5, v5

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v6, v6

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    int-to-float v7, v7

    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_0

    move/from16 v8, v20

    goto :goto_0

    :cond_0
    move/from16 v8, v21

    :goto_0
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_1

    move/from16 v9, v21

    goto :goto_1

    :cond_1
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    int-to-float v9, v9

    :goto_1
    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_2

    move/from16 v10, v20

    goto :goto_2

    :cond_2
    move/from16 v10, v21

    :goto_2
    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    iget v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v2, v2

    move/from16 v22, v2

    iget-boolean v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v20, v21

    :goto_3
    move v2, v14

    move/from16 v23, v15

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    int-to-float v14, v14

    const/16 v15, 0x11

    new-array v15, v15, [F

    aput v1, v15, v19

    aput v3, v15, v18

    aput v4, v15, v17

    aput v5, v15, v16

    const/4 v1, 0x4

    aput v6, v15, v1

    const/4 v1, 0x5

    aput v7, v15, v1

    const/4 v1, 0x6

    aput v8, v15, v1

    const/4 v1, 0x7

    aput v9, v15, v1

    const/16 v1, 0x8

    aput v10, v15, v1

    const/16 v1, 0x9

    aput v11, v15, v1

    const/16 v1, 0xa

    aput v12, v15, v1

    const/16 v1, 0xb

    aput v13, v15, v1

    const/16 v1, 0xc

    aput v2, v15, v1

    const/16 v1, 0xd

    aput v23, v15, v1

    const/16 v1, 0xe

    aput v22, v15, v1

    const/16 v1, 0xf

    aput v20, v15, v1

    const/16 v1, 0x10

    aput v14, v15, v1

    invoke-static {v15}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1

    :cond_4
    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    iget-object v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->hashCode()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v5, v5

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v6, v6

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v7, v7

    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_5

    move/from16 v8, v20

    goto :goto_4

    :cond_5
    move/from16 v8, v21

    :goto_4
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_6

    move/from16 v9, v21

    goto :goto_5

    :cond_6
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    int-to-float v9, v9

    :goto_5
    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_7

    move/from16 v10, v20

    goto :goto_6

    :cond_7
    move/from16 v10, v21

    :goto_6
    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    move/from16 v22, v15

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v15, v15

    move/from16 v23, v15

    iget-boolean v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v15, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v20, v21

    :goto_7
    move/from16 v21, v14

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    int-to-float v14, v14

    const/16 v15, 0x12

    new-array v15, v15, [F

    aput v1, v15, v19

    aput v2, v15, v18

    aput v3, v15, v17

    aput v4, v15, v16

    const/4 v1, 0x4

    aput v5, v15, v1

    const/4 v1, 0x5

    aput v6, v15, v1

    const/4 v1, 0x6

    aput v7, v15, v1

    const/4 v1, 0x7

    aput v8, v15, v1

    const/16 v1, 0x8

    aput v9, v15, v1

    const/16 v1, 0x9

    aput v10, v15, v1

    const/16 v1, 0xa

    aput v11, v15, v1

    const/16 v1, 0xb

    aput v12, v15, v1

    const/16 v1, 0xc

    aput v13, v15, v1

    const/16 v1, 0xd

    aput v21, v15, v1

    const/16 v1, 0xe

    aput v22, v15, v1

    const/16 v1, 0xf

    aput v23, v15, v1

    const/16 v1, 0x10

    aput v20, v15, v1

    const/16 v1, 0x11

    aput v14, v15, v1

    invoke-static {v15}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1
.end method

.method public greylist-max-o isDeferredConfiguration()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public greylist-max-o isForPhysicalCamera()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isReadoutTimestampEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    return v0
.end method

.method public whitelist removeSensorPixelModeUsed(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorPixelMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not part of this output configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSurface(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is not part of this output configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove surface associated with this output configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    return-void
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .locals 0

    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    return-void
.end method

.method public whitelist setMirrorMode(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid mirror mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMultiResolutionOutput()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag should only be set for surface with non-negative group ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag must not be set for configuration with surface sharing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhysicalCameraId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    return-void
.end method

.method public whitelist setReadoutTimestampEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    return-void
.end method

.method public whitelist setStreamUseCase(J)V
    .locals 5

    const-wide/16 v0, 0x6

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/32 v2, 0x10000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid stream use case value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-void
.end method

.method public whitelist setTimestampBase(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid timestamp base value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntegerToIntList(Ljava/util/List;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
