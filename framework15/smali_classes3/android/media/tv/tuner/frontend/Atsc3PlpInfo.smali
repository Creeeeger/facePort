.class public Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;
.super Ljava/lang/Object;
.source "Atsc3PlpInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mLlsFlag:Z

.field private final blacklist mPlpId:I


# direct methods
.method private constructor blacklist <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mPlpId:I

    iput-boolean p2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mLlsFlag:Z

    return-void
.end method


# virtual methods
.method public whitelist getLlsFlag()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mLlsFlag:Z

    return v0
.end method

.method public whitelist getPlpId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mPlpId:I

    return v0
.end method
