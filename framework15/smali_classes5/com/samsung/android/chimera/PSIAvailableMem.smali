.class public Lcom/samsung/android/chimera/PSIAvailableMem;
.super Ljava/lang/Object;
.source "PSIAvailableMem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field greylist availMem:J

.field greylist cached:J

.field greylist checkTime:J

.field greylist running:J


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/chimera/PSIAvailableMem$1;

    invoke-direct {v0}, Lcom/samsung/android/chimera/PSIAvailableMem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/chimera/PSIAvailableMem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(JJJJ)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    iput-wide p3, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    iput-wide p5, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    iput-wide p7, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/chimera/PSIAvailableMem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor greylist <init>(Landroid/os/Parcel;Lcom/samsung/android/chimera/PSIAvailableMem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/chimera/PSIAvailableMem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAvailMem()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    return-wide v0
.end method

.method public greylist getCached()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    return-wide v0
.end method

.method public greylist getCheckTime()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    return-wide v0
.end method

.method public greylist getRunning()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    return-wide v0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
