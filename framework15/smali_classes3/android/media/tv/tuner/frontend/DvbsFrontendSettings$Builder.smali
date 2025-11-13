.class public Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbsFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

.field private blacklist mFrequency:J

.field private blacklist mInputStreamId:I

.field private blacklist mIsDiseqcRxMessage:Z

.field private blacklist mModulation:I

.field private blacklist mPilot:I

.field private blacklist mRolloff:I

.field private blacklist mScanType:I

.field private blacklist mStandard:I

.field private blacklist mSymbolRate:I

.field private blacklist mVcmMode:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    const v1, 0xffff

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
    .locals 15

    new-instance v14, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    iget-object v4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    iget v10, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    iget v11, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    iget-boolean v12, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZLandroid/media/tv/tuner/frontend/DvbsFrontendSettings-IA;)V

    return-object v14
.end method

.method public whitelist setCanHandleDiseqcRxMessage(Z)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 2

    const v0, 0x10001

    const-string/jumbo v1, "setCanHandleDiseqcRxMessage"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    :cond_0
    return-object p0
.end method

.method public whitelist setCodeRate(Landroid/media/tv/tuner/frontend/DvbsCodeRate;)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setInputStreamId(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public whitelist setPilot(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    return-object p0
.end method

.method public whitelist setRolloff(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    return-object p0
.end method

.method public whitelist setScanType(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 2

    const v0, 0x10001

    const-string/jumbo v1, "setScanType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    :cond_0
    return-object p0
.end method

.method public whitelist setStandard(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method

.method public whitelist setVcmMode(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    return-object p0
.end method
