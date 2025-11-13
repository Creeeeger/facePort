.class public Landroid/media/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/DemuxCapabilities$FilterCapabilities;
    }
.end annotation


# instance fields
.field private final blacklist mAudioFilterCount:I

.field private final blacklist mDemuxCount:I

.field private final blacklist mFilterCaps:I

.field private final blacklist mFilterCapsList:[I

.field private final blacklist mLinkCaps:[I

.field private final blacklist mPcrFilterCount:I

.field private final blacklist mPesFilterCount:I

.field private final blacklist mPlaybackCount:I

.field private final blacklist mRecordCount:I

.field private final blacklist mSectionFilterCount:I

.field private final blacklist mSectionFilterLength:J

.field private final blacklist mSupportTimeFilter:Z

.field private final blacklist mTsFilterCount:I

.field private final blacklist mVideoFilterCount:I


# direct methods
.method private constructor blacklist <init>(IIIIIIIIIJI[I[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    iput p2, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    iput p3, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    iput p4, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    iput p5, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    iput p6, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    iput p7, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    iput p8, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    iput p9, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    iput-wide p10, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    iput p12, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    iput-object p13, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    iput-object p14, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    iput-boolean p15, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return-void
.end method


# virtual methods
.method public whitelist getAudioFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    return v0
.end method

.method public whitelist getDemuxCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    return v0
.end method

.method public whitelist getFilterCapabilities()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    return v0
.end method

.method public whitelist getFilterTypeCapabilityList()[I
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    return-object v0
.end method

.method public whitelist getLinkCapabilities()[I
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    return-object v0
.end method

.method public whitelist getPcrFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    return v0
.end method

.method public whitelist getPesFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    return v0
.end method

.method public whitelist getPlaybackCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    return v0
.end method

.method public whitelist getRecordCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    return v0
.end method

.method public whitelist getSectionFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    return v0
.end method

.method public whitelist getSectionFilterLength()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    return-wide v0
.end method

.method public whitelist getTsFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    return v0
.end method

.method public whitelist getVideoFilterCount()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    return v0
.end method

.method public whitelist isTimeFilterSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return v0
.end method
