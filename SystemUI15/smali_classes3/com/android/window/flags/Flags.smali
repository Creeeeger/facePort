.class public final Lcom/android/window/flags/Flags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/window/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowHideScmButton()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static appCompatUiFramework()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static delegateUnhandledDrags()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static enableAdditionalWindowsAboveStatusBar()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableAppHeaderWithTaskDensity()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingImmersiveHandleHiding()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingModalsPolicy()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingMode()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingSizeConstraints()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingTaskLimit()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingTaskbarRunningApps()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableDesktopWindowingWallpaperActivity()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableTaskStackObserverInShell()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableThemedAppHeaders()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableWindowingDynamicInitialBounds()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static enableWindowingEdgeDragResize()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static ensureWallpaperInTransitions()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static explicitRefreshRateHints()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static insetsDecoupledConfiguration()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static moveAnimationOptionsToChange()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static offloadColorExtraction()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public static predictiveBackSystemAnims()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static supportsMultiInstanceSystemUi()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public static windowSessionRelayoutInfo()Z
    .locals 1

    sget-object v0, Lcom/android/window/flags/Flags;->FEATURE_FLAGS:Lcom/android/window/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method
