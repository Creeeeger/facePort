.class public Lcom/samsung/android/knox/knoxai/TaLoaderOptions;
.super Ljava/lang/Object;
.source "TaLoaderOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/knoxai/TaLoaderOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist process:Ljava/lang/String;

.field private blacklist processLength:I

.field private blacklist root:Ljava/lang/String;

.field private blacklist rootLength:I

.field private blacklist taOffset:I

.field private blacklist taSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/knoxai/TaLoaderOptions-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFd()Ljava/io/FileDescriptor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getProcess()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->process:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessLength()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->processLength:I

    return v0
.end method

.method public blacklist getRoot()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->root:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRootLength()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->rootLength:I

    return v0
.end method

.method public blacklist getTaOffset()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taOffset:I

    return v0
.end method

.method public blacklist getTaSize()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taSize:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->rootLength:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->root:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->processLength:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->process:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->fd:Ljava/io/FileDescriptor;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taOffset:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taSize:I

    .line 111
    return-void
.end method

.method public blacklist setFd(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 57
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->fd:Ljava/io/FileDescriptor;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taOffset:I

    .line 59
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taSize:I

    .line 60
    return-void
.end method

.method public blacklist setProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "process"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->process:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->processLength:I

    .line 46
    return-void
.end method

.method public blacklist setRoot(Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->root:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->rootLength:I

    .line 33
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 93
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->rootLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->root:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->processLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 98
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->taSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
