.class public final Lcom/android/systemui/theme/ThemeOverlayController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAcceptColorEvents:Z

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

.field protected mColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final mContext:Landroid/content/Context;

.field public mContrast:D

.field public final mCurrentColors:Landroid/util/SparseArray;

.field public mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public mDeferredThemeEvaluation:Z

.field public final mDeferredWallpaperColors:Landroid/util/SparseArray;

.field public final mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

.field public final mIsMonetEnabled:Z

.field public mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMainWallpaperColor:I

.field public mNeedsOverlayCreation:Z

.field public mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

.field public final mResources:Landroid/content/res/Resources;

.field public mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSkipSettingChange:Z

.field public final mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

.field protected mThemeStyle:Lcom/android/systemui/monet/Style;

.field public final mUiModeManager:Landroid/app/UiModeManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Landroid/app/UiModeManager;Landroid/app/ActivityManager;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:D

    sget-object v1, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController$4;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/flags/Flags;->MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-object/from16 v2, p13

    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUiModeManager:Landroid/app/UiModeManager;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ThemeOverlayController"

    move-object v2, p12

    invoke-static {p12, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V
    .locals 1

    const-string v0, "android:color/system_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lcom/android/systemui/monet/TonalPalette;->allShadesMapped:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static isSeedColorSet(Lorg/json/JSONObject;Landroid/app/WallpaperColors;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.theme.customization.system_palette"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/systemui/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_3

    const-string p1, "Same as previous set system palette: "

    const-string v0, "ThemeOverlayController"

    invoke-static {p1, p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    return v0
.end method


# virtual methods
.method public final createOverlays(I)V
    .locals 24

    move-object/from16 v0, p0

    new-instance v7, Lcom/android/systemui/monet/ColorScheme;

    iget-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    iget-wide v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v8

    const-wide/16 v10, 0x0

    if-nez v3, :cond_0

    move-wide v5, v10

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :goto_0
    const/4 v3, 0x1

    move-object v1, v7

    move/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;D)V

    iput-object v7, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

    new-instance v1, Lcom/android/systemui/monet/ColorScheme;

    iget-object v15, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    iget-wide v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:D

    cmpl-double v4, v2, v8

    if-nez v4, :cond_1

    move-wide/from16 v16, v10

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v2

    :goto_1
    const/4 v14, 0x0

    move-object v12, v1

    move/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/monet/ColorScheme;-><init>(IZLcom/android/systemui/monet/Style;D)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/theme/ThemeOverlayController;->isNightMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    const-string v1, "neutral"

    invoke-virtual {v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v2, v2, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    const-string v3, "neutral1"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    iget-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v2, v2, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    const-string v3, "neutral2"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    const-string v1, "accent"

    invoke-virtual {v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v2, v2, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    const-string v3, "accent1"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    iget-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v2, v2, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    const-string v3, "accent2"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    iget-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v2, v2, Lcom/android/systemui/monet/ColorScheme;->mAccent3:Lcom/android/systemui/monet/TonalPalette;

    const-string v3, "accent3"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/theme/ThemeOverlayController;->assignTonalPaletteToOverlay(Ljava/lang/String;Landroid/content/om/FabricatedOverlay;Lcom/android/systemui/monet/TonalPalette;)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    const-string v1, "dynamic"

    invoke-virtual {v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;-><init>(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "primary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v6, 0x2

    invoke-direct {v9, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v6, 0x3

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_primary_container"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_primary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "primary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x14

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x1c

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v6, 0x0

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_primary"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_primary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "secondary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x1c

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0xf

    invoke-direct {v9, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x10

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_secondary_container"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_secondary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "secondary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x13

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x15

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x15

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_secondary"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_secondary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "tertiary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v6, 0x5

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v6, 0x6

    invoke-direct {v9, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v6, 0x7

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_tertiary_container"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_tertiary_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "tertiary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x11

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x12

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v6, 0x2

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_tertiary"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_tertiary"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x1

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x2

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v7, "background"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "background"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v6, 0xe

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v6, 0xf

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_background"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_background"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x7

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x8

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x18

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x19

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x16

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_surface"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_surface"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->surfaceContainerLow()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "surface_container_low"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x16

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x1d

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_container_lowest"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_container_lowest"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_container"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x13

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x14

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_container_high"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_container_high"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0xf

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x10

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_container_highest"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_container_highest"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0xf

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x10

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_bright"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_bright"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x13

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x14

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_dim"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_dim"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0xd

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0xe

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "surface_variant"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "surface_variant"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v6, 0x6

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v6, 0x7

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x16

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_surface_variant"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_surface_variant"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x3

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x4

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x16

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "outline"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "outline"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "outline_variant"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->error()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "error"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x17

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x18

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0xc

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_error"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_error"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "error_container"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0xd

    invoke-direct {v8, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0xe

    invoke-direct {v9, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v6, 0x14

    invoke-direct {v11, v2, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_error_container"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object v13, v2

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v2, "on_error_container"

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v5, 0x18

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const-string v6, "control_activated"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v6, "control_normal"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v5, 0xc

    invoke-direct {v7, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v5, 0xd

    invoke-direct {v8, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v14, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v14, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "control_highlight"

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V

    const-string v5, "control_highlight"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v5, 0x7

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const-string/jumbo v6, "text_primary_inverse"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v5, 0x19

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const-string/jumbo v6, "text_secondary_and_tertiary_inverse"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v6, "text_primary_inverse_disable_only"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v6, "text_secondary_and_tertiary_inverse_disabled"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v5, 0x16

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v6, "text_hint_inverse"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    const-string/jumbo v6, "primary_palette_key_color"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    const-string v5, "palette_key_color_primary"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v5, 0xb

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v6, "secondary_palette_key_color"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    const-string v5, "palette_key_color_secondary"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    const-string/jumbo v6, "tertiary_palette_key_color"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    const-string v5, "palette_key_color_tertiary"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v5, 0x1a

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v6, 0x1b

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const-string v6, "neutral_palette_key_color"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    const-string v5, "palette_key_color_neutral"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v5, 0xa

    invoke-direct {v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v6, "neutral_variant_palette_key_color"

    invoke-static {v6, v2, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v2

    const-string v5, "palette_key_color_neutral_variant"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v5, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v2, v1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Ljava/lang/Boolean;Landroid/content/om/FabricatedOverlay;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    invoke-direct {v4, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;-><init>(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "primary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "primary_fixed_dim"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v7, 0x1a

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v10, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v7, 0x1b

    invoke-direct {v10, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x17

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x18

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v23, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    const-wide/high16 v21, 0x4035000000000000L    # 21.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_primary_fixed"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v7, "on_primary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v10, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v7, 0x16

    invoke-direct {v10, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v7, 0x0

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/16 v7, 0x8

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v23, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    const-wide/high16 v21, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_primary_fixed_variant"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v7, "on_primary_fixed_variant"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "secondary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "secondary_fixed_dim"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v10, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/16 v7, 0x8

    invoke-direct {v10, v7}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v7, 0x5

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v7, 0x7

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v23, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    const-wide/high16 v21, 0x4035000000000000L    # 21.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_secondary_fixed"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v7, "on_secondary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v7, 0x1c

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v10, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v7, 0x1d

    invoke-direct {v10, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v7, 0x4

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v7, 0x5

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v23, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    const-wide/high16 v21, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_secondary_fixed_variant"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v7, "on_secondary_fixed_variant"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "tertiary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v6

    const-string/jumbo v7, "tertiary_fixed_dim"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v7, 0x3

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v10, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v7, 0x4

    invoke-direct {v10, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x1b

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x1c

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v23, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    const-wide/high16 v21, 0x4035000000000000L    # 21.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object/from16 v14, v23

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_tertiary_fixed"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v7, "on_tertiary_fixed"

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v7, 0x9

    invoke-direct {v9, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v10, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v7, 0xa

    invoke-direct {v10, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v12, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x12

    invoke-direct {v12, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v13, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v7, 0x13

    invoke-direct {v13, v4, v7}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v4, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    const-wide/high16 v21, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    move-object v14, v4

    invoke-direct/range {v14 .. v22}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v8, "on_tertiary_fixed_variant"

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v4, "on_tertiary_fixed_variant"

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v4, v1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Ljava/lang/Boolean;Landroid/content/om/FabricatedOverlay;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/android/systemui/monet/CustomDynamicColors;

    invoke-direct {v4, v3}, Lcom/android/systemui/monet/CustomDynamicColors;-><init>(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/systemui/monet/CustomDynamicColors;->widgetBackground()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "widget_background"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->clockHour()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "clock_hour"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->clockMinute()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "clock_minute"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x5

    invoke-direct {v8, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x6

    invoke-direct {v9, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v11, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v6, 0x17

    invoke-direct {v11, v4, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide v17, 0x4051800000000000L    # 70.0

    const-wide/high16 v19, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "clock_second"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "clock_second"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x1

    invoke-direct {v8, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v9, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v6, 0x2

    invoke-direct {v9, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v7, "theme_app"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string/jumbo v6, "theme_app"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x15

    invoke-direct {v8, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v6, 0x16

    invoke-direct {v9, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v11, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v6, 0x12

    invoke-direct {v11, v4, v6}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v21, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const-string v7, "on_theme_app"

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v14}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v6, "on_theme_app"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/monet/CustomDynamicColors;->themeAppRing()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "theme_app_ring"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->themeNotif()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "on_theme_app_ring"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->brandA()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "brand_a"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->brandB()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "brand_b"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->brandC()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "brand_c"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->brandD()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "brand_d"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/monet/CustomDynamicColors;->underSurface()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "under_surface"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->shadeActive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "shade_active"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->onShadeActive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "on_shade_active"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->onShadeActiveVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "on_shade_active_variant"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->shadeInactive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string/jumbo v6, "shade_inactive"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->onShadeInactive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "on_shade_inactive"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->onShadeInactiveVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v5

    const-string v6, "on_shade_inactive_variant"

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/monet/CustomDynamicColors;->shadeDisabled()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v4

    const-string/jumbo v5, "shade_disabled"

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v7, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v5, 0x3

    invoke-direct {v7, v5}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v5, 0x4

    invoke-direct {v8, v5}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v6, "overview_background"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    const-string v5, "overview_background"

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v2, v1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Ljava/lang/Boolean;Landroid/content/om/FabricatedOverlay;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mSystemColors="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mMainWallpaperColor="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mSecondaryOverlay="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mNeutralOverlay="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mDynamicOverlay="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mIsMonetEnabled="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mIsFidelityEnabled=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mColorScheme="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mNeedsOverlayCreation="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    const-string v1, "mAcceptColorEvents="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    const-string v1, "mDeferredThemeEvaluation="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    const-string v1, "mThemeStyle="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isNightMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrivateProfile(Landroid/os/UserHandle;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isPrivateProfile()Z

    move-result p0

    return p0
.end method

.method public newFabricatedOverlay(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;
    .locals 2

    new-instance p0, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v0, "com.android.systemui"

    const-string v1, "android"

    invoke-direct {p0, v0, p1, v1}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0
.end method

.method public final reevaluateSystemTheme(Z)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    iget-object v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Lcom/android/systemui/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    if-ne v5, v0, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    const-string v5, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    const-string/jumbo v6, "theme_customization_overlay_packages"

    iget-object v7, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-boolean v8, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    const-string v9, "ThemeOverlayController"

    if-eqz v8, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    sget-object v10, Lcom/android/systemui/monet/Style;->EXPRESSIVE:Lcom/android/systemui/monet/Style;

    sget-object v11, Lcom/android/systemui/monet/Style;->SPRITZ:Lcom/android/systemui/monet/Style;

    sget-object v17, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    sget-object v13, Lcom/android/systemui/monet/Style;->FRUIT_SALAD:Lcom/android/systemui/monet/Style;

    sget-object v14, Lcom/android/systemui/monet/Style;->RAINBOW:Lcom/android/systemui/monet/Style;

    sget-object v15, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    sget-object v16, Lcom/android/systemui/monet/Style;->MONOCHROMATIC:Lcom/android/systemui/monet/Style;

    move-object/from16 v12, v17

    filled-new-array/range {v10 .. v16}, [Lcom/android/systemui/monet/Style;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v10

    invoke-interface {v7, v6, v10}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "android.theme.customization.theme_style"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/monet/Style;->valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v17, v10

    :cond_3
    :goto_1
    move-object/from16 v0, v17

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v9, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v17, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    goto :goto_1

    :goto_2
    iput-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeStyle:Lcom/android/systemui/monet/Style;

    iget v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->createOverlays(I)V

    iput-boolean v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "fetched overlays. accent: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " neutral: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " dynamic: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v10, "#"

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v15

    invoke-interface {v7, v6, v15}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateThemeOverlays. Setting: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v9, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    const-string v2, "android.theme.customization.system_palette"

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/om/OverlayIdentifier;

    const-string v6, "android.theme.customization.dynamic_color"

    const-string v7, "android.theme.customization.accent_color"

    if-eqz v8, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_2
    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->createOverlays(I)V

    iput-boolean v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Invalid color definition: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_8
    if-nez v8, :cond_9

    if-eqz v5, :cond_9

    :try_start_3
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_9
    :goto_6
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {v13, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {v13, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v15}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v15}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;I)V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v6, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mResources:Landroid/content/res/Resources;

    goto :goto_8

    :cond_10
    iget-object v7, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    :goto_8
    iget-object v7, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    invoke-direct {v8, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;-><init>(Z)V

    const v10, 0x106003e

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v11, v11, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x106004b

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v11, v11, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x1060058

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v11, v11, Lcom/android/systemui/monet/ColorScheme;->mAccent3:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x1060024

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v11, v11, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x1060031

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iget-object v11, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v11, v11, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS500()I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x10600c1

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v12, v12, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v11, v12}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x10600c0

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v12, v12, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v11, v12}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x1060089

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v12, v12, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v11, v12}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x106005e

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v8}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v12, v12, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v11, v12}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v11

    if-ne v10, v11, :cond_11

    const v10, 0x10600b4

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v8}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v8, v8, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v7, v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v7

    if-eq v6, v7, :cond_f

    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Applying overlays: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda1;

    invoke-direct {v7, v13}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    if-eqz v5, :cond_13

    iput-boolean v3, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    iget-object v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wallpapertheme_state"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_12

    new-array v4, v4, [Landroid/content/om/FabricatedOverlay;

    iget-object v5, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v5, v4, v3

    move-object v14, v4

    goto :goto_9

    :cond_12
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/content/om/FabricatedOverlay;

    iget-object v6, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v6, v5, v3

    iget-object v3, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v3, v5, v4

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mDynamicOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v4, v5, v3

    move-object v14, v5

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    move-object v14, v3

    :goto_9
    iget-object v12, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    iget-object v1, v12, Lcom/android/systemui/theme/ThemeOverlayApplier;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;

    move-object v11, v3

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;ILjava/util/Set;Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Skipping overlay creation. Theme was already: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/theme/ThemeOverlayController;->mColorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;->run()V

    :goto_a
    return-void
.end method

.method public final start()V
    .locals 6

    const-string v0, "ThemeOverlayController"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    const-string v1, "android.intent.action.PROFILE_ADDED"

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastReceiver:Lcom/android/systemui/theme/ThemeOverlayController$4;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$5;

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/theme/ThemeOverlayController$5;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-string/jumbo v2, "theme_customization_overlay_packages"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v5, -0x1

    invoke-interface {v4, v2, v3, v1, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUiModeManager:Landroid/app/UiModeManager;

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method
