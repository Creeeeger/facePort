.class public final synthetic Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;->$r8$lambda$2R3ojLSCCa_mY4vye6O-KrTI--w(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
