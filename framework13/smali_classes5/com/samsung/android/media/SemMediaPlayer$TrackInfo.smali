.class public Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final whitelist MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final whitelist MEDIA_TRACK_TYPE_SUBTITLE_OUTBAND:I = 0x6

.field public static final whitelist MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final whitelist MEDIA_TRACK_TYPE_TIMEDTEXT_OUTBAND:I = 0x5

.field public static final whitelist MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist MEDIA_TRACK_TYPE_VIDEO:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TrackInfo"


# instance fields
.field private blacklist mChannel:I

.field final blacklist mFormat:Landroid/media/MediaFormat;

.field private blacklist mFrameRate:I

.field private blacklist mLanguage:Ljava/lang/String;

.field private blacklist mMime:Ljava/lang/String;

.field private blacklist mRotationDegrees:I

.field private blacklist mSampleRate:I

.field blacklist mTrackName:Ljava/lang/String;

.field final blacklist mTrackType:I

.field private blacklist mVideoHeight:I

.field private blacklist mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1746
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/media/MediaFormat;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 1597
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    .line 1598
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1599
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 1548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    .line 1549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    .line 1550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    .line 1552
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    .line 1553
    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    .line 1554
    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    .line 1555
    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    .line 1556
    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    .line 1557
    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    .line 1559
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 1560
    const-string v2, ", language : "

    const-string v3, "TrackInfo"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    .line 1562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    .line 1563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    .line 1564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videotype mime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    .line 1573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audiotype mime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplingrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1578
    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 1580
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v2, "is-autoselect"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v2, "is-default"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1585
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .local v0, "textLen":I
    if-lez v0, :cond_4

    .line 1587
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1589
    .local v1, "text":[B
    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 1590
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 1593
    .end local v1    # "text":[B
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1619
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannel()I
    .locals 1

    .line 1731
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    return v0
.end method

.method public blacklist getFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 1607
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1611
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getFrameRate()I
    .locals 1

    .line 1715
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    return v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    :cond_0
    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .locals 1

    .line 1723
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    return v0
.end method

.method public whitelist getTrackType()I
    .locals 1

    .line 1653
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public whitelist getVideoHeight()I
    .locals 1

    .line 1707
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    return v0
.end method

.method public whitelist getVideoRotation()I
    .locals 1

    .line 1685
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    return v0
.end method

.method public whitelist getVideoWidth()I
    .locals 1

    .line 1696
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1627
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1631
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mRotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1635
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1636
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1638
    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1640
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-autoselect"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-default"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1646
    return-void
.end method
