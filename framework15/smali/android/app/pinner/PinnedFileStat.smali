.class public final Landroid/app/pinner/PinnedFileStat;
.super Ljava/lang/Object;
.source "PinnedFileStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist bytesPinned:J

.field private blacklist filename:Ljava/lang/String;

.field private blacklist groupName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/pinner/PinnedFileStat$1;

    invoke-direct {v0}, Landroid/app/pinner/PinnedFileStat$1;-><init>()V

    sput-object v0, Landroid/app/pinner/PinnedFileStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/app/pinner/PinnedFileStat;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/pinner/PinnedFileStat-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/pinner/PinnedFileStat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    iput-object p4, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBytesPinned()J
    .locals 2

    iget-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    return-wide v0
.end method

.method public blacklist getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/pinner/PinnedFileStat;->bytesPinned:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/pinner/PinnedFileStat;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
