.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DtmbFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mGuardIntervalCap:I

.field private final blacklist mModulationCap:I

.field private final blacklist mTimeInterleaveModeCap:I

.field private final blacklist mTransmissionModeCap:I


# direct methods
.method private constructor blacklist <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getGuardIntervalCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getTimeInterleaveModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    return v0
.end method

.method public whitelist getTransmissionModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method
