.class public Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "AnalogFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mSifStandardCap:I

.field private final blacklist mTypeCap:I


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    return-void
.end method


# virtual methods
.method public whitelist getSifStandardCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    return v0
.end method

.method public whitelist getSignalTypeCapability()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    return v0
.end method
