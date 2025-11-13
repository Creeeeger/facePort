.class Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo$CodecCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureList"
.end annotation


# static fields
.field private static blacklist decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

.field private static blacklist encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->getDecoderFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    invoke-static {}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->getEncoderFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDecoderFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "adaptive-playback"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "secure-playback"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "tunneled-playback"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "partial-frame"

    const/16 v4, 0x8

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "frame-parsing"

    const/16 v4, 0x10

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "multiple-frames"

    const/16 v4, 0x20

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "dynamic-timestamp"

    const/16 v4, 0x40

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "low-latency"

    const/16 v4, 0x80

    invoke-direct {v1, v2, v4, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "dynamic-color-aspects"

    const/16 v4, 0x100

    invoke-direct {v1, v2, v4, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "detached-surface"

    const/16 v4, 0x200

    invoke-direct {v1, v2, v4, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "special-codec"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v5, [Landroid/media/MediaCodecInfo$Feature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$Feature;

    return-object v1
.end method

.method private static blacklist getEncoderFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "intra-refresh"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "multiple-frames"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "dynamic-timestamp"

    const/4 v5, 0x4

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "qp-bounds"

    const/16 v5, 0x8

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "encoding-statistics"

    const/16 v5, 0x10

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "hdr-editing"

    const/16 v5, 0x20

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "hlg-editing"

    const/16 v5, 0x40

    invoke-direct {v1, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "region-of-interest"

    const/16 v5, 0x80

    invoke-direct {v1, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string v2, "special-codec"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v5, v4, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Landroid/media/MediaCodecInfo$Feature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$Feature;

    return-object v1
.end method

.method public static blacklist getFeatures(Z)[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0

    :cond_0
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDecoderFeatures$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Landroid/media/codec/Flags;->dynamicColorAspects()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getDecoderFeatures$1()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Landroid/media/codec/Flags;->nullOutputSurface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getEncoderFeatures$2()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Landroid/media/codec/Flags;->hlgEditing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getEncoderFeatures$3()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Landroid/media/codec/Flags;->regionOfInterest()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
