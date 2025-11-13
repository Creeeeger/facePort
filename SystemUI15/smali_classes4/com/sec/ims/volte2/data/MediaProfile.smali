.class public Lcom/sec/ims/volte2/data/MediaProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/MediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_MODE_FULL:I = 0x1


# instance fields
.field private mAudioBitRate:Ljava/lang/String;

.field private mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private mAudioQuality:I

.field private mHeight:I

.field private mRttMode:I

.field private mVideoOrientation:I

.field private mVideoPause:Z

.field private mVideoQuality:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_0
    const-string v3, "AMR-WB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_1
    const-string v3, "AMR-NB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_2
    const-string v3, "EVS-FB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_3
    const-string v3, "EVS-SWB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_4
    const-string v3, "EVS-WB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_5
    const-string v3, "EVS-NB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_6
    const-string v3, "EVS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_7
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAudioBitRate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object p0
.end method

.method public getAudioQuality()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    return p0
.end method

.method public getRttMode()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    return p0
.end method

.method public getVideoPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return p0
.end method

.method public getVideoQuality()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    return p0
.end method

.method public getVideoSize()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v3, v1, :cond_0

    const-string p0, "HD720"

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v2, :cond_1

    const-string p0, "HD720LAND"

    goto :goto_0

    :cond_1
    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const-string v3, "VGA"

    if-ne v0, v2, :cond_3

    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v4, v1, :cond_3

    :cond_2
    move-object p0, v3

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v2, :cond_4

    const-string p0, "VGALAND"

    goto :goto_0

    :cond_4
    const/16 v1, 0x140

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_5

    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v4, v1, :cond_5

    const-string p0, "QVGA"

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v2, :cond_6

    const-string p0, "QVGALAND"

    goto :goto_0

    :cond_6
    const/16 v1, 0xb0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_7

    iget v4, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v4, v1, :cond_7

    const-string p0, "QCIF"

    goto :goto_0

    :cond_7
    if-ne v0, v1, :cond_8

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v2, :cond_8

    const-string p0, "QCIFLAND"

    goto :goto_0

    :cond_8
    if-nez v0, :cond_2

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-nez p0, :cond_2

    const-string p0, "UNSUPPORTED"

    :goto_0
    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    return p0
.end method

.method public setAudioBitRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method

.method public setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-void
.end method

.method public setAudioQuality(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    return-void
.end method

.method public setRttMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return-void
.end method

.method public setVideoQuality(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    iput p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
