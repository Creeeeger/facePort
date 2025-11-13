.class Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;
.super Ljava/lang/Object;
.source "FrameworkPackageUserStateDefault.java"

# interfaces
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCeDataInode()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getDisabledComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDistractionFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnabledComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHarmfulAppWarning()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstallReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastDisableAppCaller()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSplashScreenTheme()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUninstallReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentDisabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstalled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isInstantApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotLaunched()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStopped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVirtualPreload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
