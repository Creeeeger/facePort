.class public Landroid/media/AudioGain;
.super Ljava/lang/Object;
.source "AudioGain.java"


# static fields
.field public static final greylist-max-o MODE_CHANNELS:I = 0x2

.field public static final greylist-max-o MODE_JOINT:I = 0x1

.field public static final greylist-max-o MODE_RAMP:I = 0x4


# instance fields
.field private final greylist-max-o mChannelMask:I

.field private final greylist-max-o mDefaultValue:I

.field private final greylist-max-o mIndex:I

.field private final greylist-max-o mMaxValue:I

.field private final greylist-max-o mMinValue:I

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mRampDurationMaxMs:I

.field private final greylist-max-o mRampDurationMinMs:I

.field private final greylist-max-o mStepValue:I


# direct methods
.method constructor greylist-max-r <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioGain;->mIndex:I

    iput p2, p0, Landroid/media/AudioGain;->mMode:I

    iput p3, p0, Landroid/media/AudioGain;->mChannelMask:I

    iput p4, p0, Landroid/media/AudioGain;->mMinValue:I

    iput p5, p0, Landroid/media/AudioGain;->mMaxValue:I

    iput p6, p0, Landroid/media/AudioGain;->mDefaultValue:I

    iput p7, p0, Landroid/media/AudioGain;->mStepValue:I

    iput p8, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    iput p9, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return-void
.end method


# virtual methods
.method public greylist-max-o buildConfig(II[II)Landroid/media/AudioGainConfig;
    .locals 8

    new-instance v7, Landroid/media/AudioGainConfig;

    iget v1, p0, Landroid/media/AudioGain;->mIndex:I

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioGainConfig;-><init>(ILandroid/media/AudioGain;II[II)V

    return-object v7
.end method

.method public greylist-max-o channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mChannelMask:I

    return v0
.end method

.method public greylist-max-o defaultValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mDefaultValue:I

    return v0
.end method

.method public greylist-max-o maxValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMaxValue:I

    return v0
.end method

.method public greylist-max-o minValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMinValue:I

    return v0
.end method

.method public greylist-max-o mode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMode:I

    return v0
.end method

.method public greylist-max-o rampDurationMaxMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return v0
.end method

.method public greylist-max-o rampDurationMinMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    return v0
.end method

.method public greylist-max-o stepValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mStepValue:I

    return v0
.end method
