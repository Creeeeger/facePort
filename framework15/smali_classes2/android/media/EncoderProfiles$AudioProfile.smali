.class public final Landroid/media/EncoderProfiles$AudioProfile;
.super Ljava/lang/Object;
.source "EncoderProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioProfile"
.end annotation


# instance fields
.field private blacklist bitrate:I

.field private blacklist channels:I

.field private blacklist codec:I

.field private blacklist profile:I

.field private blacklist sampleRate:I


# direct methods
.method constructor blacklist <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    iput p2, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    iput p3, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    iput p4, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    iput p5, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return-void
.end method


# virtual methods
.method public whitelist getBitrate()I
    .locals 1

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    return v0
.end method

.method public whitelist getChannels()I
    .locals 1

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    return v0
.end method

.method public whitelist getCodec()I
    .locals 1

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    return v0
.end method

.method public whitelist getMediaType()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "audio/3gpp"

    return-object v0

    :cond_0
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "audio/amr-wb"

    return-object v0

    :cond_1
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const-string v0, "audio/vorbis"

    return-object v0

    :cond_3
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    const-string v0, "audio/opus"

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown codec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const-string v0, "audio/mp4a-latm"

    return-object v0
.end method

.method public whitelist getProfile()I
    .locals 3

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x27

    return v0

    :cond_2
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    return v0
.end method
