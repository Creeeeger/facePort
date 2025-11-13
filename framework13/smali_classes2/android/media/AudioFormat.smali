.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final whitelist CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_INVALID:I = 0x0

.field public static final blacklist CHANNEL_IN_2POINT0POINT2:I = 0x60000c

.field public static final blacklist CHANNEL_IN_2POINT1POINT2:I = 0x70000c

.field public static final blacklist CHANNEL_IN_3POINT0POINT2:I = 0x64000c

.field public static final blacklist CHANNEL_IN_3POINT1POINT2:I = 0x74000c

.field public static final blacklist CHANNEL_IN_5POINT1:I = 0x17000c

.field public static final whitelist CHANNEL_IN_BACK:I = 0x20

.field public static final blacklist CHANNEL_IN_BACK_LEFT:I = 0x10000

.field public static final whitelist CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final blacklist CHANNEL_IN_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_IN_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_IN_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_IN_FRONT:I = 0x10

.field public static final greylist-max-o CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final whitelist CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final whitelist CHANNEL_IN_LEFT:I = 0x4

.field public static final whitelist CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final blacklist CHANNEL_IN_LOW_FREQUENCY:I = 0x100000

.field public static final whitelist CHANNEL_IN_MONO:I = 0x10

.field public static final whitelist CHANNEL_IN_PRESSURE:I = 0x400

.field public static final whitelist CHANNEL_IN_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final whitelist CHANNEL_IN_STEREO:I = 0xc

.field public static final blacklist CHANNEL_IN_TOP_LEFT:I = 0x200000

.field public static final blacklist CHANNEL_IN_TOP_RIGHT:I = 0x400000

.field public static final whitelist CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final whitelist CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final whitelist CHANNEL_IN_X_AXIS:I = 0x800

.field public static final whitelist CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final whitelist CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final blacklist CHANNEL_OUT_13POINT_360RA:I = 0x1cbd81c

.field public static final blacklist CHANNEL_OUT_22POINT2:I = 0x3fffffc

.field public static final whitelist CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT2:I = 0x3000fc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT4:I = 0xb40fc

.field public static final greylist-max-o CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final whitelist CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_OUT_7POINT1POINT2:I = 0x3018fc

.field public static final whitelist CHANNEL_OUT_7POINT1POINT4:I = 0xb58fc

.field public static final whitelist CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT4:I = 0xc0b58fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT6:I = 0xc3b58fc

.field public static final whitelist CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final whitelist CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final whitelist CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_CENTER:I = 0x800000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_LEFT:I = 0x400000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_RIGHT:I = 0x1000000

.field public static final whitelist CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_LEFT:I = 0x4000000

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_RIGHT:I = 0x8000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_A:I = 0x20000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_B:I = 0x10000000

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY_2:I = 0x2000000

.field public static final whitelist CHANNEL_OUT_MONO:I = 0x4

.field public static final whitelist CHANNEL_OUT_QUAD:I = 0xcc

.field public static final greylist-max-o CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final whitelist CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final whitelist CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final whitelist CHANNEL_OUT_STEREO:I = 0xc

.field public static final whitelist CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final whitelist CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final whitelist CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_LEFT:I = 0x100000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_RIGHT:I = 0x200000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENCODING_AAC_ADTS_HE_V1:I = 0xc9

.field public static final blacklist ENCODING_AAC_ADTS_HE_V2:I = 0xca

.field public static final blacklist ENCODING_AAC_ADTS_LC:I = 0xc8

.field public static final whitelist ENCODING_AAC_ELD:I = 0xf

.field public static final whitelist ENCODING_AAC_HE_V1:I = 0xb

.field public static final whitelist ENCODING_AAC_HE_V2:I = 0xc

.field public static final whitelist ENCODING_AAC_LC:I = 0xa

.field public static final whitelist ENCODING_AAC_XHE:I = 0x10

.field public static final whitelist ENCODING_AC3:I = 0x5

.field public static final whitelist ENCODING_AC4:I = 0x11

.field public static final whitelist ENCODING_DEFAULT:I = 0x1

.field public static final whitelist ENCODING_DOLBY_MAT:I = 0x13

.field public static final whitelist ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final whitelist ENCODING_DRA:I = 0x1c

.field public static final whitelist ENCODING_DTS:I = 0x7

.field public static final whitelist ENCODING_DTS_HD:I = 0x8

.field public static final whitelist ENCODING_DTS_UHD:I = 0x1b

.field public static final whitelist ENCODING_E_AC3:I = 0x6

.field public static final whitelist ENCODING_E_AC3_JOC:I = 0x12

.field public static final whitelist ENCODING_IEC61937:I = 0xd

.field public static final whitelist ENCODING_INVALID:I = 0x0

.field public static final blacklist ENCODING_LEGACY_SHORT_ARRAY_THRESHOLD:I = 0x14

.field public static final whitelist ENCODING_MP3:I = 0x9

.field public static final whitelist ENCODING_MPEGH_BL_L3:I = 0x17

.field public static final whitelist ENCODING_MPEGH_BL_L4:I = 0x18

.field public static final whitelist ENCODING_MPEGH_LC_L3:I = 0x19

.field public static final whitelist ENCODING_MPEGH_LC_L4:I = 0x1a

.field public static final whitelist ENCODING_OPUS:I = 0x14

.field public static final whitelist ENCODING_PCM_16BIT:I = 0x2

.field public static final whitelist ENCODING_PCM_24BIT_PACKED:I = 0x15

.field public static final whitelist ENCODING_PCM_32BIT:I = 0x16

.field public static final whitelist ENCODING_PCM_8BIT:I = 0x3

.field public static final whitelist ENCODING_PCM_FLOAT:I = 0x4

.field public static final greylist-max-o SAMPLE_RATE_HZ_MAX:I

.field public static final greylist-max-o SAMPLE_RATE_HZ_MIN:I

.field public static final whitelist SAMPLE_RATE_UNSPECIFIED:I

.field public static final greylist-max-o SURROUND_SOUND_ENCODING:[I


# instance fields
.field private final blacklist mChannelCount:I

.field private final greylist-max-o mChannelIndexMask:I

.field private final greylist-max-r mChannelMask:I

.field private final greylist-max-r mEncoding:I

.field private final blacklist mFrameSizeInBytes:I

.field private final greylist-max-o mPropertySetMask:I

.field private final greylist-max-r mSampleRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 607
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    .line 613
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    .line 1408
    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1463
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x11
        0x12
        0x13
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-r <init>(IIII)V
    .locals 6
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "channelIndexMask"    # I

    .line 976
    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 983
    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .locals 4
    .param p1, "propertySetMask"    # I
    .param p2, "encoding"    # I
    .param p3, "sampleRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "channelIndexMask"    # I

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 988
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 989
    move v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 990
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 991
    move v2, p3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 992
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 993
    move v2, p4

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 994
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 995
    move v1, p5

    goto :goto_3

    :cond_3
    nop

    :goto_3
    iput v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 999
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 1000
    .local v1, "channelIndexCount":I
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    .line 1001
    .local v2, "channelCount":I
    if-nez v2, :cond_4

    .line 1002
    move v2, v1

    goto :goto_4

    .line 1003
    :cond_4
    if-eq v2, v1, :cond_5

    if-eqz v1, :cond_5

    .line 1004
    const/4 v2, 0x0

    .line 1006
    :cond_5
    :goto_4
    iput v2, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1008
    const/4 v3, 0x1

    .line 1010
    .local v3, "frameSizeInBytes":I
    :try_start_0
    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v3, v0, v2

    .line 1013
    goto :goto_5

    .line 1011
    :catch_0
    move-exception v0

    .line 1016
    :goto_5
    if-eqz v3, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    .line 1017
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/AudioFormat-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1399
    nop

    .line 1400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1399
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 1406
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist channelCountFromInChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .line 651
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static blacklist channelCountFromOutChannelMask(I)I
    .locals 1
    .param p0, "mask"    # I

    .line 661
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o convertChannelOutMaskToNativeMask(I)I
    .locals 1
    .param p0, "javaMask"    # I

    .line 670
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o convertNativeChannelMaskToOutMask(I)I
    .locals 1
    .param p0, "nativeMask"    # I

    .line 680
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o filterPublicFormats([I)[I
    .locals 4
    .param p0, "formats"    # [I

    .line 947
    if-nez p0, :cond_0

    .line 948
    const/4 v0, 0x0

    return-object v0

    .line 950
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 951
    .local v0, "myCopy":[I
    const/4 v1, 0x0

    .line 952
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 953
    aget v3, v0, v2

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 954
    if-eq v1, v2, :cond_1

    .line 955
    aget v3, v0, v2

    aput v3, v0, v1

    .line 957
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 952
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    .end local v2    # "i":I
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getBytesPerSample(I)I
    .locals 3
    .param p0, "audioFormat"    # I

    .line 745
    sparse-switch p0, :sswitch_data_0

    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 756
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 747
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 751
    :sswitch_3
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0xd -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public static greylist-max-o inChannelMaskFromOutChannelMask(I)I
    .locals 2
    .param p0, "outMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 629
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 633
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 635
    :pswitch_1
    const/16 v0, 0x10

    return v0

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isEncodingLinearFrames(I)Z
    .locals 3
    .param p0, "audioFormat"    # I

    .line 899
    sparse-switch p0, :sswitch_data_0

    .line 938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 907
    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist isEncodingLinearPcm(I)Z
    .locals 3
    .param p0, "audioFormat"    # I

    .line 853
    sparse-switch p0, :sswitch_data_0

    .line 892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 860
    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .line 809
    sparse-switch p0, :sswitch_data_0

    .line 845
    const/4 v0, 0x0

    return v0

    .line 843
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o isValidEncoding(I)Z
    .locals 1
    .param p0, "audioFormat"    # I

    .line 766
    sparse-switch p0, :sswitch_data_0

    .line 802
    const/4 v0, 0x0

    return v0

    .line 800
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o toDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p0, "audioFormat"    # I

    .line 1512
    packed-switch p0, :pswitch_data_0

    .line 1544
    :pswitch_0
    const-string v0, "Unknown surround sound format"

    return-object v0

    .line 1542
    :pswitch_1
    const-string v0, "DRA"

    return-object v0

    .line 1540
    :pswitch_2
    const-string v0, "DTS UHD"

    return-object v0

    .line 1538
    :pswitch_3
    const-string v0, "MPEG-H 3D Audio low complexity profile level 4"

    return-object v0

    .line 1536
    :pswitch_4
    const-string v0, "MPEG-H 3D Audio low complexity profile level 3"

    return-object v0

    .line 1534
    :pswitch_5
    const-string v0, "MPEG-H 3D Audio baseline profile level 4"

    return-object v0

    .line 1532
    :pswitch_6
    const-string v0, "MPEG-H 3D Audio baseline profile level 3"

    return-object v0

    .line 1530
    :pswitch_7
    const-string v0, "Dolby MAT"

    return-object v0

    .line 1528
    :pswitch_8
    const-string v0, "Dolby Atmos in Dolby Digital Plus"

    return-object v0

    .line 1526
    :pswitch_9
    const-string v0, "Dolby AC-4"

    return-object v0

    .line 1524
    :pswitch_a
    const-string v0, "Dolby TrueHD"

    return-object v0

    .line 1522
    :pswitch_b
    const-string v0, "AAC"

    return-object v0

    .line 1520
    :pswitch_c
    const-string v0, "DTS HD"

    return-object v0

    .line 1518
    :pswitch_d
    const-string v0, "DTS"

    return-object v0

    .line 1516
    :pswitch_e
    const-string v0, "Dolby Digital Plus"

    return-object v0

    .line 1514
    :pswitch_f
    const-string v0, "Dolby Digital"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyEncoding(I)Ljava/lang/String;
    .locals 2
    .param p0, "enc"    # I

    .line 372
    sparse-switch p0, :sswitch_data_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :sswitch_0
    const-string v0, "ENCODING_AAC_ADTS_HE_V2"

    return-object v0

    .line 434
    :sswitch_1
    const-string v0, "ENCODING_AAC_ADTS_HE_V1"

    return-object v0

    .line 432
    :sswitch_2
    const-string v0, "ENCODING_AAC_ADTS_LC"

    return-object v0

    .line 428
    :sswitch_3
    const-string v0, "ENCODING_DRA"

    return-object v0

    .line 426
    :sswitch_4
    const-string v0, "ENCODING_DTS_UHD"

    return-object v0

    .line 424
    :sswitch_5
    const-string v0, "ENCODING_MPEGH_LC_L4"

    return-object v0

    .line 422
    :sswitch_6
    const-string v0, "ENCODING_MPEGH_LC_L3"

    return-object v0

    .line 420
    :sswitch_7
    const-string v0, "ENCODING_MPEGH_BL_L4"

    return-object v0

    .line 418
    :sswitch_8
    const-string v0, "ENCODING_MPEGH_BL_L3"

    return-object v0

    .line 416
    :sswitch_9
    const-string v0, "ENCODING_PCM_32BIT"

    return-object v0

    .line 414
    :sswitch_a
    const-string v0, "ENCODING_PCM_24BIT_PACKED"

    return-object v0

    .line 412
    :sswitch_b
    const-string v0, "ENCODING_OPUS"

    return-object v0

    .line 410
    :sswitch_c
    const-string v0, "ENCODING_DOLBY_MAT"

    return-object v0

    .line 408
    :sswitch_d
    const-string v0, "ENCODING_E_AC3_JOC"

    return-object v0

    .line 406
    :sswitch_e
    const-string v0, "ENCODING_AC4"

    return-object v0

    .line 404
    :sswitch_f
    const-string v0, "ENCODING_AAC_XHE"

    return-object v0

    .line 402
    :sswitch_10
    const-string v0, "ENCODING_AAC_ELD"

    return-object v0

    .line 400
    :sswitch_11
    const-string v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    .line 398
    :sswitch_12
    const-string v0, "ENCODING_IEC61937"

    return-object v0

    .line 396
    :sswitch_13
    const-string v0, "ENCODING_AAC_HE_V2"

    return-object v0

    .line 394
    :sswitch_14
    const-string v0, "ENCODING_AAC_HE_V1"

    return-object v0

    .line 392
    :sswitch_15
    const-string v0, "ENCODING_AAC_LC"

    return-object v0

    .line 390
    :sswitch_16
    const-string v0, "ENCODING_MP3"

    return-object v0

    .line 388
    :sswitch_17
    const-string v0, "ENCODING_DTS_HD"

    return-object v0

    .line 386
    :sswitch_18
    const-string v0, "ENCODING_DTS"

    return-object v0

    .line 384
    :sswitch_19
    const-string v0, "ENCODING_E_AC3"

    return-object v0

    .line 382
    :sswitch_1a
    const-string v0, "ENCODING_AC3"

    return-object v0

    .line 380
    :sswitch_1b
    const-string v0, "ENCODING_PCM_FLOAT"

    return-object v0

    .line 378
    :sswitch_1c
    const-string v0, "ENCODING_PCM_8BIT"

    return-object v0

    .line 376
    :sswitch_1d
    const-string v0, "ENCODING_PCM_16BIT"

    return-object v0

    .line 374
    :sswitch_1e
    const-string v0, "ENCODING_INVALID"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_19
        0x7 -> :sswitch_18
        0x8 -> :sswitch_17
        0x9 -> :sswitch_16
        0xa -> :sswitch_15
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_12
        0xe -> :sswitch_11
        0xf -> :sswitch_10
        0x10 -> :sswitch_f
        0x11 -> :sswitch_e
        0x12 -> :sswitch_d
        0x13 -> :sswitch_c
        0x14 -> :sswitch_b
        0x15 -> :sswitch_a
        0x16 -> :sswitch_9
        0x17 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_6
        0x1a -> :sswitch_5
        0x1b -> :sswitch_4
        0x1c -> :sswitch_3
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1360
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1361
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1363
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioFormat;

    .line 1365
    .local v2, "that":Landroid/media/AudioFormat;
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_2

    return v1

    .line 1368
    :cond_2
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v5, v2, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v4, v5, :cond_6

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v5, v2, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v4, v5, :cond_6

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v5, v2, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v4, v5, :cond_6

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    :goto_0
    return v0

    .line 1361
    .end local v2    # "that":Landroid/media/AudioFormat;
    :cond_8
    :goto_1
    return v1
.end method

.method public whitelist getChannelCount()I
    .locals 1

    .line 1096
    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    return v0
.end method

.method public whitelist getChannelIndexMask()I
    .locals 1

    .line 1087
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public whitelist getChannelMask()I
    .locals 1

    .line 1075
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public whitelist getEncoding()I
    .locals 1

    .line 1054
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public whitelist getFrameSizeInBytes()I
    .locals 1

    .line 1115
    iget v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return v0
.end method

.method public greylist-max-o getPropertySetMask()I
    .locals 1

    .line 1120
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .locals 1

    .line 1063
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1380
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1380
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o toLogFriendlyString()Ljava/lang/String;
    .locals 3

    .line 1125
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1125
    const-string v1, "%dch %dHz %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1420
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 1423
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1424
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1420
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1391
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    return-void
.end method
