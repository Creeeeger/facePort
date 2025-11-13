.class public final Lcom/android/server/backup/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/backup/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableClearPipeAfterRestoreFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableIncreaseDatatypesForAgentLogging()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableIncreasedBmmLoggingForRestoreAtInstall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMaxSizeWritesToPipes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMetricsSystemBackupAgents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSkippingRestoreLaunchedApps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableVToURestoreForSystemComponentsInAllowlist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
