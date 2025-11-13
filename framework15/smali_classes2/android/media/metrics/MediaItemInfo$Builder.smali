.class public final Landroid/media/metrics/MediaItemInfo$Builder;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/MediaItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannelCount:I

.field private blacklist mAudioSampleCount:J

.field private blacklist mAudioSampleRateHz:I

.field private blacklist mClipDurationMillis:J

.field private final blacklist mCodecNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContainerMimeType:Ljava/lang/String;

.field private blacklist mDataTypes:J

.field private blacklist mDurationMillis:J

.field private final blacklist mSampleMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceType:I

.field private blacklist mVideoDataSpace:I

.field private blacklist mVideoFrameRate:F

.field private blacklist mVideoSampleCount:J

.field private blacklist mVideoSize:Landroid/util/Size;


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    return-void
.end method


# virtual methods
.method public whitelist addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    return-object p0
.end method

.method public whitelist addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/MediaItemInfo;
    .locals 25

    move-object/from16 v0, p0

    new-instance v22, Landroid/media/metrics/MediaItemInfo;

    move-object/from16 v1, v22

    iget v2, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    iget-wide v3, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    iget-wide v5, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    iget-wide v7, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    iget-object v9, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    iget v12, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    iget v13, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    iget-wide v14, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    move-object/from16 v16, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    move/from16 v17, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    move/from16 v18, v1

    move/from16 v24, v2

    iget-wide v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    move-wide/from16 v19, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct/range {v1 .. v21}, Landroid/media/metrics/MediaItemInfo;-><init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJLandroid/media/metrics/MediaItemInfo-IA;)V

    return-object v22
.end method

.method public whitelist setAudioChannelCount(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    return-object p0
.end method

.method public whitelist setAudioSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    return-object p0
.end method

.method public whitelist setAudioSampleRateHz(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    return-object p0
.end method

.method public whitelist setClipDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    return-object p0
.end method

.method public whitelist setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    return-object p0
.end method

.method public whitelist setSourceType(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    return-object p0
.end method

.method public whitelist setVideoDataSpace(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    return-object p0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    return-object p0
.end method

.method public whitelist setVideoSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    return-object p0
.end method

.method public whitelist setVideoSize(Landroid/util/Size;)Landroid/media/metrics/MediaItemInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method
