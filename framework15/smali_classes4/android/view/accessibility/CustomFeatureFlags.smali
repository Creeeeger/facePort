.class public Landroid/view/accessibility/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/accessibility/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/accessibility/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/accessibility/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v22, "android.view.accessibility.update_always_on_a11y_service"

    const-string v23, ""

    const-string v2, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v3, "android.view.accessibility.a11y_qs_shortcut"

    const-string v4, "android.view.accessibility.add_type_window_control"

    const-string v5, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    const-string v6, "android.view.accessibility.braille_display_hid"

    const-string v7, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    const-string v8, "android.view.accessibility.collection_info_item_counts"

    const-string v9, "android.view.accessibility.copy_events_for_gesture_detection"

    const-string v10, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    const-string v11, "android.view.accessibility.fix_merged_content_change_event_v2"

    const-string v12, "android.view.accessibility.flash_notification_system_api"

    const-string v13, "android.view.accessibility.force_invert_color"

    const-string v14, "android.view.accessibility.granular_scrolling"

    const-string v15, "android.view.accessibility.migrate_enable_shortcuts"

    const-string v16, "android.view.accessibility.motion_event_observing"

    const-string v17, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v18, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v19, "android.view.accessibility.restore_a11y_shortcut_target_service"

    const-string v20, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    const-string v21, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist a11yOverlayCallbacks()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.accessibility.a11y_overlay_callbacks"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yQsShortcut()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.accessibility.a11y_qs_shortcut"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist addTypeWindowControl()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.accessibility.add_type_window_control"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowShortcutChooserOnLockscreen()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist brailleDisplayHid()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.accessibility.braille_display_hid"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cleanupAccessibilityWarningDialog()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist collectionInfoItemCounts()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.accessibility.collection_info_item_counts"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist copyEventsForGestureDetection()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.accessibility.copy_events_for_gesture_detection"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSystemPinchZoomGesture()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixMergedContentChangeEventV2()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.accessibility.fix_merged_content_change_event_v2"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist flashNotificationSystemApi()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.accessibility.flash_notification_system_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist forceInvertColor()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.accessibility.force_invert_color"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v19, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    const-string v20, "android.view.accessibility.update_always_on_a11y_service"

    const-string v0, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v1, "android.view.accessibility.a11y_qs_shortcut"

    const-string v2, "android.view.accessibility.add_type_window_control"

    const-string v3, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    const-string v4, "android.view.accessibility.braille_display_hid"

    const-string v5, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    const-string v6, "android.view.accessibility.collection_info_item_counts"

    const-string v7, "android.view.accessibility.copy_events_for_gesture_detection"

    const-string v8, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    const-string v9, "android.view.accessibility.fix_merged_content_change_event_v2"

    const-string v10, "android.view.accessibility.flash_notification_system_api"

    const-string v11, "android.view.accessibility.force_invert_color"

    const-string v12, "android.view.accessibility.granular_scrolling"

    const-string v13, "android.view.accessibility.migrate_enable_shortcuts"

    const-string v14, "android.view.accessibility.motion_event_observing"

    const-string v15, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v16, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v17, "android.view.accessibility.restore_a11y_shortcut_target_service"

    const-string v18, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/accessibility/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist granularScrolling()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.accessibility.granular_scrolling"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/accessibility/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist migrateEnableShortcuts()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.accessibility.migrate_enable_shortcuts"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist motionEventObserving()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.accessibility.motion_event_observing"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventLeakingViewrootimpl()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.accessibility.prevent_leaking_viewrootimpl"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reduceWindowContentChangedEventThrottle()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restoreA11yShortcutTargetService()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.accessibility.restore_a11y_shortcut_target_service"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipAccessibilityWarningDialogForTrustedServices()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportSystemPinchZoomOptOutApis()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateAlwaysOnA11yService()Z
    .locals 2

    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.accessibility.update_always_on_a11y_service"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
