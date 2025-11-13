.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBandwidth:I

.field private blacklist mFrequency:J

.field private blacklist mGuardInterval:I

.field private blacklist mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private blacklist mMode:I

.field private blacklist mPartialReceptionFlag:I

.field private blacklist mServiceAreaId:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    new-array v1, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
    .locals 11

    new-instance v10, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    iget-object v7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iget v8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V

    return-object v10
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    :goto_0
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setGuardInterval(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    return-object p0
.end method

.method public whitelist setLayerSettings([Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 3

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setLayerSettings"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist setMode(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    :goto_0
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    return-object p0
.end method

.method public whitelist setPartialReceptionFlag(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 2

    const/high16 v0, 0x20000

    const-string/jumbo v1, "setPartialReceptionFlag"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    :cond_0
    return-object p0
.end method

.method public whitelist setServiceAreaId(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    return-object p0
.end method
