.class public final Landroid/media/metrics/PlaybackMetrics;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackMetrics$Builder;,
        Landroid/media/metrics/PlaybackMetrics$ContentType;,
        Landroid/media/metrics/PlaybackMetrics$DrmType;,
        Landroid/media/metrics/PlaybackMetrics$PlaybackType;,
        Landroid/media/metrics/PlaybackMetrics$StreamType;,
        Landroid/media/metrics/PlaybackMetrics$StreamSource;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_AD:I = 0x2

.field public static final whitelist CONTENT_TYPE_MAIN:I = 0x1

.field public static final whitelist CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DRM_TYPE_CLEARKEY:I = 0x6

.field public static final whitelist DRM_TYPE_NONE:I = 0x0

.field public static final whitelist DRM_TYPE_OTHER:I = 0x1

.field public static final whitelist DRM_TYPE_PLAY_READY:I = 0x2

.field public static final whitelist DRM_TYPE_WIDEVINE_L1:I = 0x3

.field public static final whitelist DRM_TYPE_WIDEVINE_L3:I = 0x4

.field public static final whitelist DRM_TYPE_WV_L3_FALLBACK:I = 0x5

.field public static final whitelist PLAYBACK_TYPE_LIVE:I = 0x2

.field public static final whitelist PLAYBACK_TYPE_OTHER:I = 0x3

.field public static final whitelist PLAYBACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_VOD:I = 0x1

.field public static final whitelist STREAM_SOURCE_DEVICE:I = 0x2

.field public static final whitelist STREAM_SOURCE_MIXED:I = 0x3

.field public static final whitelist STREAM_SOURCE_NETWORK:I = 0x1

.field public static final whitelist STREAM_SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist STREAM_TYPE_DASH:I = 0x3

.field public static final whitelist STREAM_TYPE_HLS:I = 0x4

.field public static final whitelist STREAM_TYPE_OTHER:I = 0x1

.field public static final whitelist STREAM_TYPE_PROGRESSIVE:I = 0x2

.field public static final whitelist STREAM_TYPE_SS:I = 0x5

.field public static final whitelist STREAM_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAudioUnderrunCount:I

.field private final blacklist mContentType:I

.field private final blacklist mDrmSessionId:[B

.field private final blacklist mDrmType:I

.field private final blacklist mExperimentIds:[J

.field private final blacklist mLocalBytesRead:J

.field private final blacklist mMediaDurationMillis:J

.field private final blacklist mMetricsBundle:Landroid/os/Bundle;

.field private final blacklist mNetworkBytesRead:J

.field private final blacklist mNetworkTransferDurationMillis:J

.field private final blacklist mPlaybackType:I

.field private final blacklist mPlayerName:Ljava/lang/String;

.field private final blacklist mPlayerVersion:Ljava/lang/String;

.field private final blacklist mStreamSource:I

.field private final blacklist mStreamType:I

.field private final blacklist mVideoFramesDropped:I

.field private final blacklist mVideoFramesPlayed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/metrics/PlaybackMetrics$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    move/from16 v3, p3

    iput v3, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    move/from16 v4, p4

    iput v4, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    move/from16 v5, p5

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    move/from16 v6, p6

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    move/from16 v7, p7

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const-class v11, Landroid/annotation/NonNull;

    const/4 v12, 0x0

    iget-object v13, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v11, v12, v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v11, p11

    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    move/from16 v12, p12

    iput v12, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    move/from16 v13, p13

    iput v13, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual/range {p21 .. p21}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

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

    const-wide/16 v10, 0x80

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    const-wide/16 v14, 0x100

    and-long/2addr v14, v1

    cmp-long v12, v14, v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-wide/from16 v16, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v18, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v20, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v22, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [B

    move/from16 v24, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iput v9, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iput-object v12, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iput-object v13, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    move-wide/from16 v25, v3

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    move/from16 v27, v5

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v14, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iput v15, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    move-wide/from16 v3, v18

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 v3, v20

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 v3, v22

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
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

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

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

.method public whitelist getAudioUnderrunCount()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    return v0
.end method

.method public whitelist getContentType()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    return v0
.end method

.method public whitelist getDrmSessionId()[B
    .locals 1

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    return-object v0
.end method

.method public whitelist getDrmType()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    return v0
.end method

.method public whitelist getExperimentIds()[J
    .locals 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalBytesRead()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    return-wide v0
.end method

.method public whitelist getMediaDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkBytesRead()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    return-wide v0
.end method

.method public whitelist getNetworkTransferDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    return-wide v0
.end method

.method public whitelist getPlaybackType()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPlayerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPlayerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamSource()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    return v0
.end method

.method public whitelist getStreamType()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    return v0
.end method

.method public whitelist getVideoFramesDropped()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    return v0
.end method

.method public whitelist getVideoFramesPlayed()I
    .locals 1

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackMetrics { mediaDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experimentIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesPlayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesDropped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioUnderrunCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkTransferDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "drmSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
