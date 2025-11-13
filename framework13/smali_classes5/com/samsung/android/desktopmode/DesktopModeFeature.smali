.class public Lcom/samsung/android/desktopmode/DesktopModeFeature;
.super Ljava/lang/Object;
.source "DesktopModeFeature.java"


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist ENABLED:Z = true

.field public static final blacklist FEATURE_AUTO_OPEN_LAST_APP:Z = true

.field public static final blacklist FEATURE_COVERS:Z = true

.field public static final blacklist FEATURE_OFFICIAL_ADAPTERS:Z = true

.field public static final blacklist FEATURE_SPEN:Z = true

.field public static final blacklist FEATURE_STANDALONE_MODE_WALLPAPER:Z

.field public static final blacklist FEATURE_TOUCHPAD:Z = true

.field public static final blacklist FEATURE_UNOFFICIAL_ADAPTERS:Z = true

.field public static final blacklist FOLDABLE_TYPE_FOLD:Z

.field public static final blacklist IS_FOLDABLE:Z = false

.field public static final blacklist IS_TABLET:Z

.field public static final blacklist SPEN_INBOX_MODEL:Z

.field private static final blacklist SPEN_USP_LEVEL:I

.field public static final blacklist SUPPORTED_MODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SUPPORT_DEX_ON_PC:Z

.field public static final blacklist SUPPORT_DUAL:Z

.field public static final blacklist SUPPORT_SFC:Z

.field public static final blacklist SUPPORT_SPEN:Z

.field public static final blacklist SUPPORT_STANDALONE:Z

.field public static final blacklist SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

.field public static final blacklist SUPPORT_WIRELESS_DEX:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 26
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 28
    const-string v3, "DMS"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x22344

    if-ge v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    .line 38
    nop

    .line 39
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 40
    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEX_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    .line 47
    const-string v3, "dual"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v3, v1

    goto :goto_6

    :cond_6
    :goto_5
    move v3, v2

    :goto_6
    sput-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DUAL:Z

    .line 48
    const-string v3, "dexforpc"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "dop"

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    move v3, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v3, v2

    :goto_8
    sput-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    .line 49
    const-string/jumbo v3, "standalone"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    move v3, v1

    goto :goto_a

    :cond_a
    :goto_9
    move v3, v2

    :goto_a
    sput-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 50
    const-string/jumbo v3, "wireless"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move v0, v1

    goto :goto_c

    :cond_c
    :goto_b
    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 51
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

    .line 54
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_USP_LEVEL:I

    .line 57
    if-lez v0, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    move v3, v1

    :goto_d
    sput-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 58
    if-eqz v3, :cond_e

    rem-int/lit8 v0, v0, 0xa

    const/4 v3, 0x5

    if-ne v0, v3, :cond_e

    move v1, v2

    :cond_e
    sput-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_INBOX_MODEL:Z

    .line 61
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FOLDABLE_TYPE_FOLD:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isDebuggableAndSysPropSet(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 78
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.service.dex."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static blacklist isDesktopMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDesktopMode(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 114
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
