.class public Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbcFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAnnexCap:I

.field private final blacklist mFecCap:J

.field private final blacklist mModulationCap:I


# direct methods
.method private constructor blacklist <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    return-void
.end method


# virtual methods
.method public whitelist getAnnexCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    return-wide v0
.end method

.method public whitelist getFecCapability()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getModulationCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    return v0
.end method
