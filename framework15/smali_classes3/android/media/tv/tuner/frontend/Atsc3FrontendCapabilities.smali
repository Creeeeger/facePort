.class public Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "Atsc3FrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mDemodOutputFormatCap:I

.field private final blacklist mFecCap:I

.field private final blacklist mModulationCap:I

.field private final blacklist mTimeInterleaveModeCap:I


# direct methods
.method private constructor blacklist <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mBandwidthCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mModulationCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mTimeInterleaveModeCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mFecCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mDemodOutputFormatCap:I

    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getDemodOutputFormatCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mDemodOutputFormatCap:I

    return v0
.end method

.method public whitelist getFecCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mFecCap:I

    return v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getPlpCodeRateCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getTimeInterleaveModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mTimeInterleaveModeCap:I

    return v0
.end method
