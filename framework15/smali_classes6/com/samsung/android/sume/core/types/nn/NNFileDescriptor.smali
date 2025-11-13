.class public Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
.super Ljava/lang/Object;
.source "NNFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist fd:Landroid/os/ParcelFileDescriptor;

.field private blacklist length:J

.field private blacklist name:Ljava/lang/String;

.field private blacklist offset:J

.field private blacklist pathUri:Landroid/net/Uri;

.field private blacklist realPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    iget-object v2, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    :goto_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    return-wide v0
.end method

.method public blacklist getPathUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getRealPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setFd(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public blacklist setLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    return-void
.end method

.method public blacklist setPathUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    return-void
.end method

.method public blacklist setRealPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    return-void
.end method

.method public blacklist toNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
