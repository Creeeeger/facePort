.class public Landroid/os/CpuStatsInfo;
.super Ljava/lang/Object;
.source "CpuStatsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CpuStatsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist rel_stime:J

.field public blacklist rel_utime:J

.field public blacklist tid:I

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/os/CpuStatsInfo$1;

    invoke-direct {v0}, Landroid/os/CpuStatsInfo$1;-><init>()V

    sput-object v0, Landroid/os/CpuStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/CpuStatsInfo;->pid:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/CpuStatsInfo;->uid:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/CpuStatsInfo;->tid:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuStatsInfo;->rel_utime:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuStatsInfo;->rel_stime:J

    .line 25
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    iget-object v0, p0, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget v0, p0, Landroid/os/CpuStatsInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Landroid/os/CpuStatsInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v0, p0, Landroid/os/CpuStatsInfo;->tid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-wide v0, p0, Landroid/os/CpuStatsInfo;->rel_utime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Landroid/os/CpuStatsInfo;->rel_stime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    return-void
.end method
