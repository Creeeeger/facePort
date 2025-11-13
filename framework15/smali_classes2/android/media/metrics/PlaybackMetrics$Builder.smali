.class public final Landroid/media/metrics/PlaybackMetrics$Builder;
.super Ljava/lang/Object;
.source "PlaybackMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioUnderrunCount:I

.field private blacklist mContentType:I

.field private blacklist mDrmSessionId:[B

.field private blacklist mDrmType:I

.field private blacklist mExperimentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocalBytesRead:J

.field private blacklist mMediaDurationMillis:J

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mNetworkBytesRead:J

.field private blacklist mNetworkTransferDurationMillis:J

.field private blacklist mPlaybackType:I

.field private blacklist mPlayerName:Ljava/lang/String;

.field private blacklist mPlayerVersion:Ljava/lang/String;

.field private blacklist mStreamSource:I

.field private blacklist mStreamType:I

.field private blacklist mVideoFramesDropped:I

.field private blacklist mVideoFramesPlayed:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    const/4 v3, -0x1

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    new-array v0, v2, [B

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method private blacklist idsToLongArray()[J
    .locals 4

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist addExperimentId(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/PlaybackMetrics;
    .locals 27

    move-object/from16 v0, p0

    new-instance v23, Landroid/media/metrics/PlaybackMetrics;

    move-object/from16 v1, v23

    iget-wide v2, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    iget v4, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    iget v5, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    iget v6, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    iget v7, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    iget v8, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/media/metrics/PlaybackMetrics$Builder;->idsToLongArray()[J

    move-result-object v11

    iget v12, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    iget v13, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    iget v14, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    move-wide v15, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    move-object/from16 v22, v1

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-direct/range {v1 .. v22}, Landroid/media/metrics/PlaybackMetrics;-><init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V

    move-object/from16 v1, v23

    return-object v1
.end method

.method public whitelist setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    return-object p0
.end method

.method public whitelist setContentType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    return-object p0
.end method

.method public whitelist setDrmSessionId([B)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    return-object p0
.end method

.method public whitelist setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    return-object p0
.end method

.method public whitelist setLocalBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    return-object p0
.end method

.method public whitelist setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    return-object p0
.end method

.method public whitelist setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    return-object p0
.end method

.method public whitelist setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    return-object p0
.end method

.method public whitelist setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    return-object p0
.end method

.method public whitelist setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    return-object p0
.end method

.method public whitelist setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    return-object p0
.end method

.method public whitelist setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    return-object p0
.end method
