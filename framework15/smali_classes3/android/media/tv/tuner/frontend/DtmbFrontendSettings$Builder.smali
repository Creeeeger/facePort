.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DtmbFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBandwidth:I

.field private blacklist mCodeRate:I

.field private blacklist mFrequency:J

.field private blacklist mGuardInterval:I

.field private blacklist mModulation:I

.field private blacklist mTimeInterleaveMode:I

.field private blacklist mTransmissionMode:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;
    .locals 11

    new-instance v10, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/DtmbFrontendSettings-IA;)V

    return-object v10
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setGuardInterval(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public whitelist setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    return-object p0
.end method

.method public whitelist setTransmissionMode(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    return-object p0
.end method
