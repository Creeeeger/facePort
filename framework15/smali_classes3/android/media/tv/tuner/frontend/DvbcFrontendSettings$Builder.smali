.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbcFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnnex:I

.field private blacklist mBandwidth:I

.field private blacklist mFrequency:J

.field private blacklist mInnerFec:J

.field private blacklist mInterleaveMode:I

.field private blacklist mModulation:I

.field private blacklist mOuterFec:I

.field private blacklist mSpectralInversion:I

.field private blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
    .locals 14

    new-instance v13, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iget-wide v4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    iget v10, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    iget v11, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(JIJIIIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V

    return-object v13
.end method

.method public whitelist setAnnex(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    return-object p0
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 2

    const v0, 0x10001

    const-string/jumbo v1, "setBandwidth"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    :cond_0
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public whitelist setOuterFec(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    return-object p0
.end method

.method public whitelist setSpectralInversion(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method

.method public whitelist setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .locals 2

    const v0, 0x10001

    const-string/jumbo v1, "setTimeInterleaveMode"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    :cond_0
    return-object p0
.end method
