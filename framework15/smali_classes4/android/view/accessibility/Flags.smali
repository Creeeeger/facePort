.class public final Landroid/view/accessibility/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_OVERLAY_CALLBACKS:Ljava/lang/String; = "android.view.accessibility.a11y_overlay_callbacks"

.field public static final blacklist FLAG_A11Y_QS_SHORTCUT:Ljava/lang/String; = "android.view.accessibility.a11y_qs_shortcut"

.field public static final blacklist FLAG_ADD_TYPE_WINDOW_CONTROL:Ljava/lang/String; = "android.view.accessibility.add_type_window_control"

.field public static final blacklist FLAG_ALLOW_SHORTCUT_CHOOSER_ON_LOCKSCREEN:Ljava/lang/String; = "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

.field public static final blacklist FLAG_BRAILLE_DISPLAY_HID:Ljava/lang/String; = "android.view.accessibility.braille_display_hid"

.field public static final blacklist FLAG_CLEANUP_ACCESSIBILITY_WARNING_DIALOG:Ljava/lang/String; = "android.view.accessibility.cleanup_accessibility_warning_dialog"

.field public static final blacklist FLAG_COLLECTION_INFO_ITEM_COUNTS:Ljava/lang/String; = "android.view.accessibility.collection_info_item_counts"

.field public static final blacklist FLAG_COPY_EVENTS_FOR_GESTURE_DETECTION:Ljava/lang/String; = "android.view.accessibility.copy_events_for_gesture_detection"

.field public static final blacklist FLAG_ENABLE_SYSTEM_PINCH_ZOOM_GESTURE:Ljava/lang/String; = "android.view.accessibility.enable_system_pinch_zoom_gesture"

.field public static final blacklist FLAG_FIX_MERGED_CONTENT_CHANGE_EVENT_V2:Ljava/lang/String; = "android.view.accessibility.fix_merged_content_change_event_v2"

.field public static final blacklist FLAG_FLASH_NOTIFICATION_SYSTEM_API:Ljava/lang/String; = "android.view.accessibility.flash_notification_system_api"

.field public static final blacklist FLAG_FORCE_INVERT_COLOR:Ljava/lang/String; = "android.view.accessibility.force_invert_color"

.field public static final blacklist FLAG_GRANULAR_SCROLLING:Ljava/lang/String; = "android.view.accessibility.granular_scrolling"

.field public static final blacklist FLAG_MIGRATE_ENABLE_SHORTCUTS:Ljava/lang/String; = "android.view.accessibility.migrate_enable_shortcuts"

.field public static final blacklist FLAG_MOTION_EVENT_OBSERVING:Ljava/lang/String; = "android.view.accessibility.motion_event_observing"

.field public static final blacklist FLAG_PREVENT_LEAKING_VIEWROOTIMPL:Ljava/lang/String; = "android.view.accessibility.prevent_leaking_viewrootimpl"

.field public static final blacklist FLAG_REDUCE_WINDOW_CONTENT_CHANGED_EVENT_THROTTLE:Ljava/lang/String; = "android.view.accessibility.reduce_window_content_changed_event_throttle"

.field public static final blacklist FLAG_RESTORE_A11Y_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "android.view.accessibility.restore_a11y_shortcut_target_service"

.field public static final blacklist FLAG_SKIP_ACCESSIBILITY_WARNING_DIALOG_FOR_TRUSTED_SERVICES:Ljava/lang/String; = "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

.field public static final blacklist FLAG_SUPPORT_SYSTEM_PINCH_ZOOM_OPT_OUT_APIS:Ljava/lang/String; = "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

.field public static final blacklist FLAG_UPDATE_ALWAYS_ON_A11Y_SERVICE:Ljava/lang/String; = "android.view.accessibility.update_always_on_a11y_service"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/view/accessibility/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist a11yOverlayCallbacks()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yOverlayCallbacks()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yQsShortcut()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yQsShortcut()Z

    move-result v0

    return v0
.end method

.method public static greylist addTypeWindowControl()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->addTypeWindowControl()Z

    move-result v0

    return v0
.end method

.method public static greylist allowShortcutChooserOnLockscreen()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->allowShortcutChooserOnLockscreen()Z

    move-result v0

    return v0
.end method

.method public static greylist brailleDisplayHid()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->brailleDisplayHid()Z

    move-result v0

    return v0
.end method

.method public static greylist cleanupAccessibilityWarningDialog()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->cleanupAccessibilityWarningDialog()Z

    move-result v0

    return v0
.end method

.method public static greylist collectionInfoItemCounts()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->collectionInfoItemCounts()Z

    move-result v0

    return v0
.end method

.method public static greylist copyEventsForGestureDetection()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->copyEventsForGestureDetection()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSystemPinchZoomGesture()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->enableSystemPinchZoomGesture()Z

    move-result v0

    return v0
.end method

.method public static greylist fixMergedContentChangeEventV2()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->fixMergedContentChangeEventV2()Z

    move-result v0

    return v0
.end method

.method public static greylist flashNotificationSystemApi()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->flashNotificationSystemApi()Z

    move-result v0

    return v0
.end method

.method public static greylist forceInvertColor()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->forceInvertColor()Z

    move-result v0

    return v0
.end method

.method public static greylist granularScrolling()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->granularScrolling()Z

    move-result v0

    return v0
.end method

.method public static greylist migrateEnableShortcuts()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->migrateEnableShortcuts()Z

    move-result v0

    return v0
.end method

.method public static greylist motionEventObserving()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->motionEventObserving()Z

    move-result v0

    return v0
.end method

.method public static greylist preventLeakingViewrootimpl()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->preventLeakingViewrootimpl()Z

    move-result v0

    return v0
.end method

.method public static greylist reduceWindowContentChangedEventThrottle()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->reduceWindowContentChangedEventThrottle()Z

    move-result v0

    return v0
.end method

.method public static greylist restoreA11yShortcutTargetService()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->restoreA11yShortcutTargetService()Z

    move-result v0

    return v0
.end method

.method public static greylist skipAccessibilityWarningDialogForTrustedServices()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->skipAccessibilityWarningDialogForTrustedServices()Z

    move-result v0

    return v0
.end method

.method public static greylist supportSystemPinchZoomOptOutApis()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->supportSystemPinchZoomOptOutApis()Z

    move-result v0

    return v0
.end method

.method public static greylist updateAlwaysOnA11yService()Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->updateAlwaysOnA11yService()Z

    move-result v0

    return v0
.end method
