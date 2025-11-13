.class public Landroid/view/accessibility/A11yRune;
.super Ljava/lang/Object;
.source "A11yRune.java"


# static fields
.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_AMOLED_DISPLAY:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_COLOR_BLIND:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_COLOR_LENS:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_DMC_COLORWEAKNESS:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_MDNIE_HW:Z = true

.field public static final blacklist A11Y_COLOR_BOOL_SUPPORT_MDNIE_SW:Z = false

.field public static final blacklist A11Y_COMMON_BOOL_FIX_STYLE_BUG:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_GET_WINDOWS_MAIN_DISPLAY:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_LOG_FOR_DEBUG:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_ONEHANDMODE_INITIALIZE_INPUTFILTER:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SAMSUNG_A11Y:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SAMSUNG_USER_STATE_FLAG:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_A11Y_HELPER:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_A11Y_LOGGER:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_DIRECT_ACCESS:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_DUAL_DISPLAY_FOLD:Z = false

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_EXCLUSIVE_TASK_MANAGER:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_GESTURE_NAVI_A11Y_BUTTON:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_GESTURE_TO_STOP_TALKBACK:Z = true

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_SEPERATE_INPUTFILTER_THREAD:Z = false

.field public static final blacklist A11Y_COMMON_BOOL_SUPPORT_WINDOWINFO_RAW_TYPE:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_ACCESSIBILITY_SHORTCUT:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_ACTION_AFTER_POINTER_STOPS:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_ASSISTANT_MENU:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_CLICK_AFTER_POINTER_STOPS:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_EASY_SCREEN:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_IGNORE_REPEAT:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_INTERACTION_CONTROL:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_STICKY_KEYS:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_TAP_DURATION:Z = true

.field public static final blacklist A11Y_DEX_BOOL_SUPPORT_UNIVERSAL_SWITCH:Z = true

.field public static final blacklist A11Y_FLASHNOTI_BOOL_APPLY_NEW_API:Z = true

.field public static final blacklist A11Y_FLASHNOTI_BOOL_SUPPORT_FLASH_NOTIFICATION:Z = true

.field public static final blacklist A11Y_GOOGLE_BOOL_EXCEPTION_BUG_FIX:Z = true

.field public static final blacklist A11Y_HEARING_BOOL_SUPPORT_AMPLIFY_AMBIENT_SOUND:Z = true

.field public static final blacklist A11Y_MAGNIFICATION_BOOL_SUPPORT_SPEN:Z = true

.field public static final blacklist A11Y_MAGNIFICATION_BOOL_SUPPORT_THUMBNAIL:Z = true

.field public static final blacklist A11Y_MAGNIFICATION_BOOL_SUPPORT_UPDATE_PROFILE:Z = true

.field public static final blacklist A11Y_MAGNIFICATION_BOOL_SUPPORT_WINDOW_MAGNIFICATION:Z = true

.field public static final blacklist A11Y_SHORTCUT_BOOL_BLOCK_SHORTCUT_ON_ENABLED_ACCESSCONTROL:Z = true

.field public static final blacklist A11Y_SHORTCUT_BOOL_CHANGE_DEFAULT_TALKBACK_SERVICE:Z = true

.field public static final blacklist A11Y_SHORTCUT_BOOL_COMBINE_A11Y_BUTTON_AND_SHORTCUT_KEY:Z = true

.field public static final blacklist A11Y_SHORTCUT_BOOL_SUPPORT_DIRECT_ACCESS:Z = true

.field public static final blacklist A11Y_SHORTCUT_SUPPORT_BOOL_SAMSUNG_FLOATING_BUTTON:Z = true

.field public static final blacklist A11Y_TALKBACK_BOOL_APPLY_DELAY_FOR_INTERACTION_END:Z = true

.field public static final blacklist A11Y_VISIBILITY_BOOL_SUPPORT_HIGH_CONTRAST_FONT:Z = true

.field public static final blacklist A11Y_VISIBILITY_BOOL_SUPPORT_REMOVE_ANIMATION:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_BUGFIX:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_SUPPORT_CURSOR_CONTROL:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_SUPPORT_DARK_SCREEN:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_SUPPORT_FOCUS_INDICATOR_MULTI_DENSITY:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_SUPPORT_IMPROVE_DOUBLE_TAP_RECOGNITION:Z = true

.field public static final blacklist A11Y_VOICE_BOOL_SUPPORT_SIP:Z = true

.field public static final blacklist ACCOUNT_COMMON_BOOL_DUAL_APP:Z = true

.field static final blacklist CONTENT_URI:Landroid/net/Uri;

.field static final blacklist SELECT_PROJECTION:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "A11yRune"

.field static final blacklist VALUE_INDEX:I = 0x2

.field private static blacklist cursor:Landroid/database/Cursor;

.field private static blacklist mClient:Landroid/content/ContentProviderClient;

.field private static blacklist value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 187
    const-string v0, "content://com.samsung.accessibility.provider/a11ysettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/A11yRune;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    const-string v0, "_id"

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "value"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/A11yRune;->SELECT_PROJECTION:[Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    sput-object v0, Landroid/view/accessibility/A11yRune;->value:Ljava/lang/String;

    .line 191
    sput-object v0, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    .line 192
    sput-object v0, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/String;

    .line 221
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 225
    sget-object v0, Landroid/view/accessibility/A11yRune;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/view/accessibility/A11yRune;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readDataFromAccessibilityProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/view/accessibility/A11yRune;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    sput-object v1, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    .line 198
    if-eqz v1, :cond_0

    .line 199
    sget-object v3, Landroid/view/accessibility/A11yRune;->SELECT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    sget-object v1, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/accessibility/A11yRune;->value:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    sget-object v0, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_4

    .line 214
    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    sget-object v0, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_2
    sget-object v0, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_4

    .line 214
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_3
    sget-object v0, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_4

    .line 214
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 217
    :cond_4
    sget-object v0, Landroid/view/accessibility/A11yRune;->value:Ljava/lang/String;

    return-object v0

    .line 210
    :goto_1
    sget-object v1, Landroid/view/accessibility/A11yRune;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_5
    sget-object v1, Landroid/view/accessibility/A11yRune;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_6

    .line 214
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 216
    :cond_6
    throw v0
.end method
