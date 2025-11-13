.class public final Landroid/media/tv/AdBuffer;
.super Ljava/lang/Object;
.source "AdBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBuffer:Landroid/os/SharedMemory;

.field private final blacklist mFlags:I

.field private final blacklist mId:I

.field private final blacklist mLength:I

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final blacklist mOffset:I

.field private final blacklist mPresentationTimeUs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/AdBuffer$1;

    invoke-direct {v0}, Landroid/media/tv/AdBuffer$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/os/SharedMemory;IIJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/AdBuffer;->mId:I

    iput-object p2, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    iput p5, p0, Landroid/media/tv/AdBuffer;->mLength:I

    iput-wide p6, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    iput p8, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    iput-object v1, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    iput v4, p0, Landroid/media/tv/AdBuffer;->mLength:I

    iput-wide v5, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    iput v7, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdBuffer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/AdBuffer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/tv/AdBuffer;

    iget v2, p0, Landroid/media/tv/AdBuffer;->mId:I

    iget-object v3, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    iget v6, p0, Landroid/media/tv/AdBuffer;->mLength:I

    iget-wide v7, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    iget v9, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/media/tv/AdBuffer;-><init>(ILjava/lang/String;Landroid/os/SharedMemory;IIJI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    return v0
.end method

.method public whitelist getLength()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdBuffer;->mLength:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOffset()I
    .locals 1

    iget v0, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    return v0
.end method

.method public whitelist getPresentationTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    return-wide v0
.end method

.method public whitelist getSharedMemory()Landroid/os/SharedMemory;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/AdBuffer;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
