.class public final Landroid/media/tv/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_AUDIO_METADATA:Ljava/lang/String; = "key_audio_metadata"

.field public static final blacklist KEY_VIDEO_METADATA:Ljava/lang/String; = "key_video_metadata"

.field public static final whitelist REQUEST_TYPE_START:I = 0x1

.field public static final whitelist REQUEST_TYPE_STOP:I = 0x2


# instance fields
.field private final blacklist mEchoInterval:J

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mId:I

.field private final blacklist mMediaFileType:Ljava/lang/String;

.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mRequestType:I

.field private final blacklist mStartTime:J

.field private final blacklist mStopTime:J

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/AdRequest$1;

    invoke-direct {v0}, Landroid/media/tv/AdRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/net/Uri;JJJLandroid/os/Bundle;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/AdRequest;-><init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/ParcelFileDescriptor;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/AdRequest;-><init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/AdRequest;->mId:I

    iput p2, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    iput-object p3, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-wide p5, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    iput-wide p7, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    iput-wide p9, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    iput-object p11, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    iput-object p12, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    iput-object v2, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/AdRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEchoIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    return-wide v0
.end method

.method public whitelist getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    return v0
.end method

.method public whitelist getMediaFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getRequestType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    return-wide v0
.end method

.method public whitelist getStopTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    return-wide v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
