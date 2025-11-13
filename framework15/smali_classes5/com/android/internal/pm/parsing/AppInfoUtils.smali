.class public Lcom/android/internal/pm/parsing/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .locals 3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .locals 3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x800

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Z)I
    .locals 3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileable()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->hasRequestForegroundServiceExemption()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static blacklist flag(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
