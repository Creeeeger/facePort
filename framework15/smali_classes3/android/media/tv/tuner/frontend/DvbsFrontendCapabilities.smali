.class public Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbsFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mInnerFecCap:J

.field private final blacklist mModulationCap:I

.field private final blacklist mStandard:I


# direct methods
.method private constructor blacklist <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    return-void
.end method


# virtual methods
.method public whitelist getInnerFecCapability()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    return-wide v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getStandardCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    return v0
.end method
