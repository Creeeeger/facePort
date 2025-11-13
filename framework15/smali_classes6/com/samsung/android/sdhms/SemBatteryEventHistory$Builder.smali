.class public final Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
.super Ljava/lang/Object;
.source "SemBatteryEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist eventType:I

.field private blacklist eventValue:I

.field private blacklist updateTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgeteventType(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeteventValue(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdateTime(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->updateTime:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;-><init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)V

    return-object v0
.end method

.method public blacklist eventType(I)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventType:I

    return-object p0
.end method

.method public blacklist eventValue(I)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->eventValue:I

    return-object p0
.end method

.method public blacklist updateTime(J)Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->updateTime:J

    return-object p0
.end method
