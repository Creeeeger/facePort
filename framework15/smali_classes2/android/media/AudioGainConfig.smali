.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field private final greylist mChannelMask:I

.field greylist-max-o mGain:Landroid/media/AudioGain;

.field private final greylist mIndex:I

.field private final greylist mMode:I

.field private final greylist mRampDurationMs:I

.field private final greylist mValues:[I


# direct methods
.method constructor greylist <init>(ILandroid/media/AudioGain;II[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return-void
.end method


# virtual methods
.method public greylist-max-o channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    return v0
.end method

.method greylist-max-o index()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    return v0
.end method

.method public greylist-max-o mode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mMode:I

    return v0
.end method

.method public greylist-max-o rampDurationMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return v0
.end method

.method public greylist-max-o values()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    return-object v0
.end method
