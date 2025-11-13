.class public Landroid/media/AudioMixPort;
.super Landroid/media/AudioPort;
.source "AudioMixPort.java"


# instance fields
.field private final greylist-max-o mIoHandle:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioHandle;IILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;)V
    .locals 7
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "ioHandle"    # I
    .param p3, "role"    # I
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p6, "gains"    # [Landroid/media/AudioGain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioHandle;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;[",
            "Landroid/media/AudioGain;",
            ")V"
        }
    .end annotation

    .line 49
    .local p5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;Ljava/util/List;)V

    .line 50
    iput p2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    .line 51
    return-void
.end method

.method constructor greylist-max-r <init>(Landroid/media/AudioHandle;IILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 9
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "ioHandle"    # I
    .param p3, "role"    # I
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "samplingRates"    # [I
    .param p6, "channelMasks"    # [I
    .param p7, "channelIndexMasks"    # [I
    .param p8, "formats"    # [I
    .param p9, "gains"    # [Landroid/media/AudioGain;

    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    .line 44
    move v1, p2

    iput v1, v0, Landroid/media/AudioMixPort;->mIoHandle:I

    .line 45
    return-void
.end method


# virtual methods
.method public greylist-max-o buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;
    .locals 7
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .line 59
    new-instance v6, Landroid/media/AudioMixPortConfig;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioMixPortConfig;-><init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V

    return-object v6
.end method

.method public bridge synthetic blacklist buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioMixPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/media/AudioMixPort;

    if-nez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/media/AudioMixPort;

    .line 76
    .local v1, "other":Landroid/media/AudioMixPort;
    iget v2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    invoke-virtual {v1}, Landroid/media/AudioMixPort;->ioHandle()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 77
    return v0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 73
    .end local v1    # "other":Landroid/media/AudioMixPort;
    :cond_2
    :goto_0
    return v0
.end method

.method public greylist-max-r ioHandle()I
    .locals 1

    .line 67
    iget v0, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    return v0
.end method
