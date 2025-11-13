.class public Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mConstellationCap:I

.field private final blacklist mGuardIntervalCap:I

.field private final blacklist mHierarchyCap:I

.field private final blacklist mIsMisoSupported:Z

.field private final blacklist mIsT2Supported:Z

.field private final blacklist mTransmissionModeCap:I


# direct methods
.method private constructor blacklist <init>(IIIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getConstellationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    return v0
.end method

.method public whitelist getGuardIntervalCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public whitelist getHierarchyCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    return v0
.end method

.method public whitelist getTransmissionModeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method

.method public whitelist isMisoSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    return v0
.end method

.method public whitelist isT2Supported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    return v0
.end method
