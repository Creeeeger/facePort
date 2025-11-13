.class public Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
.super Ljava/lang/Object;
.source "FrontendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/FrontendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Atsc3PlpTuningInfo"
.end annotation


# instance fields
.field private final blacklist mIsLocked:Z

.field private final blacklist mPlpId:I

.field private final blacklist mUec:I


# direct methods
.method private constructor blacklist <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    iput-boolean p2, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    iput p3, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    return-void
.end method


# virtual methods
.method public whitelist getPlpId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mPlpId:I

    return v0
.end method

.method public whitelist getUec()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mUec:I

    return v0
.end method

.method public whitelist isLocked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;->mIsLocked:Z

    return v0
.end method
