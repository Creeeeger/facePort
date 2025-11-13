.class public Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysDetailUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist drainType:I

.field private blacklist power:D

.field private blacklist usedTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetdrainType(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetusedTime(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method


# virtual methods
.method public blacklist addSysUsage(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method

.method public blacklist calculateDelta(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDrainType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    return v0
.end method

.method public whitelist getPowerUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    return-wide v0
.end method

.method public whitelist getUsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
