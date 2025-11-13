.class Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryHistoryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blacklist atomicFile:Landroid/util/AtomicFile;

.field public final blacklist monotonicTimeMs:J


# direct methods
.method private constructor blacklist <init>(Ljava/io/File;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;JLcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    move-object v2, p1

    check-cast v2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->monotonicTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
