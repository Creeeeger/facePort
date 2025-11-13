.class public Lcom/samsung/android/knox/application/AppInfoLastUsage;
.super Lcom/samsung/android/knox/application/AppInfo;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/AppInfoLastUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lastAppUsage:J

.field public lastLaunchTime:J

.field public launchCountPerMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/AppInfoLastUsage$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/AppInfoLastUsage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/application/AppInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/application/AppInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/AppInfoLastUsage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/knox/application/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/application/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
