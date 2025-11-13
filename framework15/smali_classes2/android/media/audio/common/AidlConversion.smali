.class public Landroid/media/audio/common/AidlConversion;
.super Ljava/lang/Object;
.source "AidlConversion.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    :goto_0
    if-eqz v1, :cond_1

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/2addr v0, v2

    not-int v3, v1

    and-int/2addr p0, v3

    if-nez p0, :cond_0

    return v0

    :cond_0
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x400000

    const/high16 v2, 0x200000

    const/high16 v3, 0x100000

    const/high16 v4, 0x40000

    const/high16 v5, 0x20000

    const/high16 v6, 0x10000

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz p1, :cond_0

    sparse-switch p0, :sswitch_data_0

    return v0

    :sswitch_0
    return v1

    :sswitch_1
    return v2

    :sswitch_2
    return v7

    :sswitch_3
    return v5

    :sswitch_4
    return v6

    :sswitch_5
    return v3

    :sswitch_6
    return v4

    :sswitch_7
    return v8

    :sswitch_8
    return v9

    :cond_0
    sparse-switch p0, :sswitch_data_1

    return v0

    :sswitch_9
    const/high16 v0, 0x20000000

    return v0

    :sswitch_a
    const/high16 v0, 0x10000000

    return v0

    :sswitch_b
    const/high16 v0, 0x8000000

    return v0

    :sswitch_c
    const/high16 v0, 0x4000000

    return v0

    :sswitch_d
    const/high16 v0, 0x2000000

    return v0

    :sswitch_e
    const/high16 v0, 0x1000000

    return v0

    :sswitch_f
    const/high16 v0, 0x800000

    return v0

    :sswitch_10
    return v1

    :sswitch_11
    return v2

    :sswitch_12
    return v3

    :sswitch_13
    const/high16 v0, 0x80000

    return v0

    :sswitch_14
    return v4

    :sswitch_15
    return v5

    :sswitch_16
    return v6

    :sswitch_17
    const v0, 0x8000

    return v0

    :sswitch_18
    const/16 v0, 0x4000

    return v0

    :sswitch_19
    const/16 v0, 0x2000

    return v0

    :sswitch_1a
    const/16 v0, 0x1000

    return v0

    :sswitch_1b
    const/16 v0, 0x800

    return v0

    :sswitch_1c
    const/16 v0, 0x400

    return v0

    :sswitch_1d
    const/16 v0, 0x200

    return v0

    :sswitch_1e
    const/16 v0, 0x100

    return v0

    :sswitch_1f
    const/16 v0, 0x80

    return v0

    :sswitch_20
    const/16 v0, 0x40

    return v0

    :sswitch_21
    return v7

    :sswitch_22
    const/16 v0, 0x10

    return v0

    :sswitch_23
    return v8

    :sswitch_24
    return v9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x100 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x4 -> :sswitch_22
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_1d
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_1b
        0x400 -> :sswitch_1a
        0x800 -> :sswitch_19
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_17
        0x4000 -> :sswitch_16
        0x8000 -> :sswitch_15
        0x10000 -> :sswitch_14
        0x20000 -> :sswitch_13
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_11
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_f
        0x400000 -> :sswitch_e
        0x800000 -> :sswitch_d
        0x1000000 -> :sswitch_c
        0x2000000 -> :sswitch_b
        0x20000000 -> :sswitch_a
        0x40000000 -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v0, 0xc010

    return v0

    :sswitch_1
    const v0, 0x8010

    return v0

    :sswitch_2
    const/16 v0, 0x4010

    return v0

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    const/16 v0, 0xc

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_3
    const v0, 0x74000c

    return v0

    :sswitch_4
    const v0, 0x70000c

    return v0

    :sswitch_5
    const v0, 0x64000c

    return v0

    :sswitch_6
    const v0, 0x60000c

    return v0

    :sswitch_7
    const/16 v0, 0x30

    return v0

    :sswitch_8
    const v0, 0x17000c

    return v0

    :sswitch_9
    return v0

    :sswitch_a
    const/16 v0, 0x10

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_1

    :sswitch_b
    const v0, 0x3000000c

    return v0

    :sswitch_c
    const v0, 0x30000004

    return v0

    :sswitch_d
    const/high16 v0, 0x30000000

    return v0

    :sswitch_e
    const v0, 0x2000000c

    return v0

    :sswitch_f
    const v0, 0x20000004

    return v0

    :sswitch_10
    const v0, 0xc3b58fc

    return v0

    :sswitch_11
    const v0, 0xc0b58fc

    return v0

    :sswitch_12
    const v0, 0x3fffffc

    return v0

    :sswitch_13
    const v0, 0x1cbd81c

    return v0

    :sswitch_14
    const v0, 0x3018fc

    return v0

    :sswitch_15
    const v0, 0x3000fc

    return v0

    :sswitch_16
    const v0, 0x30003c

    return v0

    :sswitch_17
    const v0, 0x30002c

    return v0

    :sswitch_18
    const v0, 0x30001c

    return v0

    :sswitch_19
    const v0, 0x30000c

    return v0

    :sswitch_1a
    const v0, 0xb58fc

    return v0

    :sswitch_1b
    const v0, 0xb40fc

    return v0

    :sswitch_1c
    const/16 v0, 0x18fc

    return v0

    :sswitch_1d
    const/16 v0, 0x183c

    return v0

    :sswitch_1e
    const/16 v0, 0x180c

    return v0

    :sswitch_1f
    const/16 v0, 0x4fc

    return v0

    :sswitch_20
    const/16 v0, 0x41c

    return v0

    :sswitch_21
    const/16 v0, 0x410

    return v0

    :sswitch_22
    const/16 v0, 0x40c

    return v0

    :sswitch_23
    const/16 v0, 0xfc

    return v0

    :sswitch_24
    const/16 v0, 0xdc

    return v0

    :sswitch_25
    const/16 v0, 0xcc

    return v0

    :sswitch_26
    const/16 v0, 0x3c

    return v0

    :sswitch_27
    const/16 v0, 0x2c

    return v0

    :sswitch_28
    const/16 v0, 0x1c

    return v0

    :sswitch_29
    return v0

    :sswitch_2a
    const/4 v0, 0x4

    return v0

    :goto_1
    nop

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    return v0

    :pswitch_3
    return v1

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0xc000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x3f -> :sswitch_8
        0x104 -> :sswitch_7
        0xc0003 -> :sswitch_6
        0xc0007 -> :sswitch_5
        0xc000b -> :sswitch_4
        0xc000f -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2a
        0x3 -> :sswitch_29
        0x7 -> :sswitch_28
        0xb -> :sswitch_27
        0xf -> :sswitch_26
        0x33 -> :sswitch_25
        0x37 -> :sswitch_24
        0x3f -> :sswitch_23
        0x103 -> :sswitch_22
        0x104 -> :sswitch_21
        0x107 -> :sswitch_20
        0x13f -> :sswitch_1f
        0x603 -> :sswitch_1e
        0x60f -> :sswitch_1d
        0x63f -> :sswitch_1c
        0x2d03f -> :sswitch_1b
        0x2d63f -> :sswitch_1a
        0xc0003 -> :sswitch_19
        0xc0007 -> :sswitch_18
        0xc000b -> :sswitch_17
        0xc000f -> :sswitch_16
        0xc003f -> :sswitch_15
        0xc063f -> :sswitch_14
        0x72f607 -> :sswitch_13
        0xffffff -> :sswitch_12
        0x302d63f -> :sswitch_11
        0x30ed63f -> :sswitch_10
        0x40000001 -> :sswitch_f
        0x40000003 -> :sswitch_e
        0x60000000 -> :sswitch_d
        0x60000001 -> :sswitch_c
        0x60000003 -> :sswitch_b
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;
    .locals 3

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {v1}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    :goto_0
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I
    .locals 4

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->type:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_1
    const/16 v0, 0x15

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/16 v0, 0x16

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "audio/ac3"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const-string v0, "audio/eac3"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    const-string v0, "audio/vnd.dts"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    return v0

    :cond_2
    const-string v0, "audio/vnd.dts.hd"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const-string v0, "audio/mpeg"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    return v0

    :cond_4
    const-string v0, "audio/mp4a.40.02"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    return v0

    :cond_5
    const-string v0, "audio/mp4a.40.05"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    return v0

    :cond_6
    const-string v0, "audio/mp4a.40.29"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    return v0

    :cond_7
    const-string v0, "audio/x-iec61937"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    if-ne v0, v2, :cond_8

    const/16 v0, 0xd

    return v0

    :cond_8
    const-string v0, "audio/vnd.dolby.mlp"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    return v0

    :cond_9
    const-string v0, "audio/mp4a.40.39"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    return v0

    :cond_a
    const-string v0, "audio/mp4a.40.42"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    return v0

    :cond_b
    const-string v0, "audio/ac4"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    return v0

    :cond_c
    const-string v0, "audio/eac3-joc"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x12

    return v0

    :cond_d
    const-string v0, "audio/vnd.dolby.mat"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mat."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    const-string v0, "audio/opus"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    return v0

    :cond_f
    const-string v0, "audio/mhm1.03"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x17

    return v0

    :cond_10
    const-string v0, "audio/mhm1.04"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x18

    return v0

    :cond_11
    const-string v0, "audio/mhm1.0d"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x19

    return v0

    :cond_12
    const-string v0, "audio/mhm1.0e"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x1a

    return v0

    :cond_13
    const-string v0, "audio/vnd.dts.uhd"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1b

    return v0

    :cond_14
    const-string v0, "audio/vnd.dra"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x1c

    return v0

    :cond_15
    return v1

    :cond_16
    :goto_0
    const/16 v0, 0x13

    return v0

    :cond_17
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioStandard_AudioDescriptorStandard(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist aidl2api_ExtraAudioDescriptor_AudioDescriptor(Landroid/media/audio/common/ExtraAudioDescriptor;)Landroid/media/AudioDescriptor;
    .locals 4

    new-instance v0, Landroid/media/AudioDescriptor;

    iget v1, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioStandard_AudioDescriptorStandard(I)I

    move-result v1

    iget v2, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    invoke-static {v2}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I

    move-result v2

    iget-object v3, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    return-object v0
.end method

.method private static native blacklist aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I
.end method

.method public static blacklist aidl2legacy_AudioChannelLayout_audio_channel_mask_t(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_0
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioEncapsulationMode_audio_encapsulation_mode_t(I)I
.end method

.method private static native blacklist aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I
.end method

.method public static blacklist aidl2legacy_AudioFormatDescription_audio_format_t(Landroid/media/audio/common/AudioFormatDescription;)I
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioFormatDescription;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_0
    invoke-static {v0}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioStreamType_audio_stream_type_t(I)I
.end method

.method public static native blacklist aidl2legacy_AudioUsage_audio_usage_t(I)I
.end method

.method public static blacklist api2aidl_AudioDescriptorStandard_AudioStandard(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 2

    new-instance v0, Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {v0}, Landroid/media/audio/common/ExtraAudioDescriptor;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptorStandard_AudioStandard(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    nop

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getEncapsulationType()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    return-object v0
.end method

.method public static blacklist api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;
    .locals 4

    new-instance v0, Landroid/media/audio/common/AudioPort;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPort;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/media/audio/common/AudioProfile;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/ExtraAudioDescriptor;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    new-instance v2, Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {v2}, Landroid/media/audio/common/AudioIoFlags;-><init>()V

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    new-array v2, v1, [Landroid/media/audio/common/AudioGain;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    new-instance v2, Landroid/media/audio/common/AudioPortDeviceExt;

    invoke-direct {v2}, Landroid/media/audio/common/AudioPortDeviceExt;-><init>()V

    new-instance v3, Landroid/media/audio/common/AudioDevice;

    invoke-direct {v3}, Landroid/media/audio/common/AudioDevice;-><init>()V

    iput-object v3, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    new-array v1, v1, [Landroid/media/audio/common/AudioFormatDescription;

    iput-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->encodedFormats:[Landroid/media/audio/common/AudioFormatDescription;

    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Landroid/media/audio/common/AidlConversion;->api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->type:Landroid/media/audio/common/AudioDeviceDescription;

    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audio/common/AudioDeviceAddress;->id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->address:Landroid/media/audio/common/AudioDeviceAddress;

    invoke-static {v2}, Landroid/media/audio/common/AudioPortExt;->device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    return-object v0
.end method

.method public static blacklist api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;
    .locals 16

    new-instance v0, Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceDescription;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    const-string v3, "hdmi-earc"

    const-string v4, "hdmi-arc"

    const-string v5, "bus"

    const-string v6, "ip-v4"

    const-string v7, "spdif"

    const-string v8, "fm"

    const-string v10, "virtual"

    const-string v11, "hdmi"

    const/16 v12, 0x8c

    const-string v14, "bt-a2dp"

    const-string v15, "bt-sco"

    const-string v9, "bt-le"

    const-string v2, "analog"

    const-string v1, "usb"

    const/4 v13, 0x4

    sparse-switch p0, :sswitch_data_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_0
    const/16 v1, 0x81

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x92

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x89

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_4
    const/16 v1, 0x86

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v1, 0x8a

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    const-string v1, "wireless"

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x89

    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0x83

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    const/16 v1, 0x8e

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0x8b

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_c
    const/16 v1, 0x87

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    const/16 v1, 0x90

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v1, 0x8f

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    const/16 v2, 0x85

    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    const/16 v2, 0x82

    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_15
    const/16 v3, 0x91

    iput v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_16
    const/16 v3, 0x91

    iput v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1a
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1b
    const/16 v1, 0x84

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1c
    const/16 v1, 0x89

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1d
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1e
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1f
    const/16 v1, 0x89

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_20
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_21
    const/16 v1, 0x8d

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_22
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_23
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_24
    const/4 v1, 0x5

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_25
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_26
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_27
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_28
    const/4 v2, 0x7

    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_29
    const/4 v1, 0x3

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    :sswitch_2a
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2b
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2c
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_0

    :sswitch_2d
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_2e
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_2f
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_30
    const/16 v1, 0xd

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_0

    :sswitch_31
    const/4 v1, 0x6

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_32
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_33
    const/4 v2, 0x2

    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_34
    const/16 v3, 0xe

    iput v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_35
    const/16 v3, 0xe

    iput v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_36
    const/16 v1, 0xb

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_37
    const/16 v1, 0xa

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_0

    :sswitch_38
    const/16 v1, 0xc

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_0

    :sswitch_39
    iput v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_3a
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_3b
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_0

    :sswitch_3c
    const/16 v1, 0x9

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    nop

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffc -> :sswitch_3c
        -0x7ffffff8 -> :sswitch_3b
        -0x7ffffff0 -> :sswitch_3a
        -0x7fffffe0 -> :sswitch_39
        -0x7fffffc0 -> :sswitch_38
        -0x7fffff80 -> :sswitch_37
        -0x7fffff00 -> :sswitch_36
        -0x7ffffe00 -> :sswitch_35
        -0x7ffffc00 -> :sswitch_34
        -0x7ffff800 -> :sswitch_33
        -0x7ffff000 -> :sswitch_32
        -0x7fffe000 -> :sswitch_31
        -0x7fffc000 -> :sswitch_30
        -0x7fff8000 -> :sswitch_2f
        -0x7fff0000 -> :sswitch_2e
        -0x7ffe0000 -> :sswitch_2d
        -0x7ffc0000 -> :sswitch_2c
        -0x7ff80000 -> :sswitch_2b
        -0x7ff00000 -> :sswitch_2a
        -0x7f000000 -> :sswitch_29
        -0x7e000000 -> :sswitch_28
        -0x7c000000 -> :sswitch_27
        -0x78000000 -> :sswitch_26
        -0x77ffffff -> :sswitch_25
        -0x70000000 -> :sswitch_24
        -0x60000000 -> :sswitch_23
        -0x40000000 -> :sswitch_22
        0x1 -> :sswitch_21
        0x2 -> :sswitch_20
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_19
        0x200 -> :sswitch_18
        0x400 -> :sswitch_17
        0x800 -> :sswitch_16
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_14
        0x4000 -> :sswitch_13
        0x8000 -> :sswitch_12
        0x10000 -> :sswitch_11
        0x20000 -> :sswitch_10
        0x40000 -> :sswitch_f
        0x40001 -> :sswitch_e
        0x80000 -> :sswitch_d
        0x100000 -> :sswitch_c
        0x200000 -> :sswitch_b
        0x400000 -> :sswitch_a
        0x800000 -> :sswitch_9
        0x1000000 -> :sswitch_8
        0x2000000 -> :sswitch_7
        0x4000000 -> :sswitch_6
        0x8000000 -> :sswitch_5
        0x10000000 -> :sswitch_4
        0x20000000 -> :sswitch_3
        0x20000001 -> :sswitch_2
        0x20000002 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$0(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$1(I)[Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1

    new-array v0, p0, [Landroid/media/audio/common/ExtraAudioDescriptor;

    return-object v0
.end method

.method public static blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;
    .locals 4

    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioChannelLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v3, "input"

    goto :goto_0

    :cond_1
    const-string v3, "output"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audio_channel_mask_t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_encapsulation_mode_t_AudioEncapsulationMode(I)I
.end method

.method public static blacklist legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;
    .locals 4

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioFormatDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio_format_t value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_stream_type_t_AudioStreamType(I)I
.end method

.method public static native blacklist legacy2aidl_audio_usage_t_AudioUsage(I)I
.end method
