.class public Landroid/media/AudioDevicePort;
.super Landroid/media/AudioPort;
.source "AudioDevicePort.java"


# instance fields
.field private final greylist-max-o mAddress:Ljava/lang/String;

.field private final blacklist mEncapsulationMetadataTypes:[I

.field private final blacklist mEncapsulationModes:[I

.field private final greylist-max-o mType:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioHandle;Ljava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;ILjava/lang/String;[I[ILjava/util/List;)V
    .locals 8
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p4, "gains"    # [Landroid/media/AudioGain;
    .param p5, "type"    # I
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "encapsulationModes"    # [I
    .param p8, "encapsulationMetadataTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;[",
            "Landroid/media/AudioGain;",
            "I",
            "Ljava/lang/String;",
            "[I[I",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    .local p9, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    move-object v7, p0

    .line 66
    invoke-static {p5}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v2, v0

    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;Ljava/util/List;)V

    .line 68
    move v0, p5

    iput v0, v7, Landroid/media/AudioDevicePort;->mType:I

    .line 69
    move-object v1, p6

    iput-object v1, v7, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    .line 70
    move-object v2, p7

    iput-object v2, v7, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    .line 71
    move-object/from16 v3, p8

    iput-object v3, v7, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    .line 72
    return-void
.end method

.method constructor greylist-max-r <init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;[I[I)V
    .locals 10
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "samplingRates"    # [I
    .param p4, "channelMasks"    # [I
    .param p5, "channelIndexMasks"    # [I
    .param p6, "formats"    # [I
    .param p7, "gains"    # [Landroid/media/AudioGain;
    .param p8, "type"    # I
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "encapsulationModes"    # [I
    .param p11, "encapsulationMetadataTypes"    # [I

    .line 51
    move-object v9, p0

    .line 52
    invoke-static/range {p8 .. p8}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    move v2, v0

    .line 51
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    .line 55
    move/from16 v0, p8

    iput v0, v9, Landroid/media/AudioDevicePort;->mType:I

    .line 56
    move-object/from16 v1, p9

    iput-object v1, v9, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    .line 57
    move-object/from16 v2, p10

    iput-object v2, v9, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    .line 58
    move-object/from16 v3, p11

    iput-object v3, v9, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    .line 59
    return-void
.end method

.method static synthetic blacklist lambda$encapsulationModes$0(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/Integer;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public greylist-max-o address()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;
    .locals 7
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .line 131
    new-instance v6, Landroid/media/AudioDevicePortConfig;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-object v6
.end method

.method public bridge synthetic blacklist buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist encapsulationMetadataTypes()[I
    .locals 4

    .line 116
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    new-array v0, v1, [I

    return-object v0

    .line 119
    :cond_0
    array-length v2, v0

    new-array v2, v2, [I

    .line 120
    .local v2, "encapsulationMetadataTypes":[I
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-object v2
.end method

.method public blacklist encapsulationModes()[I
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 107
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;-><init>()V

    .line 108
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 109
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 107
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/media/AudioDevicePort;

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 140
    .local v1, "other":Landroid/media/AudioDevicePort;
    iget v2, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 141
    return v0

    .line 143
    :cond_1
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 144
    return v0

    .line 146
    :cond_2
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    return v0

    .line 149
    :cond_3
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 137
    .end local v1    # "other":Landroid/media/AudioDevicePort;
    :cond_4
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 154
    iget v0, p0, Landroid/media/AudioDevicePort;->mRole:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 157
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/media/AudioPort;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist type()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    return v0
.end method
