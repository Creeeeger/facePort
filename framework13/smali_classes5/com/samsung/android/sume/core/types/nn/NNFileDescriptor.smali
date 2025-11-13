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

    .line 21
    new-instance v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "path",
            "fd"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    .line 57
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "fd"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 40
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

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 84
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getLength()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOffset()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    return-wide v0
.end method

.method public blacklist getPathUri()Landroid/net/Uri;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getRealPath()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setFd(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    .line 141
    return-void
.end method

.method public blacklist setLength(J)V
    .locals 0
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 131
    iput-wide p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    .line 132
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->name:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public blacklist setOffset(J)V
    .locals 0
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 123
    iput-wide p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    .line 124
    return-void
.end method

.method public blacklist setPathUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "pathUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathUri"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    .line 99
    return-void
.end method

.method public blacklist setRealPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "realPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "realPath"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public blacklist toNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->pathUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->realPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->offset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
