.class public Lcom/samsung/android/multiwindow/MultiWindowUtils;
.super Ljava/lang/Object;
.source "MultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;
    }
.end annotation


# static fields
.field public static final blacklist ADD_APP_PAIR_SHORTCUT_EDGE_PANEL:I = 0x2

.field public static final blacklist ADD_APP_PAIR_SHORTCUT_HOME:I = 0x1

.field public static final blacklist ADD_APP_PAIR_SHORTCUT_TASKBAR:I = 0x0

.field private static final blacklist AI_ASSIST_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.AI_ASSIST"

.field private static final blacklist DENSITY_FREEFORM:I = 0x4

.field private static final blacklist DENSITY_NONE:I = 0x0

.field private static final blacklist DENSITY_SPLIT:I = 0x2

.field public static final blacklist DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

.field public static final blacklist DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

.field public static final blacklist DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

.field private static final blacklist EXTRA_ALL_APPS_BUTTON_POSITION:Ljava/lang/String; = "buttonPos"

.field private static final blacklist EXTRA_LAUNCH_TASK_ID:Ljava/lang/String; = "launchTaskId"

.field private static final blacklist EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final blacklist EXTRA_SPLIT_COMPONENT:Ljava/lang/String; = "split_component_name"

.field private static final blacklist EXTRA_SPLIT_TASK_ID:Ljava/lang/String; = "split_task_id"

.field private static final blacklist EXTRA_SPLIT_TASK_USER_ID:Ljava/lang/String; = "split_task_user_id"

.field public static final blacklist FLEX_PANEL_CLASS_NAME:Ljava/lang/String; = "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

.field public static final blacklist FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist FLEX_PANEL_MEDIA_IMMERSIVE_CLASS_NAME:Ljava/lang/String; = "com.android.wm.shell.controlpanel.activity.FlexDimActivity"

.field private static final blacklist FLEX_PANEL_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field private static final blacklist FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.72f

.field private static final blacklist FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.85f

.field private static final blacklist FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.3f

.field private static final blacklist FREEFORM_DEFAULT_SIZE_RATIO_FOR_MULTI_SPLIT:F = 0.45f

.field public static final blacklist GEMINI_END_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.search.assistant.surfaces.voice.robin.main.MainActivity"

.field public static final blacklist GEMINI_START_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.bard.shellapp.BardEntryPointActivity"

.field private static final blacklist HONEY_SPACE_EDGE_APP_PICKER_CLASS_NAME:Ljava/lang/String; = "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

.field public static final blacklist HONEY_SPACE_EDGE_PANEL_PROVIDER:Ljava/lang/String; = "com.samsung.app.honeyspace.edge.appsedge.ui.panel.AppsEdgePanelProvider"

.field private static final blacklist HONEY_SPACE_EDGE_PKG_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final blacklist HONEY_SPACE_OVERLAY_ALLAPPS_SERVICE_CLS:Ljava/lang/String; = "com.sec.android.app.launcher.overlayapps.OverlayAppsService"

.field public static final blacklist MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final blacklist PERMISSION_CONTROLLER_PACKAGE:Ljava/lang/String; = "com.google.android.permissioncontroller"

.field private static final blacklist SCREEN_CAPTURE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.smartcapture"

.field private static final blacklist SEC_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final blacklist SEND_SPLIT_STATE_CHANGED_INFO:I = 0x3

.field public static final blacklist START_DND_SPLIT_WITH_ALL_APPS:Ljava/lang/String; = "start_dnd_split_with_all_apps"

.field private static final blacklist TRAMPOLINE_APP_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final blacklist VALUE_MODE_FROM_MW:I = 0x3

.field private static final blacklist sIsTablet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->FLEX_PANEL_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->checkIsTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ed70a3d    # 0.42f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0a7efa    # 0.541f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "RotationUtils"

    if-eqz v2, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v5, v7, :cond_1

    if-ne v6, v8, :cond_1

    const-string v9, "adjustBoundsForScreenRatio: Since the screen ratio has not changed, there is no need to calculate new bounds."

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x3f000000    # 0.5f

    if-le v10, v7, :cond_2

    int-to-float v14, v7

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    float-to-int v10, v14

    const/4 v4, 0x1

    :cond_2
    if-le v11, v8, :cond_3

    int-to-float v14, v8

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    float-to-int v11, v14

    const/4 v9, 0x1

    :cond_3
    move v12, v10

    move v14, v11

    iget v15, v2, Landroid/graphics/Rect;->left:I

    if-gez v15, :cond_4

    iget v12, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget v15, v0, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    if-ge v15, v13, :cond_5

    iget v13, v0, Landroid/graphics/Rect;->right:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v12, v13, v15

    :cond_5
    :goto_0
    iget v13, v2, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_6

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_6
    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v15, :cond_7

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v15

    :cond_7
    :goto_1
    if-gt v5, v12, :cond_8

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    sub-int v15, v5, v12

    int-to-float v15, v15

    :goto_2
    iget v13, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    div-float/2addr v13, v15

    if-gt v6, v14, :cond_9

    move/from16 v17, v5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    move/from16 v17, v5

    sub-int v5, v6, v14

    int-to-float v5, v5

    :goto_3
    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    div-float/2addr v15, v5

    const v18, 0x3dcccccd    # 0.1f

    if-eqz v4, :cond_a

    move/from16 v19, v4

    int-to-float v4, v7

    mul-float v4, v4, v18

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v4, v4, v16

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    iput v4, v3, Landroid/graphics/Rect;->right:I

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_4

    :cond_a
    move/from16 v19, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    iput v4, v3, Landroid/graphics/Rect;->right:I

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_4

    :cond_b
    iget v4, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_c

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    move/from16 v21, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_c
    move/from16 v21, v6

    sub-int v4, v7, v12

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :goto_4
    if-eqz v9, :cond_d

    int-to-float v4, v8

    mul-float v4, v4, v18

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v11

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_d
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v11

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_e
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_f

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v11

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_f
    sub-int v4, v8, v14

    int-to-float v4, v4

    mul-float/2addr v4, v15

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v11

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :goto_5
    return-void

    :cond_10
    :goto_6
    const-string v5, "adjustBoundsForScreenRatio: sourceBounds is null or empty."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist checkIsTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist dipToPixel(ILandroid/util/DisplayMetrics;)I
    .locals 2

    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static blacklist getAiKeyAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.intent.action.AI_ASSIST"

    return-object v0
.end method

.method public static blacklist getAppIcon(Landroid/content/Context;Landroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 v0, 0x30

    const/16 v1, 0x30

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 15

    move-object/from16 v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f3851ec    # 0.72f

    goto :goto_1

    :cond_1
    const v5, 0x3f3851ec    # 0.72f

    const v6, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v5, :cond_3

    const v5, 0x3ee66666    # 0.45f

    move v6, v5

    move v14, v6

    move v5, v14

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f59999a    # 0.85f

    goto :goto_1

    :cond_4
    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f000000    # 0.5f

    :goto_1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v7, :cond_5

    if-nez v4, :cond_5

    int-to-float v7, v2

    mul-float/2addr v7, v6

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    add-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_2

    :cond_5
    int-to-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v2

    mul-float/2addr v9, v6

    add-float/2addr v9, v8

    float-to-int v8, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v11, -0x1

    if-nez v0, :cond_6

    move v12, v11

    goto :goto_3

    :cond_6
    iget v12, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_3
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget v11, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    :goto_4
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v13, p3

    invoke-virtual {v13, v3, v3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private static blacklist getDensityBucket(I)I
    .locals 1

    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xf0

    if-gt p0, v0, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x140

    if-gt p0, v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x1e0

    if-gt p0, v0, :cond_4

    return v0

    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method public static blacklist getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.launcher"

    const-string v3, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "split_component_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "split_task_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "split_task_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x30040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist getEdgeAllAppsComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getExternalAppsServiceIntent(I[I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "buttonPos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "launchTaskId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.sec.android.app.launcher.overlayapps.OverlayAppsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 10

    const-string v0, "android.intent.category.INFO"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLaunchIntentForPackageAsUser, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiWindowUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static blacklist getMinimumDensityWithinBucket(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    return p0

    :sswitch_0
    const/16 v0, 0x1e1

    return v0

    :sswitch_1
    const/16 v0, 0x141

    return v0

    :sswitch_2
    const/16 v0, 0xf1

    return v0

    :sswitch_3
    const/16 v0, 0xa1

    return v0

    :sswitch_4
    const/16 v0, 0x79

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_4
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_1
        0x280 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getRoundedCornerColor(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060430

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static blacklist getRoundedCornerRadius(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105039d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v1, v2}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v3, v0, :cond_0

    return v3

    :cond_0
    return v0
.end method

.method public static blacklist getScaleDownDensity(II)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x4b

    div-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v2

    if-ge v2, v1, :cond_2

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getMinimumDensityWithinBucket(I)I

    move-result v0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist hasCustomDensity()Z
    .locals 1

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isAiKeyAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAiKeyTrampolineActivity(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAppsEdgeActivity(Landroid/content/ComponentName;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.app.honeyspace.edge.fromrecent.FromRecentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultLauncher(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static blacklist isDeferSyncSplitTransitionApps(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.apps.bard.shellapp.BardEntryPointActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDesktopModeSingleTopActivityTranslucent(Landroid/app/TaskInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/TaskInfo;->numActivities:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isEnabledCustomDensityType(IIZ)Z
    .locals 4

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_6

    :cond_0
    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne p0, v3, :cond_3

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    move v1, v0

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x6

    if-ne p0, v3, :cond_5

    if-eqz p2, :cond_5

    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/2addr v2, v3

    if-lez v2, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v1
.end method

.method public static blacklist isFlexPanelActivity(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.wm.shell.controlpanel.activity.FlexDimActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isFlexPanelEnabled(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isInSubDisplay(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isKeepFlexPanelTask(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.app.smartcapture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.permissioncontroller"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isNightMode(Landroid/app/TaskInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/TaskInfo;->topActivityUiMode:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/app/TaskInfo;->topActivityUiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    return v0
.end method

.method public static blacklist isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.activity.launch_mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    nop

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    if-eqz v5, :cond_3

    const-string v6, "singleInstancePerTask"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_3
    return v1
.end method

.method public static blacklist isSplitEnabled(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isSystemUiTask(Landroid/content/Context;Landroid/app/TaskInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static blacklist isTablet()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    return v0
.end method

.method public static blacklist logForMultiWindowModeChange(IIII)V
    .locals 6

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne p0, v5, :cond_4

    if-ne p1, v4, :cond_2

    const/4 v0, 0x1

    const-string v1, "Full to Split"

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    const/4 v0, 0x2

    const-string v1, "Full to Popup"

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_d

    const/4 v0, 0x3

    const-string v1, "Full to PIP"

    goto :goto_0

    :cond_4
    if-ne p0, v4, :cond_7

    if-ne p1, v5, :cond_5

    const/4 v0, 0x4

    const-string v1, "Split to Full"

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    const/4 v0, 0x5

    const-string v1, "Split to Popup"

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_d

    const/4 v0, 0x6

    const-string v1, "Split to PIP"

    goto :goto_0

    :cond_7
    if-ne p0, v3, :cond_a

    if-ne p1, v5, :cond_8

    const/4 v0, 0x7

    const-string v1, "Popup to Full"

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    const/16 v0, 0x8

    const-string v1, "Popup to Split"

    goto :goto_0

    :cond_9
    if-ne p1, v2, :cond_d

    const/16 v0, 0x9

    const-string v1, "Popup to PIP"

    goto :goto_0

    :cond_a
    if-ne p0, v2, :cond_d

    if-ne p1, v5, :cond_b

    const/16 v0, 0xa

    const-string v1, "PIP to Full"

    goto :goto_0

    :cond_b
    if-ne p1, v4, :cond_c

    const/16 v0, 0xb

    const-string v1, "PIP to Split"

    goto :goto_0

    :cond_c
    if-ne p1, v3, :cond_d

    const/16 v0, 0xc

    const-string v1, "PIP to Popup"

    :cond_d
    :goto_0
    if-eqz v0, :cond_e

    const-string v2, "1900"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    return-void
.end method

.method public static blacklist needToUpdateDensity(IIZ)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isEnabledCustomDensityType(IIZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;
    .locals 12

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "android.server.wm.app"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p0, v0

    :cond_1
    div-float v0, p0, p1

    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/4 v2, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v1, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v5, v1

    :goto_0
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-gez v1, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v7, v1

    :goto_1
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-gez v1, :cond_4

    move v10, v2

    goto :goto_2

    :cond_4
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v10, v1

    :goto_2
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v2, v1

    :goto_3
    move v11, v2

    new-instance v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v6, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    iget v8, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    iget v9, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    return-object v1
.end method
