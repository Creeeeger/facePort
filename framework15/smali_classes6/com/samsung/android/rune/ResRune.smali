.class public Lcom/samsung/android/rune/ResRune;
.super Ljava/lang/Object;
.source "ResRune.java"


# static fields
.field public static final blacklist ALARM_MANAGER_AUTO_POWER_UP:Z = true

.field public static final blacklist ALARM_MANAGER_DUMP:Z = true

.field public static final blacklist ALARM_MANAGER_GET_NEXT_ALARM_CLOCKS:Z = true

.field public static final blacklist APP_ICON:Z = true

.field public static final blacklist CLEAR_THEMEPARK_OVERLAYS_ON_UNINSTALL:Z = true

.field public static final blacklist COLOR_PALETTE_DISABLE_AOSP:Z = true

.field public static final blacklist COMMIT_AFTER_OMS_INIT:Z = true

.field public static final blacklist CST_FEATURE_ENABLED:Z = true

.field public static final blacklist DEBUG_LOCALE_OVERLAYS:Z = true

.field public static final blacklist DISABLE_COLOR_PALETTE_MAINTENANCE_MODE:Z = true

.field public static final blacklist DISABLE_THEME:Z = true

.field public static final blacklist DISABLE_USER_TRACKER_DYNAMIC_COLOR:Z = true

.field public static final blacklist ENABLE_AOSP_DYNAMIC_COLOR:Z = true

.field public static final blacklist ICON_EXPAND_SCOPE_OF_LIVEICON:Z = true

.field public static final blacklist ICON_FIX_REDUCTION:Z = true

.field public static final blacklist ICON_LOCKSCREEN_SHORTCUT_ICON:Z = true

.field public static final blacklist ICON_SELECTIVE_DAY_NIGHT_MODE:Z = true

.field public static final blacklist ICON_SEM_ARCHIVED_APP_ICON:Z = true

.field public static final blacklist IDMAP_PREVENT_OVERLAY_XML_FOR_SAMSUNGTHEME:Z = true

.field public static final blacklist LOM_LOCALE_CHANGE_OOBE:Z = true

.field public static final blacklist OMS_DUMP_THEME_INFO:Z = true

.field public static final blacklist OMS_EXT_SUPPORT:Z = true

.field public static final blacklist OM_BACKUP_SETTINGS:Z = true

.field public static final blacklist OM_BUG_FIX_LOST_OVERLAY_WHEN_UPDATE_UNINSTALL:Z = true

.field public static final blacklist REMOVE_COLOR_CACHE_ON_UIMODE_CONFIG_CHANGE:Z = true

.field public static final blacklist REMOVE_STALE_OVERLAYS_ON_REBOOT:Z = true

.field public static final blacklist RESOURCES_BUG_FIX:Z = true

.field public static final blacklist RESOURCES_BUG_FIX_ALL_RESOURCE_REFERENCES_LIMIT:Z = true

.field public static final blacklist RESOURCES_BUG_FIX_EMPTY_APK_ASSETS_ISSUE:Z = true

.field public static final blacklist RESOURCES_BUG_FIX_NPE_IN_DUMP_HISTORY:Z = true

.field public static final blacklist RESOURCES_BUG_FIX_UPDATE_INVALID_OVERLAY_PATHS:Z = true

.field public static final blacklist RESOURCES_BUG_FIX_UPDATE_SERVICE_RECORD:Z = true

.field public static final blacklist RESOURCES_FIX_OLD_ASSETS_ADDED:Z = true

.field public static final blacklist RES_FIX_ASSET_NAVIBAR:Z = true

.field public static final blacklist RM_SEP:Z = true

.field public static final blacklist SEM_WALLPAPER_THEME_REGISTER_IN_MUM:Z = true

.field public static final blacklist THEMEPARK_DUMMY_PROGRESS_ON_COVERSCREEN:Z = true

.field public static final blacklist THEMEPARK_FULL_THEME:Z = true

.field public static final blacklist THEMEPARK_ICON_PACK:Z = true

.field public static final blacklist THEMEPARK_SINGLE_THEME:Z = true

.field public static final blacklist THEMEPARK_SINGLE_THEME_PRIORITY:Z = true

.field public static final blacklist THEME_FIX_APP_ICON_PALETTE_RESTORATION:Z = true

.field public static final blacklist THEME_FIX_TOO_MUCH_LOG:Z = true

.field public static final blacklist THEME_OVERLAYS_SANITY_CHECK:Z = true

.field public static final blacklist THEME_RESOURCE_MAPPING:Z = true

.field public static final blacklist THEME_SUPPORT:Z = true

.field public static final blacklist THEME_WALLPAPER_THEMING:Z = true

.field public static final blacklist THEME_WALLPAPER_THEMING_DEBUG:Z

.field public static final blacklist THEME_WINDOW_BACKGROUND_CROP:Z = true

.field public static final blacklist ZIPPED_OVERLAY_SUPPORT:Z = true

.field public static final blacklist ZIPPED_OVERLAY_SUPPORT_CLEANUP:Z = true


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "debug.wallpaper.theme.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/rune/ResRune;->THEME_WALLPAPER_THEMING_DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
