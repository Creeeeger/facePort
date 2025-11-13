.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "IsdbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mGuardIntervalCap:I

.field private final blacklist mIsFullSegmentSupported:Z

.field private final blacklist mIsSegmentAutoSupported:Z

.field private final blacklist mModeCap:I

.field private final blacklist mModulationCap:I

.field private final blacklist mTimeInterleaveCap:I


# direct methods
.method private constructor blacklist <init>(IIIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getGuardIntervalCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public whitelist getModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    return v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getTimeInterleaveModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    return v0
.end method

.method public whitelist isFullSegmentSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    return v0
.end method

.method public whitelist isSegmentAutoSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    return v0
.end method
