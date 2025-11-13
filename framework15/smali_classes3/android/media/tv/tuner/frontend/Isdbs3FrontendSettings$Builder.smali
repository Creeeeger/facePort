.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
.super Ljava/lang/Object;
.source "Isdbs3FrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCodeRate:I

.field private blacklist mFrequency:J

.field private blacklist mModulation:I

.field private blacklist mRolloff:I

.field private blacklist mStreamId:I

.field private blacklist mStreamIdType:I

.field private blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    const v0, 0xffff

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
    .locals 11

    new-instance v10, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/Isdbs3FrontendSettings-IA;)V

    return-object v10
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public whitelist setRolloff(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    return-object p0
.end method

.method public whitelist setStreamId(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    return-object p0
.end method

.method public whitelist setStreamIdType(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method
