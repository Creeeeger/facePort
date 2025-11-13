.class public Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
.super Ljava/lang/Object;
.source "Atsc3PlpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCodeRate:I

.field private blacklist mFec:I

.field private blacklist mInterleaveMode:I

.field private blacklist mModulation:I

.field private blacklist mPlpId:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
    .locals 8

    new-instance v7, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mPlpId:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mModulation:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mInterleaveMode:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mCodeRate:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mFec:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;-><init>(IIIIILandroid/media/tv/tuner/frontend/Atsc3PlpSettings-IA;)V

    return-object v7
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public whitelist setFec(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mFec:I

    return-object p0
.end method

.method public whitelist setInterleaveMode(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mInterleaveMode:I

    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public whitelist setPlpId(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mPlpId:I

    return-object p0
.end method
