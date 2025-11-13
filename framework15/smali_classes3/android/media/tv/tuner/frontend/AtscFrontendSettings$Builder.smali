.class public Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "AtscFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFrequency:J

.field private blacklist mModulation:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
    .locals 5

    new-instance v0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/AtscFrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method
