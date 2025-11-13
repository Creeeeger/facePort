.class public Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Ljava/lang/Cloneable;
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

    .line 1085
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "drainType"    # I

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    .line 973
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 974
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 975
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 1080
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetdrainType(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    .line 1049
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 1050
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->-$$Nest$fgetusedTime(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 1051
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    .line 982
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 983
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 984
    return-void
.end method


# virtual methods
.method public blacklist addSysUsage(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 4
    .param p1, "input"    # Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    .line 1057
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1059
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 1060
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 1061
    return-void
.end method

.method public blacklist calculateDelta(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V
    .locals 6
    .param p1, "prev"    # Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    .line 1067
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getDrainType()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1069
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getPowerUsage()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    .line 1070
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->getUsedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    .line 1071
    return-void
.end method

.method public whitelist clone()Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
    .locals 1

    .line 1121
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1122
    :catch_0
    move-exception v0

    .line 1124
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->clone()Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDrainType()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    return v0
.end method

.method public whitelist getPowerUsage()D
    .locals 2

    .line 1001
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    return-wide v0
.end method

.method public whitelist getUsedTime()J
    .locals 2

    .line 1010
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 1110
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->drainType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1112
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->usedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1113
    return-void
.end method
