.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_BUNDLE_KEY_COMPONENT_TAG:Ljava/lang/String; = "component_tag"

.field public static final blacklist EXTRA_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field public static final whitelist TYPE_AUDIO:I = 0x0

.field public static final whitelist TYPE_SUBTITLE:I = 0x2

.field public static final whitelist TYPE_VIDEO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioChannelCount:I

.field private final blacklist mAudioDescription:Z

.field private final greylist-max-o mAudioSampleRate:I

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mEncrypted:Z

.field private final greylist-max-o mExtra:Landroid/os/Bundle;

.field private final blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVideoActiveFormatDescription:B

.field private final greylist-max-o mVideoFrameRate:F

.field private final greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoPixelAspectRatio:F

.field private final greylist-max-o mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/TvTrackInfo;->mType:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    move/from16 v7, p7

    iput v7, v0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    move/from16 v8, p8

    iput v8, v0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    move/from16 v12, p12

    iput v12, v0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    move/from16 v13, p13

    iput v13, v0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    move/from16 v14, p14

    iput v14, v0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    move/from16 v15, p15

    iput v15, v0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    move/from16 v1, p16

    iput-byte v1, v0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    packed-switch v3, :pswitch_data_0

    return v0

    :pswitch_0
    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :pswitch_1
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-byte v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    iget-byte v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :pswitch_2
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    :cond_6
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist getAudioChannelCount()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getAudioSampleRate()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return v0
.end method

.method public final whitelist getVideoActiveFormatDescription()B
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoFrameRate()F
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoHeight()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoPixelAspectRatio()F
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoWidth()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist isAudioDescription()Z
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    return v0
.end method

.method public whitelist isHardOfHearing()Z
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio or a subtitle track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    return v0
.end method

.method public whitelist isSpokenSubtitle()Z
    .locals 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
