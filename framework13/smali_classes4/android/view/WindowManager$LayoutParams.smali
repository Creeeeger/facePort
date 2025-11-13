.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$InputFeatureFlags;,
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SystemUiVisibilityFlags;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;,
        Landroid/view/WindowManager$LayoutParams$PrivateFlags;,
        Landroid/view/WindowManager$LayoutParams$SystemFlags;,
        Landroid/view/WindowManager$LayoutParams$Flags;,
        Landroid/view/WindowManager$LayoutParams$WindowType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final blacklist ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final whitelist ALPHA_CHANGED:I = 0x80

.field public static final whitelist ANIMATION_CHANGED:I = 0x10

.field public static final blacklist BLUR_BEHIND_RADIUS_CHANGED:I = 0x20000000

.field public static final whitelist BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final greylist-max-o BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final greylist-max-o COLOR_MODE_CHANGED:I = 0x4000000

.field public static final blacklist COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final blacklist COVER_MODE_NONE:I = 0x0

.field public static final blacklist COVER_MODE_SVIEW:I = 0x1

.field public static final blacklist COVER_MODE_SVIEW_SUB_WINDOW:I = 0xa

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIM_AMOUNT_CHANGED:I = 0x20

.field public static final blacklist EXTENSION_FLAG_ALLOW_GESTURE_EXCLUSION_RESTRICTIONS:I = 0x200000

.field public static final blacklist EXTENSION_FLAG_DECOR_CAPTION_WINDOW:I = 0x100

.field public static final blacklist EXTENSION_FLAG_DELIVER_OUTSIDE_TOUCH:I = 0x8000000

.field public static final blacklist EXTENSION_FLAG_DEX_TOUCH_PAD_FLAG_ABS_COORDINATE:I = 0x40000000

.field public static final blacklist EXTENSION_FLAG_DEX_TOUCH_PAD_WINDOW:I = 0x20000000

.field public static final blacklist EXTENSION_FLAG_DOZE_MODE:I = 0x40000

.field public static final blacklist EXTENSION_FLAG_FIXED_ORIENTATION_PORTRAIT:I = 0x8

.field public static final blacklist EXTENSION_FLAG_FORCE_LIGHT_NAVIGATION_BAR:I = 0x100000

.field public static final blacklist EXTENSION_FLAG_MULTI_WINDOW_HANDLER_HIDDEN:I = 0x1000000

.field public static final blacklist EXTENSION_FLAG_SHOULD_NOT_AFFECT_LIGHT_BAR_APPEARANCE:I = 0x400000

.field public static final blacklist EXTENSION_FLAG_SVIEW_COVER:I = 0x10000000

.field public static final blacklist EXTENSION_FLAG_TRANSPARENT_POP_OVER:I = 0x2

.field public static final blacklist EXTENSION_FLAG_USE_LAYOUT_IN_UDC_CUTOUT:I = 0x2000

.field public static final whitelist FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final whitelist FIRST_SUB_WINDOW:I = 0x3e8

.field public static final whitelist FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final whitelist FLAGS_CHANGED:I = 0x4

.field public static final whitelist FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final whitelist FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final whitelist FLAG_BLUR_BEHIND:I = 0x4

.field public static final whitelist FLAG_DIM_BEHIND:I = 0x2

.field public static final whitelist FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final whitelist FLAG_FORCE_NOT_FULLSCREEN:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_FULLSCREEN:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final whitelist FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final whitelist FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final whitelist FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_INSET_DECOR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final whitelist FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final whitelist FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final whitelist FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final whitelist FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final whitelist FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final whitelist FLAG_SCALED:I = 0x4000

.field public static final whitelist FLAG_SECURE:I = 0x2000

.field public static final whitelist FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final whitelist FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist FLAG_SLIPPERY:I = 0x20000000

.field public static final whitelist FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final whitelist FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_STATUS:I = 0x4000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final whitelist FORMAT_CHANGED:I = 0x8

.field public static final greylist-max-o INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final greylist-max-r INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x2

.field public static final greylist-max-o INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x1

.field public static final blacklist INPUT_FEATURE_SPY:I = 0x4

.field public static final blacklist INSET_FLAGS_CHANGED:I = 0x8000000

.field public static final greylist-max-o INVALID_WINDOW_TYPE:I = -0x1

.field public static final whitelist LAST_APPLICATION_WINDOW:I = 0x63

.field public static final whitelist LAST_SUB_WINDOW:I = 0x7cf

.field public static final whitelist LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final whitelist LAYOUT_CHANGED:I = 0x1

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x3

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final whitelist MEMORY_TYPE_CHANGED:I = 0x100

.field public static final whitelist MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MINIMAL_POST_PROCESSING_PREFERENCE_CHANGED:I = 0x10000000

.field public static final blacklist MULTI_WINDOW_FLAG_BELOW_IME:I = 0x8

.field public static final blacklist MULTI_WINDOW_FLAG_DIVIER_RESIZE_LAYOUT:I = 0x40

.field public static final blacklist MULTI_WINDOW_FLAG_EAVESDROP_DRAG_EVENT:I = 0x10

.field public static final blacklist MULTI_WINDOW_FLAG_HANDLER:I = 0x1

.field public static final blacklist MULTI_WINDOW_FLAG_LOCATE_TO_NATURAL_SWITCHING_ANCHOR:I = 0x20

.field public static final blacklist MULTI_WINDOW_FLAG_MENU_POPUP:I = 0x2

.field public static final blacklist MULTI_WINDOW_FLAG_NAVIGATION_BAR_TRANSPARENT:I = 0x4

.field public static final blacklist MW_FLAGS_CHANGED:I = 0x2

.field public static final greylist-max-o PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final blacklist PREFERRED_MAX_DISPLAY_REFRESH_RATE:I = -0x80000000

.field public static final blacklist PREFERRED_MIN_DISPLAY_REFRESH_RATE:I = 0x40000000

.field public static final greylist-max-o PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final greylist-max-o PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_APPEARANCE_CONTROLLED:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_BEHAVIOR_CONTROLLED:I = 0x8000000

.field public static final blacklist PRIVATE_FLAG_COLOR_SPACE_AGNOSTIC:I = 0x1000000

.field public static final greylist-max-o PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final greylist-max-o PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final blacklist PRIVATE_FLAG_EXCLUDE_FROM_SCREEN_MAGNIFICATION:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_FIT_INSETS_CONTROLLED:I = 0x10000000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_FORCE_DRAW_BAR_BACKGROUNDS:I = 0x20000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final blacklist PRIVATE_FLAG_FORCE_SHOW_STATUS_BAR:I = 0x1000

.field public static final blacklist PRIVATE_FLAG_INSET_PARENT_FRAME_BY_IME:I = 0x40000000

.field public static final blacklist PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final blacklist PRIVATE_FLAG_LAYOUT_SIZE_EXTENDED_BY_CUTOUT:I = 0x2000

.field public static final blacklist PRIVATE_FLAG_NOT_MAGNIFIABLE:I = 0x400000

.field public static final greylist PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final blacklist PRIVATE_FLAG_STATUS_FORCE_SHOW_NAVIGATION:I = 0x800000

.field public static final greylist-max-o PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final blacklist PRIVATE_FLAG_TRUSTED_OVERLAY:I = 0x20000000

.field public static final blacklist PRIVATE_FLAG_USE_BLAST:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final greylist-max-o PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final whitelist ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final whitelist ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final whitelist ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final whitelist ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final whitelist ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final greylist-max-o ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final blacklist SCREEN_DIM_DURATION_CHANGED:I = 0x1

.field public static final whitelist SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final whitelist SEM_EXTENSION_FLAG_CHANGE_DIM_EFFECT_TO_BLUR:I = 0x40

.field public static final blacklist SEM_EXTENSION_FLAG_CONTENT_RESIZE_ANIMATION:I = 0x4000

.field public static final blacklist SEM_EXTENSION_FLAG_DELAY_RESIZE_ON_SOFT_INPUT:I = 0x200

.field public static final whitelist SEM_EXTENSION_FLAG_FAKE_FOCUS:I = 0x10000

.field public static final blacklist SEM_EXTENSION_FLAG_FORCE_HIDE_DEX_LOADING_SCREEN:I = 0x1000

.field public static final whitelist SEM_EXTENSION_FLAG_FORCE_HIDE_FLOATING_MULTIWINDOW:I = 0x4000000

.field public static final whitelist SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY:I = 0x20000

.field public static final whitelist SEM_EXTENSION_FLAG_INTERNAL_PRESENTATION_ONLY:I = -0x80000000

.field public static final blacklist SEM_EXTENSION_FLAG_NO_SURFACE_BUFFER:I = 0x80

.field public static final whitelist SEM_EXTENSION_FLAG_OVERRIDE_SYSTEM_UI_POLICY:I = 0x20

.field public static final whitelist SEM_EXTENSION_FLAG_RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT:I = 0x1

.field public static final whitelist SEM_PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final whitelist SEM_PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final whitelist SEM_TYPE_AIR_COMMAND:I = 0x961

.field public static final whitelist SEM_TYPE_AIR_TRANSLATOR:I = 0x98a

.field public static final whitelist SEM_TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final whitelist SEM_TYPE_CARMODE_BAR:I = 0x8de

.field public static final whitelist SEM_TYPE_CARMODE_BAR_OVERLAY:I = 0x8df

.field public static final whitelist SEM_TYPE_COCKTAIL_BAR_OVERLAY:I = 0x8ae

.field public static final blacklist SEM_TYPE_FLOATING_APPLICATION_WINDOW:I = 0x96d

.field public static final whitelist SEM_TYPE_INTERNAL_PRESENTATION:I = 0x967

.field public static final whitelist SEM_TYPE_NAVIGATION_BAR_OVERLAY:I = 0x7e8

.field public static final whitelist SEM_TYPE_POPUP_PLAYER:I = 0x966

.field public static final whitelist SEM_TYPE_SCROLL_CAPTURE:I = 0x989

.field public static final whitelist SEM_TYPE_SMART_SELECT:I = 0x988

.field public static final whitelist SEM_TYPE_STATUS_BAR_OVERLAY:I = 0x8e8

.field public static final whitelist SEM_TYPE_STATUS_BAR_PANEL_USER:I = 0x8e9

.field public static final whitelist SEM_TYPE_SVIEW_COVER_DIALOG:I = 0x833

.field public static final whitelist SEM_TYPE_UNIVERSAL_SWITCH:I = 0x965

.field public static final whitelist SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final whitelist SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final whitelist SOFT_INPUT_ADJUST_RESIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final whitelist SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final whitelist SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final whitelist SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final whitelist SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final whitelist SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final whitelist SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final greylist-max-o SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final whitelist SYSTEM_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final greylist-max-o SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final whitelist TITLE_CHANGED:I = 0x40

.field public static final greylist-max-o TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final blacklist TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I = 0x7f7

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final greylist-max-o TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final whitelist TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final whitelist TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final greylist TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final whitelist TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final whitelist TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final whitelist TYPE_APPLICATION_STARTING:I = 0x3

.field public static final whitelist TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final whitelist TYPE_BASE_APPLICATION:I = 0x1

.field public static final blacklist TYPE_BIXBY_CLIENT:I = 0x96e

.field public static final greylist-max-o TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final whitelist TYPE_CHANGED:I = 0x2

.field public static final blacklist TYPE_COVER_SCREEN_BASE:I = 0xa3c

.field public static final blacklist TYPE_DIALOG_UNDER_INPUT_METHOD:I = 0xa40

.field public static final blacklist TYPE_DISPLAY_CUTOUT_BACKGROUND:I = 0xa39

.field public static final greylist-max-r TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final greylist-max-o TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final greylist-max-o TYPE_DRAG:I = 0x7e0

.field public static final whitelist TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final blacklist TYPE_EDGE_OVERLAY:I = 0x8b2

.field public static final blacklist TYPE_FINGERPRINT_ON_DISPLAY:I = 0xa3b

.field public static final blacklist TYPE_FINGERPRINT_OVERLAY:I = 0xa3a

.field public static final blacklist TYPE_GAME_TOOL:I = 0x97e

.field public static final blacklist TYPE_GAME_TOOL_OVERLAY:I = 0x97f

.field public static final blacklist TYPE_GLOBAL_ACTION:I = 0x96b

.field public static final greylist-max-o TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x7db

.field public static final whitelist TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final blacklist TYPE_INPUT_METHOD_PANEL:I = 0x44c

.field public static final greylist TYPE_KEYGUARD:I = 0x7d4

.field public static final whitelist TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final greylist-max-o TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final blacklist TYPE_MULTIWINDOW_DISMISS_BUTTON:I = 0xa2e

.field public static final blacklist TYPE_MULTIWINDOW_FREEFORM_RESIZE_GUIDEVIEW:I = 0xa2d

.field public static final blacklist TYPE_MULTIWINDOW_MINIMIZE_CONTAINER:I = 0xa2c

.field public static final blacklist TYPE_MULTIWINDOW_SHELL_OVERLAY:I = 0xa2b

.field public static final blacklist TYPE_MULTI_SPLIT_CELL_DIVIDER:I = 0xa36

.field public static final blacklist TYPE_NAVBAR_GESTURE_INTERCEPT_OVERLAY:I = 0x8e2

.field public static final greylist-max-o TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final greylist-max-o TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final blacklist TYPE_NAVIGATION_BAR_STANDALONE:I = 0xa3f

.field public static final blacklist TYPE_NIGHT_CLOCK_BACKGROUND:I = 0x8b4

.field public static final blacklist TYPE_NIGHT_CLOCK_OVERLAY:I = 0x8b3

.field public static final blacklist TYPE_NOTIFICATION_SHADE:I = 0x7f8

.field public static final blacklist TYPE_NOTIFICATION_SHADE_STANDALONE:I = 0xa3e

.field public static final blacklist TYPE_NOTIFICATION_SHADE_WIDGET:I = 0x96f

.field public static final blacklist TYPE_ONE_HAND_OP_CONTROLLER:I = 0xa28

.field public static final blacklist TYPE_ONE_HAND_OP_HANDLER:I = 0xa29

.field public static final blacklist TYPE_PENTASTIC_ANIM:I = 0x963

.field public static final blacklist TYPE_PENTASTIC_ICON:I = 0x962

.field public static final whitelist TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_POINTER:I = 0x7e2

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x7f5

.field public static final whitelist TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final greylist-max-o TYPE_QS_DIALOG:I = 0x7f3

.field public static final blacklist TYPE_RECENTS_PANEL:I = 0x82f

.field public static final greylist-max-o TYPE_SCREENSHOT:I = 0x7f4

.field public static final blacklist TYPE_SCREENSHOT_EFFECT:I = 0x968

.field public static final whitelist TYPE_SEARCH_BAR:I = 0x7d1

.field public static final greylist-max-r TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final whitelist TYPE_STATUS_BAR:I = 0x7d0

.field public static final blacklist TYPE_STATUS_BAR_ADDITIONAL:I = 0x7f9

.field public static final greylist TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final blacklist TYPE_STATUS_BAR_STANDALONE:I = 0xa3d

.field public static final greylist-max-o TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final whitelist TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final blacklist TYPE_SYSTEM_DIALOG_EXTENSION:I = 0x96c

.field public static final whitelist TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_UNDER_APPLICATION_OVERLAY:I = 0x8b1

.field public static final blacklist TYPE_VIEW_COVER_BACKGROUND:I = 0xa47

.field public static final blacklist TYPE_VIEW_COVER_DISPLAY:I = 0xa46

.field public static final greylist-max-o TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final greylist-max-o TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final greylist-max-o TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final whitelist TYPE_WALLPAPER:I = 0x7dd

.field public static final greylist-max-o USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public blacklist accessibilityTitle:Ljava/lang/CharSequence;

.field public whitelist alpha:F

.field public whitelist buttonBrightness:F

.field public blacklist coverMode:I

.field public whitelist dimAmount:F

.field public blacklist dimDuration:J

.field public whitelist flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public whitelist format:I

.field public whitelist gravity:I

.field public greylist-max-o hasManualSurfaceInsets:Z

.field public greylist hasSystemUiListeners:Z

.field public greylist hideTimeoutMilliseconds:J

.field public whitelist horizontalMargin:F

.field public whitelist horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public greylist inputFeatures:I

.field public final blacklist insetsFlags:Landroid/view/InsetsFlags;

.field public blacklist insetsRoundedCornerFrame:Z

.field public whitelist layoutInDisplayCutoutMode:I

.field private blacklist mBlurBehindRadius:I

.field private greylist-max-o mColorMode:I

.field private greylist-max-o mCompatibilityParamsBackup:[I

.field private blacklist mFitInsetsIgnoringVisibility:Z

.field private blacklist mFitInsetsSides:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "BOTTOM"
            .end subannotation
        }
    .end annotation
.end field

.field private blacklist mFitInsetsTypes:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "STATUS_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "NAVIGATION_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "CAPTION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "MANDATORY_SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TAPPABLE_ELEMENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "WINDOW_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field public blacklist mWindowContextToken:Landroid/os/IBinder;

.field public whitelist memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist multiwindowFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "MULTI_WINDOW_FLAG_HANDLER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "MULTI_WINDOW_FLAG_MENU_POPUP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "MULTI_WINDOW_FLAG_NAVIGATION_BAR_TRANSPARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "MULTI_WINDOW_FLAG_EAVESDROP_DRAG_EVENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "MULTI_WINDOW_FLAG_LOCATE_TO_NATURAL_SWITCHING_ANCHOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "MULTI_WINDOW_FLAG_DIVIER_RESIZE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "MULTI_WINDOW_FLAG_BELOW_IME"
            .end subannotation
        }
    .end annotation
.end field

.field public blacklist navigationBarIconColor:I

.field public whitelist packageName:Ljava/lang/String;

.field public blacklist paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

.field public whitelist preferMinimalPostProcessing:Z

.field public whitelist preferredDisplayModeId:I

.field public blacklist preferredMaxDisplayRefreshRate:F

.field public blacklist preferredMinDisplayRefreshRate:F

.field public whitelist preferredRefreshRate:F

.field public greylist-max-o preservePreviousSurfaceInsets:Z

.field public greylist privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "COMPATIBLE_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_STATUS_BAR_VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "WILL_NOT_REPLACE_ON_RELAUNCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "EXCLUDE_FROM_SCREEN_MAGNIFICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "NOT_MAGNIFIABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "STATUS_FORCE_SHOW_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "COLOR_SPACE_AGNOSTIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "USE_BLAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "APPEARANCE_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "BEHAVIOR_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FIT_INSETS_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "INSET_PARENT_FRAME_BY_IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERCEPT_GLOBAL_DRAG_AND_DROP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public blacklist providedInternalImeInsets:[Landroid/graphics/Insets;

.field public blacklist providedInternalInsets:[Landroid/graphics/Insets;

.field public blacklist providesInsetsTypes:[I

.field public blacklist receiveInsetsIgnoringZOrder:Z

.field public whitelist rotationAnimation:I

.field public blacklist samsungFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "TRANSPARENT_POP_OVER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FIXED_ORIENTATION_PORTRAIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "OVERRIDE_SYSTEM_UI_POLICY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "CHANGE_DIM_EFFECT_TO_BLUR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "NO_SURFACE_BUFFER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "DECOR_CAPTION_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "DELAY_RESIZE_ON_SOFT_INPUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_HIDE_DEX_LOADING_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "USE_LAYOUT_IN_UDC_CUTOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "CONTENT_RESIZE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FAKE_FOCUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "DOZE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "DELAY_RESIZE_ON_SOFT_INPUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "ALLOW_GESTURE_EXCLUSION_RESTRICTIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "SHOULD_NOT_AFFECT_LIGHT_BAR_APPEARANCE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "MULTI_WINDOW_HANDLER_HIDDEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FORCE_HIDE_FLOATING_MULTIWINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "DELIVER_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "SVIEW_COVER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "DEX_TOUCH_PAD_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "DEX_TOUCH_PAD_FLAG_ABS_COORDINATE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERNAL_PRESENTATION_ONLY"
            .end subannotation
        }
    .end annotation
.end field

.field public whitelist screenBrightness:F

.field public blacklist screenDimDuration:J

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public greylist-max-r subtreeSystemUiVisibility:I

.field public final greylist-max-o surfaceInsets:Landroid/graphics/Rect;

.field public whitelist systemUiVisibility:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist token:Landroid/os/IBinder;

.field public whitelist type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f8
                to = "NOTIFICATION_SHADE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x96f
                to = "NOTIFICATION_SHADE_WIDGET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x82f
                to = "RECENTS_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x962
                to = "PENTASTIC_ICON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x963
                to = "PENTASTIC_ANIM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x97e
                to = "GAME_TOOL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x97f
                to = "GAME_TOOL_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public greylist userActivityTimeout:J

.field public whitelist verticalMargin:F

.field public whitelist verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist windowAnimations:I

.field public whitelist x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 5228
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 7

    .line 4816
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4817
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4818
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4819
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 7
    .param p1, "_type"    # I

    .line 4822
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4823
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4824
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4825
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 7
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .line 4828
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4829
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4830
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4831
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4832
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 7
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .line 4835
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v0, Landroid/view/InsetsFlags;

    invoke-direct {v0}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4836
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4837
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4838
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4839
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .line 4842
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v2, Landroid/view/InsetsFlags;

    invoke-direct {v2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4843
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4844
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4845
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4846
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .line 4850
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v2, Landroid/view/InsetsFlags;

    invoke-direct {v2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4851
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4852
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4853
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4854
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4855
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4856
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5240
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 3479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 3528
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3564
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3572
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3620
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3637
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3643
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3653
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3786
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3987
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3996
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4019
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4047
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4059
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4068
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 4080
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4089
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 4575
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4586
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4595
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4597
    nop

    .line 4631
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4633
    nop

    .line 4651
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4694
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5391
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6048
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5251
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5255
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5256
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5257
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5258
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5260
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5261
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5263
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5265
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5267
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5268
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5271
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5278
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5279
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5280
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5282
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5284
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Landroid/view/InsetsFlags;->appearance:I

    .line 5286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v3, Landroid/view/InsetsFlags;->behavior:I

    .line 5287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5289
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5290
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5293
    .local v0, "insetsTypesLength":I
    if-lez v0, :cond_0

    .line 5294
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 5295
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 5297
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5298
    .local v1, "providedInternalInsetsLength":I
    if-lez v1, :cond_1

    .line 5299
    new-array v2, v1, [Landroid/graphics/Insets;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 5300
    sget-object v3, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 5302
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5303
    .local v2, "providedInternalImeInsetsLength":I
    if-lez v2, :cond_2

    .line 5304
    new-array v3, v2, [Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 5305
    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 5307
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5309
    .local v3, "paramsForRotationLength":I
    if-lez v3, :cond_3

    .line 5310
    new-array v4, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5311
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 5316
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 5317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 5318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 5319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 5325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 5328
    return-void
.end method

.method private blacklist checkNonRecursiveParams()V
    .locals 3

    .line 4804
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 4805
    return-void

    .line 4807
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4808
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    .line 4807
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4809
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params cannot contain params recursively."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4813
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static blacklist inputFeaturesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "inputFeatures"    # I

    .line 6161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6162
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 6163
    and-int/lit8 p0, p0, -0x2

    .line 6164
    const-string v1, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6166
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 6167
    and-int/lit8 p0, p0, -0x3

    .line 6168
    const-string v1, "INPUT_FEATURE_DISABLE_USER_ACTIVITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6170
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 6171
    and-int/lit8 p0, p0, -0x5

    .line 6172
    const-string v1, "INPUT_FEATURE_SPY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6174
    :cond_2
    if-eqz p0, :cond_3

    .line 6175
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6177
    :cond_3
    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isSystemAlertWindowType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 2203
    sparse-switch p0, :sswitch_data_0

    .line 2212
    const/4 v0, 0x0

    return v0

    .line 2210
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7f6 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 6076
    packed-switch p0, :pswitch_data_0

    .line 6086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6080
    :pswitch_0
    const-string v0, "always"

    return-object v0

    .line 6082
    :pswitch_1
    const-string/jumbo v0, "never"

    return-object v0

    .line 6084
    :pswitch_2
    const-string/jumbo v0, "shortEdges"

    return-object v0

    .line 6078
    :pswitch_3
    const-string v0, "default"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist mayUseInputMethod(I)Z
    .locals 2
    .param p0, "flags"    # I

    .line 3283
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x20000

    and-int v1, p0, v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o rotationAnimationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "rotationAnimation"    # I

    .line 6144
    packed-switch p0, :pswitch_data_0

    .line 6156
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6154
    :pswitch_0
    const-string v0, "SEAMLESS"

    return-object v0

    .line 6152
    :pswitch_1
    const-string v0, "JUMPCUT"

    return-object v0

    .line 6150
    :pswitch_2
    const-string v0, "CROSSFADE"

    return-object v0

    .line 6148
    :pswitch_3
    const-string v0, "ROTATE"

    return-object v0

    .line 6146
    :pswitch_4
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o softInputModeToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "softInputMode"    # I

    .line 6091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6092
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    .line 6093
    .local v1, "state":I
    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 6094
    const-string/jumbo v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6095
    packed-switch v1, :pswitch_data_0

    .line 6112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6109
    :pswitch_0
    const-string v3, "always_visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6110
    goto :goto_0

    .line 6106
    :pswitch_1
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6107
    goto :goto_0

    .line 6103
    :pswitch_2
    const-string v3, "always_hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6104
    goto :goto_0

    .line 6100
    :pswitch_3
    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6101
    goto :goto_0

    .line 6097
    :pswitch_4
    const-string/jumbo v3, "unchanged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6098
    nop

    .line 6115
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6117
    :cond_0
    and-int/lit16 v3, p0, 0xf0

    .line 6118
    .local v3, "adjust":I
    if-eqz v3, :cond_1

    .line 6119
    const-string v4, "adjust="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6120
    sparse-switch v3, :sswitch_data_0

    .line 6131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6128
    :sswitch_0
    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6129
    goto :goto_1

    .line 6125
    :sswitch_1
    const-string/jumbo v4, "pan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6126
    goto :goto_1

    .line 6122
    :sswitch_2
    const-string/jumbo v4, "resize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6123
    nop

    .line 6134
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6136
    :cond_1
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_2

    .line 6137
    const-string v4, "forwardNavigation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6139
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method greylist backup()V
    .locals 3

    .line 6022
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6023
    .local v0, "backup":[I
    if-nez v0, :cond_0

    .line 6025
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    move-object v0, v1

    .line 6027
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 6028
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 6029
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 6030
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 6031
    return-void
.end method

.method public final whitelist copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .line 5394
    const/4 v0, 0x0

    .line 5396
    .local v0, "changes":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    .line 5397
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5398
    or-int/lit8 v0, v0, 0x1

    .line 5400
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    .line 5401
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5402
    or-int/lit8 v0, v0, 0x1

    .line 5404
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_2

    .line 5405
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5406
    or-int/lit8 v0, v0, 0x1

    .line 5408
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_3

    .line 5409
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5410
    or-int/lit8 v0, v0, 0x1

    .line 5412
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 5413
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 5414
    or-int/lit8 v0, v0, 0x1

    .line 5416
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 5417
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 5418
    or-int/lit8 v0, v0, 0x1

    .line 5420
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 5421
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5422
    or-int/lit8 v0, v0, 0x1

    .line 5424
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 5425
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5426
    or-int/lit8 v0, v0, 0x1

    .line 5428
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_8

    .line 5429
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5430
    or-int/lit8 v0, v0, 0x2

    .line 5432
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_a

    .line 5433
    xor-int/2addr v1, v2

    .line 5434
    .local v1, "diff":I
    const/high16 v3, 0xc000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_9

    .line 5435
    const/high16 v3, 0x80000

    or-int/2addr v0, v3

    .line 5437
    :cond_9
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5438
    or-int/lit8 v0, v0, 0x4

    .line 5440
    .end local v1    # "diff":I
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v1, v2, :cond_b

    .line 5441
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5442
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 5444
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_c

    .line 5445
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5446
    or-int/lit16 v0, v0, 0x200

    .line 5448
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_d

    .line 5449
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5450
    or-int/lit8 v0, v0, 0x1

    .line 5452
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_e

    .line 5453
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5454
    or-int/lit8 v0, v0, 0x1

    .line 5456
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_f

    .line 5457
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5458
    or-int/lit8 v0, v0, 0x8

    .line 5460
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_10

    .line 5461
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5462
    or-int/lit8 v0, v0, 0x10

    .line 5464
    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_11

    .line 5467
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5469
    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    if-nez v1, :cond_12

    .line 5472
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5474
    :cond_12
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 5477
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5479
    :cond_13
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    .line 5481
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5482
    or-int/lit8 v0, v0, 0x40

    .line 5484
    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 5485
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5486
    or-int/lit16 v0, v0, 0x80

    .line 5488
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_16

    .line 5489
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5490
    or-int/lit8 v0, v0, 0x20

    .line 5492
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    .line 5493
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5494
    or-int/lit16 v0, v0, 0x800

    .line 5496
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    .line 5497
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5498
    or-int/lit16 v0, v0, 0x2000

    .line 5500
    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_19

    .line 5501
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5502
    or-int/lit16 v0, v0, 0x1000

    .line 5505
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_1a

    .line 5506
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5507
    or-int/lit16 v0, v0, 0x400

    .line 5510
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    .line 5511
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5512
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 5515
    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_1c

    .line 5516
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5517
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 5520
    :cond_1c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    .line 5521
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5522
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 5525
    :cond_1d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 5526
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5527
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 5530
    :cond_1e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_1f

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v3, :cond_20

    .line 5532
    :cond_1f
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5533
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5534
    or-int/lit16 v0, v0, 0x4000

    .line 5537
    :cond_20
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_21

    .line 5538
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5539
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 5542
    :cond_21
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v2, :cond_22

    .line 5543
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5544
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 5547
    :cond_22
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 5548
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5549
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 5552
    :cond_23
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_24

    .line 5553
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5554
    or-int/2addr v0, v2

    .line 5557
    :cond_24
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v3, :cond_25

    .line 5558
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5559
    or-int/2addr v0, v2

    .line 5562
    :cond_25
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eq v1, v3, :cond_26

    .line 5563
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5564
    or-int/2addr v0, v2

    .line 5567
    :cond_26
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v3, :cond_27

    .line 5568
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5569
    or-int/2addr v0, v2

    .line 5572
    :cond_27
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    .line 5573
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5574
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 5577
    :cond_28
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_29

    .line 5580
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5581
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 5584
    :cond_29
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eq v1, v2, :cond_2a

    .line 5585
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5586
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 5589
    :cond_2a
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eq v1, v2, :cond_2b

    .line 5590
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5591
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 5594
    :cond_2b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eq v1, v2, :cond_2c

    .line 5595
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5596
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 5600
    :cond_2c
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5602
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const/high16 v3, 0x8000000

    if-eq v1, v2, :cond_2d

    .line 5603
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 5604
    or-int/2addr v0, v3

    .line 5607
    :cond_2d
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eq v1, v2, :cond_2e

    .line 5608
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 5609
    or-int/2addr v0, v3

    .line 5612
    :cond_2e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eq v1, v2, :cond_2f

    .line 5613
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5614
    or-int/lit8 v0, v0, 0x1

    .line 5617
    :cond_2f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-eq v1, v2, :cond_30

    .line 5618
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5619
    or-int/lit8 v0, v0, 0x1

    .line 5622
    :cond_30
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v1, v2, :cond_31

    .line 5623
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5624
    or-int/lit8 v0, v0, 0x1

    .line 5627
    :cond_31
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 5628
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 5629
    or-int/lit8 v0, v0, 0x1

    .line 5632
    :cond_32
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 5633
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 5634
    or-int/lit8 v0, v0, 0x1

    .line 5637
    :cond_33
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 5638
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 5639
    or-int/lit8 v0, v0, 0x1

    .line 5642
    :cond_34
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eq v1, v2, :cond_35

    .line 5643
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 5644
    or-int/lit8 v0, v0, 0x1

    .line 5647
    :cond_35
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 5648
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5649
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5650
    or-int/lit8 v0, v0, 0x1

    .line 5656
    :cond_36
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_37

    .line 5657
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 5658
    or-int/lit8 v0, v0, 0x20

    .line 5661
    :cond_37
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_38

    .line 5662
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 5663
    or-int/lit8 v0, v0, 0x1

    .line 5666
    :cond_38
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 5668
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eq v1, v2, :cond_39

    .line 5669
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5670
    or-int/lit8 v0, v0, 0x4

    .line 5673
    :cond_39
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    if-eq v1, v2, :cond_3a

    .line 5674
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 5675
    or-int/lit8 v0, v0, 0x2

    .line 5677
    :cond_3a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-lez v1, :cond_3b

    .line 5678
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 5682
    :cond_3b
    return v0
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "output"    # Ljava/lang/String;

    .line 5687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5688
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    const-string v1, ""

    invoke-super {p0, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5690
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowManager.LayoutParams={title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    return-object v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 5130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5967
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5968
    .local v0, "token":J
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5969
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5970
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5971
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5972
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5973
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-wide v3, 0x10200000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5974
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const-wide v3, 0x10200000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5975
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5976
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5977
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5978
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5979
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-wide v3, 0x1020000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5980
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-wide v3, 0x1020000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5981
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const-wide v3, 0x1020000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5982
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-wide v3, 0x10e0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5983
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const-wide v3, 0x10200000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5984
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5985
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const-wide v3, 0x10800000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5986
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide v3, 0x10d00000013L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5987
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5988
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const-wide v3, 0x10e00000017L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5989
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-wide v3, 0x10d00000018L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5990
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide v3, 0x10d0000001aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5991
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-wide v3, 0x10d0000001bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5992
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    const-wide v3, 0x10d0000001cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5993
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const-wide v3, 0x10d0000001dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5994
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    const-wide v3, 0x10d0000001eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5995
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-wide v3, 0x10d0000001fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5996
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-wide v3, 0x10d00000020L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5997
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    const-wide v3, 0x10800000021L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5998
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5999
    return-void
.end method

.method public greylist-max-o dumpDimensions(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 5705
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5706
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5707
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5708
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5709
    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5710
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string/jumbo v1, "wrap"

    const-string v2, "fill"

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_1

    .line 5711
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5710
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5712
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5713
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    .line 5714
    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5713
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5715
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5716
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 6053
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 6055
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6056
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6057
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const-string v1, "horizontalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6058
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const-string/jumbo v1, "verticalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6059
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6060
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6061
    return-void
.end method

.method public whitelist getBlurBehindRadius()I
    .locals 1

    .line 4979
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return v0
.end method

.method public whitelist getColorMode()I
    .locals 1

    .line 4934
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public whitelist getFitInsetsSides()I
    .locals 1

    .line 4792
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    return v0
.end method

.method public whitelist getFitInsetsTypes()I
    .locals 1

    .line 4785
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 4866
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final whitelist getUserActivityTimeout()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5095
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public final blacklist getWindowContextToken()Landroid/os/IBinder;
    .locals 1

    .line 5126
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist isFitInsetsIgnoringVisibility()Z
    .locals 1

    .line 4800
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    return v0
.end method

.method public greylist-max-o isFullscreen()Z
    .locals 2

    .line 6069
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isModal()Z
    .locals 1

    .line 6187
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSystemApplicationOverlay()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4777
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist restore()V
    .locals 2

    .line 6039
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6040
    .local v0, "backup":[I
    if-eqz v0, :cond_0

    .line 6041
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6042
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6043
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6044
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6046
    :cond_0
    return-void
.end method

.method public greylist-max-o scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 6006
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6007
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6008
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 6009
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6011
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 6012
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6014
    :cond_1
    return-void
.end method

.method public final whitelist semAddExtensionFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 5013
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5014
    return-void
.end method

.method public final whitelist semAddPrivateFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 4991
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4992
    return-void
.end method

.method public final whitelist semClearExtensionFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 5025
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5026
    return-void
.end method

.method public final whitelist semClearPrivateFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 5002
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5003
    return-void
.end method

.method public final whitelist semSetEnterDimDuration(J)V
    .locals 0
    .param p1, "enterDuration"    # J

    .line 5048
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 5049
    return-void
.end method

.method public final whitelist semSetNavigationBarIconColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 5070
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    .line 5071
    return-void
.end method

.method public final whitelist semSetReceiveInsetsIgnoringZOrder(Z)V
    .locals 0
    .param p1, "receive"    # Z

    .line 5082
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5083
    return-void
.end method

.method public final whitelist semSetScreenDimDuration(J)V
    .locals 0
    .param p1, "dimDuration"    # J

    .line 5059
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 5060
    return-void
.end method

.method public final whitelist semSetScreenTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 5036
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5037
    return-void
.end method

.method public whitelist setBlurBehindRadius(I)V
    .locals 0
    .param p1, "blurBehindRadius"    # I

    .line 4970
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4971
    return-void
.end method

.method public whitelist setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 4923
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4924
    return-void
.end method

.method public whitelist setFitInsetsIgnoringVisibility(Z)V
    .locals 2
    .param p1, "ignore"    # Z

    .line 4732
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4733
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4734
    return-void
.end method

.method public whitelist setFitInsetsSides(I)V
    .locals 2
    .param p1, "sides"    # I

    .line 4722
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4723
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4724
    return-void
.end method

.method public whitelist setFitInsetsTypes(I)V
    .locals 2
    .param p1, "types"    # I

    .line 4711
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4712
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4713
    return-void
.end method

.method public final greylist-max-o setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "manual"    # Z
    .param p3, "preservePrevious"    # Z

    .line 4874
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4877
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4878
    const/high16 v1, 0x40400000    # 3.0f

    .local v1, "scaleFactor":F
    goto :goto_0

    .line 4880
    .end local v1    # "scaleFactor":F
    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_3

    .line 4881
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isNativeActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4882
    const/high16 v1, 0x40000000    # 2.0f

    .restart local v1    # "scaleFactor":F
    goto :goto_0

    .line 4883
    .end local v1    # "scaleFactor":F
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4885
    const/high16 v1, 0x40400000    # 3.0f

    .restart local v1    # "scaleFactor":F
    goto :goto_0

    .line 4887
    .end local v1    # "scaleFactor":F
    :cond_2
    const/high16 v1, 0x40200000    # 2.5f

    .restart local v1    # "scaleFactor":F
    goto :goto_0

    .line 4890
    .end local v1    # "scaleFactor":F
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4892
    .restart local v1    # "scaleFactor":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 4898
    .local v2, "surfaceInset":I
    if-nez v2, :cond_4

    .line 4900
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4902
    :cond_4
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 4903
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 4904
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 4905
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 4906
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4902
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4908
    :goto_1
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 4909
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4910
    return-void
.end method

.method public whitelist setSystemApplicationOverlay(Z)V
    .locals 1
    .param p1, "isSystemApplicationOverlay"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4759
    if-eqz p1, :cond_0

    .line 4760
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 4762
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4764
    :goto_0
    return-void
.end method

.method public final whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 4859
    if-nez p1, :cond_0

    .line 4860
    const-string p1, ""

    .line 4862
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4863
    return-void
.end method

.method public blacklist setTrustedOverlay()V
    .locals 2

    .line 4747
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4748
    return-void
.end method

.method public final whitelist setUserActivityTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5089
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5090
    return-void
.end method

.method public final blacklist setWindowContextToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5107
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5108
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 5698
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;

    .line 5722
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5723
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5724
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 5725
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 5726
    const-string v2, " hm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5727
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5729
    :cond_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 5730
    const-string v2, " vm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5731
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5733
    :cond_1
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v2, :cond_2

    .line 5734
    const-string v2, " gr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5735
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5737
    :cond_2
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v4, 0x7d

    if-eqz v2, :cond_3

    .line 5738
    const-string v2, " sim={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5739
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5740
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5742
    :cond_3
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v2, :cond_4

    .line 5743
    const-string v2, " layoutInDisplayCutoutMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5744
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5746
    :cond_4
    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5747
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v5, "type"

    invoke-static {v0, v5, v2}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5748
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 5749
    const-string v2, " fmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5750
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5752
    :cond_5
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_6

    .line 5753
    const-string v2, " wanim=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5754
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5756
    :cond_6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v5, :cond_7

    .line 5757
    const-string v2, " or="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5758
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5760
    :cond_7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8

    .line 5761
    const-string v2, " alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5762
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5764
    :cond_8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_9

    .line 5765
    const-string v2, " sbrt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5766
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5768
    :cond_9
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    .line 5769
    const-string v2, " bbrt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5770
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5772
    :cond_a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v2, :cond_b

    .line 5773
    const-string v2, " rotAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5774
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5776
    :cond_b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    .line 5777
    const-string v2, " preferredRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5778
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5780
    :cond_c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_d

    .line 5781
    const-string v2, " preferredDisplayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5782
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5784
    :cond_d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    .line 5785
    const-string v2, " preferredMinDisplayRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5786
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5788
    :cond_e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    .line 5789
    const-string v2, " preferredMaxDisplayRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5790
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5792
    :cond_f
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v2, :cond_10

    .line 5793
    const-string v2, " sysuil="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5794
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5796
    :cond_10
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v2, :cond_11

    .line 5797
    const-string v2, " if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->inputFeaturesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5799
    :cond_11
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_12

    .line 5800
    const-string v2, " userActivityTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5802
    :cond_12
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_13

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_15

    .line 5805
    :cond_13
    const-string v2, " surfaceInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5806
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v2, :cond_14

    .line 5807
    const-string v2, " (manual)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5809
    :cond_14
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_15

    .line 5810
    const-string v2, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5813
    :cond_15
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v2, :cond_16

    .line 5814
    const-string v2, " receive insets ignoring z-order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5816
    :cond_16
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v2, :cond_17

    .line 5817
    const-string v2, " colorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    :cond_17
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eqz v2, :cond_18

    .line 5820
    const-string v2, " preferMinimalPostProcessing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5821
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5823
    :cond_18
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eqz v2, :cond_19

    .line 5824
    const-string v2, " blurBehindRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5825
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5827
    :cond_19
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5828
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5830
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLAG_TO_HEX_STRING:Z

    if-eqz v3, :cond_1a

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5832
    :cond_1a
    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v8, "flags"

    invoke-static {v0, v8, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5828
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5833
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v2, :cond_1c

    .line 5834
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5835
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pfl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5837
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLAG_TO_HEX_STRING:Z

    if-eqz v3, :cond_1b

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 5839
    :cond_1b
    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v8, "privateFlags"

    invoke-static {v0, v8, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5835
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5842
    :cond_1c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string/jumbo v3, "mSystemUiVisibility"

    if-eqz v2, :cond_1e

    .line 5843
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5844
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "  sysui="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5846
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_FLAG_TO_HEX_STRING:Z

    if-eqz v8, :cond_1d

    iget v8, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 5848
    :cond_1d
    const-class v8, Landroid/view/View;

    iget v9, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v8, v3, v9}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 5844
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5851
    :cond_1e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v2, :cond_20

    .line 5852
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "  vsysui="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5855
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_FLAG_TO_HEX_STRING:Z

    if-eqz v8, :cond_1f

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 5857
    :cond_1f
    const-class v8, Landroid/view/View;

    iget v9, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v8, v3, v9}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5853
    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5860
    :cond_20
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    if-eqz v2, :cond_21

    .line 5861
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5862
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  apr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->appearance:I

    const-string v9, "appearance"

    invoke-static {v3, v9, v8}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5865
    :cond_21
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eqz v2, :cond_22

    .line 5866
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5867
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bhv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->behavior:I

    const-string v9, "behavior"

    invoke-static {v3, v9, v8}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5870
    :cond_22
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eqz v2, :cond_23

    .line 5871
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5872
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitTypes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-string/jumbo v8, "mFitInsetsTypes"

    invoke-static {v0, v8, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5875
    :cond_23
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    if-eq v2, v3, :cond_24

    .line 5876
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5877
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitSides="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-string/jumbo v8, "mFitInsetsSides"

    invoke-static {v0, v8, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5880
    :cond_24
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eqz v2, :cond_25

    .line 5881
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5882
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitIgnoreVis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5884
    :cond_25
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/16 v3, 0x20

    if-eqz v2, :cond_27

    .line 5885
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5886
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "  insetsTypes="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5887
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v8, v8

    if-ge v2, v8, :cond_27

    .line 5888
    if-lez v2, :cond_26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5889
    :cond_26
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    aget v8, v8, v2

    invoke-static {v8}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5887
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5892
    .end local v2    # "i":I
    :cond_27
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v2, :cond_29

    .line 5893
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5894
    const-string v2, " providedInternalInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5895
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    array-length v8, v8

    if-ge v2, v8, :cond_29

    .line 5896
    if-lez v2, :cond_28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5897
    :cond_28
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5895
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5900
    .end local v2    # "i":I
    :cond_29
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v2, :cond_2b

    .line 5901
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5902
    const-string v2, " providedInternalImeInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5903
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    array-length v8, v8

    if-ge v2, v8, :cond_2b

    .line 5904
    if-lez v2, :cond_2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5905
    :cond_2a
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5903
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5908
    .end local v2    # "i":I
    :cond_2b
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eqz v2, :cond_2c

    .line 5909
    const-string v2, " insetsRoundedCornerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5910
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5912
    :cond_2c
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2e

    array-length v2, v2

    if-eqz v2, :cond_2e

    .line 5913
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5914
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "  paramsForRotation="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5915
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v8, v8

    if-ge v2, v8, :cond_2e

    .line 5916
    if-lez v2, :cond_2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5919
    :cond_2d
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5920
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  rot["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5923
    iget-object v8, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5915
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5929
    .end local v2    # "i":I
    :cond_2e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2f

    .line 5930
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5931
    const-string v2, " dimAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5933
    :cond_2f
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_30

    .line 5934
    const-string v2, " dimDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5936
    :cond_30
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_31

    .line 5937
    const-string v2, " screenDimDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5939
    :cond_31
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    if-ltz v2, :cond_32

    .line 5940
    const-string v2, " naviIconColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5942
    :cond_32
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eqz v2, :cond_34

    .line 5943
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  sfl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLAG_TO_HEX_STRING:Z

    if-eqz v3, :cond_33

    .line 5945
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 5946
    :cond_33
    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const-string/jumbo v5, "samsungFlags"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5944
    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5950
    :cond_34
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    if-eqz v0, :cond_35

    .line 5951
    const-string v0, " mwfl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5953
    :cond_35
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-eqz v0, :cond_36

    .line 5954
    const-string v0, " cm="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5959
    :cond_36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 5134
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5135
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5136
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5137
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5138
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5139
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5140
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5141
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5142
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5144
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5145
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5146
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5147
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5148
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5149
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5150
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5151
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5152
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5153
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5154
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5155
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5156
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5157
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5158
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5159
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5160
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5161
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5162
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5163
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5164
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5165
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5166
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5167
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5168
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5169
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5170
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5171
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5172
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5173
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5174
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5175
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5176
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5177
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5178
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5179
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5180
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5181
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5182
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5183
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5184
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5185
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5186
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5187
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 5189
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5191
    :goto_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_1

    .line 5192
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5193
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 5195
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5197
    :goto_1
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v0, :cond_2

    .line 5198
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5199
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 5201
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5203
    :goto_2
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5204
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    .line 5205
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5206
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5207
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_3

    .line 5209
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5214
    :goto_3
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5215
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5216
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5217
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5220
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5223
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5226
    return-void
.end method
