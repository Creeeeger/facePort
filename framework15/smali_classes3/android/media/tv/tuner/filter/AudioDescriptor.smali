.class public Landroid/media/tv/tuner/filter/AudioDescriptor;
.super Ljava/lang/Object;
.source "AudioDescriptor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAdFade:B

.field private final blacklist mAdGainCenter:B

.field private final blacklist mAdGainFront:B

.field private final blacklist mAdGainSurround:B

.field private final blacklist mAdPan:B

.field private final blacklist mVersionTextTag:C


# direct methods
.method private constructor blacklist <init>(BBCBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdFade:B

    iput-byte p2, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdPan:B

    iput-char p3, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mVersionTextTag:C

    iput-byte p4, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainCenter:B

    iput-byte p5, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainFront:B

    iput-byte p6, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainSurround:B

    return-void
.end method


# virtual methods
.method public whitelist getAdFade()B
    .locals 1

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdFade:B

    return v0
.end method

.method public whitelist getAdGainCenter()B
    .locals 1

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainCenter:B

    return v0
.end method

.method public whitelist getAdGainFront()B
    .locals 1

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainFront:B

    return v0
.end method

.method public whitelist getAdGainSurround()B
    .locals 1

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainSurround:B

    return v0
.end method

.method public whitelist getAdPan()B
    .locals 1

    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdPan:B

    return v0
.end method

.method public whitelist getAdVersionTextTag()C
    .locals 1

    iget-char v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mVersionTextTag:C

    return v0
.end method
