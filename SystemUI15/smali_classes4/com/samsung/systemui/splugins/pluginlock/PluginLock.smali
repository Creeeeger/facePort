.class public interface abstract Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCK"
    version = 0xe74
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCK"

.field public static final ACTION_BACK_KEY:Ljava/lang/String; = "action_back_key"

.field public static final ACTION_COVER_CLOSED:Ljava/lang/String; = "cover_closed"

.field public static final ACTION_DATA_CLEAR:Ljava/lang/String; = "action_data_clear"

.field public static final ACTION_LID_SWITCH:Ljava/lang/String; = "lid_switch"

.field public static final ACTION_LOCK_STYLE_CHANGED:Ljava/lang/String; = "action_lock_style_changed"

.field public static final ACTION_WALLPAPER_STATE_CHANGED:Ljava/lang/String; = "wallpaper_state_changed"

.field public static final ALLOWED_NUMBER_BASE_BASIC:I = 0xa

.field public static final ALLOWED_NUMBER_BASE_DYNAMIC:I = 0x2710

.field public static final DIFF_VALUE_NOTIFICATION_SETTING:I = 0x1

.field public static final DYNAMIC_LOCK_MODE:I = 0x2

.field public static final ITEM_CLOCK:I = 0x0

.field public static final ITEM_SECURE:I = 0x1

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_LOCK_STAR_CLOCK:Ljava/lang/String; = "key_lock_star_clock"

.field public static final KEY_MUSIC_AVAILABLE:Ljava/lang/String; = "key_music_available"

.field public static final KEY_MUSIC_AVAILABLE_LAND:Ljava/lang/String; = "key_music_available_land"

.field public static final KEY_MUSIC_END_PADDING:Ljava/lang/String; = "key_music_end_padding"

.field public static final KEY_MUSIC_END_PADDING_LAND:Ljava/lang/String; = "key_music_end_padding_land"

.field public static final KEY_MUSIC_GRAVITY:Ljava/lang/String; = "key_music_gravity"

.field public static final KEY_MUSIC_GRAVITY_LAND:Ljava/lang/String; = "key_music_gravity_land"

.field public static final KEY_MUSIC_START_PADDING:Ljava/lang/String; = "key_music_start_padding"

.field public static final KEY_MUSIC_START_PADDING_LAND:Ljava/lang/String; = "key_music_start_padding_land"

.field public static final KEY_MUSIC_TOP_PADDING:Ljava/lang/String; = "key_music_top_padding"

.field public static final KEY_MUSIC_TOP_PADDING_LAND:Ljava/lang/String; = "key_music_top_padding_land"

.field public static final KEY_MUSIC_VISIBILITY:Ljava/lang/String; = "key_music_visibility"

.field public static final KEY_MUSIC_VISIBILITY_LAND:Ljava/lang/String; = "key_music_visibility_land"

.field public static final KEY_PAGE_AVAILABLE:Ljava/lang/String; = "key_page_available"

.field public static final KEY_PAGE_AVAILABLE_LAND:Ljava/lang/String; = "key_page_available_land"

.field public static final KEY_PAGE_BOTTOM_PADDING:Ljava/lang/String; = "key_page_bottom_padding"

.field public static final KEY_PAGE_BOTTOM_PADDING_LAND:Ljava/lang/String; = "key_page_bottom_padding_land"

.field public static final KEY_PAGE_END_PADDING:Ljava/lang/String; = "key_page_end_padding"

.field public static final KEY_PAGE_END_PADDING_LAND:Ljava/lang/String; = "key_page_end_padding_land"

.field public static final KEY_PAGE_GRAVITY:Ljava/lang/String; = "key_page_gravity"

.field public static final KEY_PAGE_GRAVITY_LAND:Ljava/lang/String; = "key_page_gravity_land"

.field public static final KEY_PAGE_SCALE:Ljava/lang/String; = "key_page_scale"

.field public static final KEY_PAGE_SCALE_LAND:Ljava/lang/String; = "key_page_scale_land"

.field public static final KEY_PAGE_START_PADDING:Ljava/lang/String; = "key_page_start_padding"

.field public static final KEY_PAGE_START_PADDING_LAND:Ljava/lang/String; = "key_page_start_padding_land"

.field public static final KEY_PAGE_TOP_PADDING:Ljava/lang/String; = "key_page_top_padding"

.field public static final KEY_PAGE_TOP_PADDING_LAND:Ljava/lang/String; = "key_page_top_padding_land"

.field public static final KEY_SCREEN:Ljava/lang/String; = "screen"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_VISIBILITY:Ljava/lang/String; = "key_visibility"

.field public static final KEY_VISIBILITY_LAND:Ljava/lang/String; = "key_visibility_land"

.field public static final LOCK_STAR_MODE:I = 0x1

.field public static final MAJOR_VERSION:I = 0x25

.field public static final MINOR_VERSION:I = 0x0

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_OVERLAY_VIEW:I = 0x1

.field public static final NON_SWIPE_MODE_ANGLE:I = 0x2d

.field public static final NON_SWIPE_MODE_DOWN:I = 0x8

.field public static final NON_SWIPE_MODE_LEFT:I = 0x1

.field public static final NON_SWIPE_MODE_LONG_TAP:I = 0x20

.field public static final NON_SWIPE_MODE_NONE:I = 0x0

.field public static final NON_SWIPE_MODE_RIGHT:I = 0x2

.field public static final NON_SWIPE_MODE_TAP:I = 0x10

.field public static final NON_SWIPE_MODE_UP:I = 0x4

.field public static final ORIGIN_DLS:I = 0x0

.field public static final ORIGIN_LOCK_STAR:I = 0x1

.field public static final PAUSE:I = 0x0

.field public static final RESUME:I = 0x1

.field public static final SCREEN_MAIN:I = 0x0

.field public static final SCREEN_SUB:I = 0x1

.field public static final TYPE_BLOCK_CAPTURE_LONG_TOUCH:I = 0x2

.field public static final TYPE_BLOCK_CAPTURE_NONE:I = 0x0

.field public static final TYPE_BLOCK_CAPTURE_SYSTEM_UI:I = 0x1

.field public static final TYPE_NOTIFICATION_CARD:I = 0x1

.field public static final TYPE_NOTIFICATION_DEFAULT:I = 0x0

.field public static final TYPE_NOTIFICATION_ICONS_ONLY:I = 0x2

.field public static final TYPE_RECOVER_BASIC:I = 0x1

.field public static final TYPE_RECOVER_STICKY:I = 0x2

.field public static final TYPE_UPDATE_STYLE_FADE:I = 0x0

.field public static final TYPE_UPDATE_STYLE_NO_EFFECT:I = 0x1

.field public static final TYPE_WALLPAPER_CURRENT:I = -0x2

.field public static final TYPE_WALLPAPER_CURRENT_ALL:I = -0x3

.field public static final TYPE_WALLPAPER_HOME:I = 0xa

.field public static final TYPE_WALLPAPER_HOME_GIF:I = 0xc

.field public static final TYPE_WALLPAPER_HOME_IMAGE:I = 0xb

.field public static final TYPE_WALLPAPER_HOME_SUB:I = 0x14

.field public static final TYPE_WALLPAPER_HOME_SUB_GIF:I = 0x16

.field public static final TYPE_WALLPAPER_HOME_SUB_IMAGE:I = 0x15

.field public static final TYPE_WALLPAPER_HOME_SUB_VIDEO:I = 0x17

.field public static final TYPE_WALLPAPER_HOME_VIDEO:I = 0xd

.field public static final TYPE_WALLPAPER_IMAGE:I = 0x1

.field public static final TYPE_WALLPAPER_SOURCE_PATH:I = 0x0

.field public static final TYPE_WALLPAPER_SOURCE_RES_ID:I = 0x1

.field public static final TYPE_WALLPAPER_SOURCE_URI:I = 0x2

.field public static final TYPE_WALLPAPER_VIDEO:I = 0x2

.field public static final VERSION:I = 0xe74

.field public static final VERSION_SUPPORT_MULTIPLE:I = 0x44c


# virtual methods
.method public abstract getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;
.end method

.method public abstract getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;
.end method
