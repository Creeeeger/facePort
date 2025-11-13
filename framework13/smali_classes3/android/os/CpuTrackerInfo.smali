.class public Landroid/os/CpuTrackerInfo;
.super Ljava/lang/Object;
.source "CpuTrackerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CpuTrackerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist baseSampleTime:J

.field public blacklist curCcuStatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/CcuStatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist curCpuStatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/CpuStatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lastSampleTime:J

.field public blacklist totalCpuTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/os/CpuTrackerInfo$1;

    invoke-direct {v0}, Landroid/os/CpuTrackerInfo$1;-><init>()V

    sput-object v0, Landroid/os/CpuTrackerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuTrackerInfo;->baseSampleTime:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuTrackerInfo;->lastSampleTime:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    .line 21
    sget-object v0, Landroid/os/CpuStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    .line 22
    sget-object v0, Landroid/os/CcuStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 27
    iget-wide v0, p0, Landroid/os/CpuTrackerInfo;->baseSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-wide v0, p0, Landroid/os/CpuTrackerInfo;->lastSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-wide v0, p0, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object v0, p0, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 31
    iget-object v0, p0, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 32
    return-void
.end method
