.class public final Landroid/os/PowerMonitorReadings;
.super Ljava/lang/Object;
.source "PowerMonitorReadings.java"


# static fields
.field public static final whitelist ENERGY_UNAVAILABLE:I = -0x1

.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyUws:[J

.field private final blacklist mPowerMonitors:[Landroid/os/PowerMonitor;

.field private final blacklist mTimestampsMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/PowerMonitorReadings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>([Landroid/os/PowerMonitor;[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    iput-object p2, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    iput-object p3, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/os/PowerMonitor;)I
    .locals 1

    iget v0, p0, Landroid/os/PowerMonitor;->index:I

    return v0
.end method


# virtual methods
.method public whitelist getConsumedEnergy(Landroid/os/PowerMonitor;)J
    .locals 3

    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide v1, v1, v0

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist getTimestampMillis(Landroid/os/PowerMonitor;)J
    .locals 3

    iget-object v0, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    sget-object v1, Landroid/os/PowerMonitorReadings;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide v1, v1, v0

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " monitors: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/os/PowerMonitorReadings;->mPowerMonitors:[Landroid/os/PowerMonitor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/PowerMonitor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerMonitorReadings;->mEnergyUws:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerMonitorReadings;->mTimestampsMs:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
