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

.field public static final blacklist IS_FOLDABLE:Z

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

.field public static final blacklist SUPPORT_NEW_DEX:Z

.field public static final blacklist SUPPORT_SFC:Z

.field public static final blacklist SUPPORT_SPEN:Z

.field public static final blacklist SUPPORT_STANDALONE:Z

.field public static final blacklist SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

.field public static final blacklist SUPPORT_WIRELESS_DEX:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    const-string v0, "DMS"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x22344

    if-ge v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    nop

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

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

    new-instance v0, Landroid/util/ArraySet;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEX_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    const-string v3, "dual"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_6

    :cond_6
    :goto_5
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DUAL:Z

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    const-string v3, "dexforpc"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "dop"

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    const-string v3, "standalone"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    const-string v3, "wireless"

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

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORTED_MODES:Ljava/util/Set;

    const-string v3, "newdex"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDebuggableAndSysPropSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v0, v1

    goto :goto_e

    :cond_e
    :goto_d
    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_UIBC_EXTENSION_MOUSE_ICON_SYNC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_USP_LEVEL:I

    sget v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_USP_LEVEL:I

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_f

    :cond_f
    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_USP_LEVEL:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v3, 0x5

    if-ne v0, v3, :cond_10

    move v1, v2

    :cond_10
    sput-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_INBOX_MODEL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isDebuggableAndSysPropSet(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.service.dex."

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

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDesktopMode(Landroid/content/res/Resources;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method
