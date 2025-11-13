.class public final Lcom/android/systemui/theme/ThemeOverlayController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never be invoked, all messages should arrive on the overload that has a user id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v4, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperColors;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v4, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    sget-object v7, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v8, v7, Lcom/android/systemui/theme/ThemeOverlayController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v8, v8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    const-string v9, "ThemeOverlayController"

    if-eqz v4, :cond_3

    iget-boolean v10, v7, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    if-nez v10, :cond_3

    if-eqz v8, :cond_3

    iget-object v4, v7, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "colors received; processing deferred until screen off: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    iput-boolean v6, v7, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    iget-object v4, v7, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v4, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    const-string v0, "android.theme.customization.accent_color"

    const-string v7, "lock_wallpaper"

    const-string v8, "android.theme.customization.color_source"

    const-string v10, "Updating theme setting from "

    iget-object v11, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v11, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v11}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v11

    iget-object v12, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    move v12, v5

    goto :goto_2

    :cond_5
    move v12, v6

    :goto_2
    iget-object v13, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v3}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v13

    iget-object v15, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v15, v5, v3}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v15

    if-le v13, v15, :cond_6

    move v13, v14

    goto :goto_3

    :cond_6
    move v13, v5

    :goto_3
    and-int/2addr v13, v2

    if-eqz v13, :cond_7

    move v13, v5

    goto :goto_4

    :cond_7
    move v13, v6

    :goto_4
    if-eqz v13, :cond_8

    iget-object v15, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {v15, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "got new colors: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " where: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eq v3, v11, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Colors "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Not for current user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v9, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_f

    :cond_9
    iget-object v6, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    if-eqz v6, :cond_d

    check-cast v6, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v6

    if-nez v6, :cond_d

    if-eqz v12, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wallpaper color event deferred until setup is finished: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    goto/16 :goto_f

    :cond_a
    iget-boolean v6, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    if-eqz v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wallpaper color event received, but we already were deferring eval: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_b
    const-string v6, "During user setup, but allowing first color event: had? "

    const-string v15, " has? "

    invoke-static {v6, v15, v12}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    move v3, v5

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    invoke-static {v6, v3, v9}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_d
    iget-object v3, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v6, "theme_customization_overlay_packages"

    invoke-interface {v3, v6, v11}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    if-ne v2, v12, :cond_e

    move v12, v5

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    :goto_6
    if-ne v2, v5, :cond_f

    move v15, v5

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    if-nez v11, :cond_10

    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v14, v16

    goto :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_10
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 p3, v3

    const-string/jumbo v3, "preset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v15, :cond_11

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :goto_9
    if-nez v3, :cond_16

    if-nez v5, :cond_16

    if-eqz v13, :cond_16

    invoke-static {v14, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->isSeedColorSet(Lorg/json/JSONObject;Landroid/app/WallpaperColors;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mSkipSettingChange:Z

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.theme.customization.system_palette"

    if-nez v1, :cond_12

    :try_start_1
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const-string v1, "android.theme.customization.dynamic_color"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.color_index"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_13
    const-string v0, "android.theme.customization.color_both"

    if-eqz v12, :cond_14

    const-string v1, "1"

    goto :goto_a

    :cond_14
    const-string v1, "0"

    :goto_a
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    if-ne v2, v0, :cond_15

    goto :goto_b

    :cond_15
    const-string v7, "home_wallpaper"

    :goto_b
    invoke-virtual {v14, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "_applied_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    move-object/from16 v2, p3

    invoke-interface {v2, v6, v0, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_16
    :goto_c
    const/4 v1, 0x0

    goto :goto_e

    :goto_d
    const-string v1, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    invoke-static {v9, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :goto_e
    invoke-virtual {v4, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme(Z)V

    :goto_f
    return-void
.end method
