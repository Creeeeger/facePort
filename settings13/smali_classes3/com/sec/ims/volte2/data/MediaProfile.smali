.class public Lcom/sec/ims/volte2/data/MediaProfile;
.super Ljava/lang/Object;
.source "MediaProfile.java"

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


# instance fields
.field private mAudioBitRate:I

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

    .line 187
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    .line 30
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 31
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 33
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 35
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 36
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 38
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 40
    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    .line 30
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    .line 31
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 33
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 35
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 36
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 38
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 40
    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 91
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_0
    const-string v3, "AMR-WB"

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_1
    const-string v3, "AMR-NB"

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_2
    const-string v3, "EVS-FB"

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_3
    const-string v3, "EVS-SWB"

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_4
    const-string v3, "EVS-WB"

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_5
    const-string v3, "EVS-NB"

    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    :cond_6
    const-string v3, "EVS"

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 107
    :cond_7
    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 109
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/MediaProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget-object p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    :goto_0
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mRttMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
