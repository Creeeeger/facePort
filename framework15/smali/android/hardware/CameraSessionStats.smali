.class public Landroid/hardware/CameraSessionStats;
.super Ljava/lang/Object;
.source "CameraSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CAMERA_API_LEVEL_1:I = 0x1

.field public static final blacklist CAMERA_API_LEVEL_2:I = 0x2

.field public static final blacklist CAMERA_FACING_BACK:I = 0x0

.field public static final blacklist CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final blacklist CAMERA_FACING_FRONT:I = 0x1

.field public static final blacklist CAMERA_STATE_ACTIVE:I = 0x1

.field public static final blacklist CAMERA_STATE_CLOSED:I = 0x3

.field public static final blacklist CAMERA_STATE_IDLE:I = 0x2

.field public static final blacklist CAMERA_STATE_OPEN:I = 0x0

.field public static final blacklist CAMERA_STATE_OPENING:I = 0x64

.field public static final blacklist CAMERA_STATE_OPENING_FAILED:I = 0x65

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApiLevel:I

.field private blacklist mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field private blacklist mCameraId:Ljava/lang/String;

.field private blacklist mClientName:Ljava/lang/String;

.field private blacklist mDeviceError:Z

.field private blacklist mFacing:I

.field private blacklist mInternalReconfigure:I

.field private blacklist mIsNdk:Z

.field private blacklist mLatencyMs:I

.field private blacklist mLogId:J

.field private blacklist mMaxPreviewFps:F

.field private blacklist mMostRequestedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNewCameraState:I

.field private blacklist mRequestCount:J

.field private blacklist mResultErrorCount:J

.field private blacklist mSessionIndex:I

.field private blacklist mSessionType:I

.field private blacklist mStreamStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsedUltraWide:Z

.field private blacklist mUsedZoomOverride:Z

.field private blacklist mUserTag:Ljava/lang/String;

.field private blacklist mVideoStabilizationMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/CameraSessionStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraSessionStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    const/4 v5, 0x0

    iput v5, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    iput-wide v3, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    new-instance v0, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct {v0}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/CameraSessionStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/CameraSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IZIFIIJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    iput p3, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    iput-object p4, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    iput p5, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    iput-boolean p6, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    iput p7, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    iput-wide p11, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    iput p8, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    iput p9, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    iput p10, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    iput p13, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    new-instance v0, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct {v0}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApiLevel()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    return v0
.end method

.method public blacklist getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceErrorFlag()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    return v0
.end method

.method public blacklist getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    return-object v0
.end method

.method public blacklist getFacing()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    return v0
.end method

.method public blacklist getInternalReconfigureCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    return v0
.end method

.method public blacklist getLatencyMs()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    return v0
.end method

.method public blacklist getLogId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    return-wide v0
.end method

.method public blacklist getMaxPreviewFps()F
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    return v0
.end method

.method public blacklist getMostRequestedFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getNewCameraState()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    return v0
.end method

.method public blacklist getRequestCount()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    return-wide v0
.end method

.method public blacklist getResultErrorCount()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    return-wide v0
.end method

.method public blacklist getSessionIndex()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    return v0
.end method

.method public blacklist getSessionType()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    return v0
.end method

.method public blacklist getStreamStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getUsedUltraWide()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    return v0
.end method

.method public blacklist getUsedZoomOverride()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    return v0
.end method

.method public blacklist getUserTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVideoStabilizationMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return v0
.end method

.method public blacklist isNdk()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    sget-object v1, Landroid/hardware/CameraExtensionSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/CameraExtensionSessionStats;

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mLogId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedUltraWide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mUsedZoomOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraExtensionSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/CameraExtensionSessionStats;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
