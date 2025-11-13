.class public final Landroid/media/AudioPlaybackConfiguration$FormatInfo;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration$FormatInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;


# instance fields
.field final blacklist mIsSpatialized:Z

.field final blacklist mNativeChannelMask:I

.field final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->DEFAULT:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(ZII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration$FormatInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

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
    instance-of v1, p1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    iget-boolean v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    iget-boolean v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    iget v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    iget v4, v1, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatInfo{isSpatialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelMask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mIsSpatialized:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mNativeChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
