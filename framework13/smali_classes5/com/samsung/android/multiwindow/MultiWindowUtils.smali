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

.field private static final blacklist DENSITY_FREEFORM:I = 0x4

.field private static final blacklist DENSITY_NONE:I = 0x0

.field private static final blacklist DENSITY_SPLIT:I = 0x2

.field private static final blacklist EDGE_APP_PICKER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.appsedge.fromrecent.FromRecentAllAppsActivity"

.field private static final blacklist EDGE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.appsedge"

.field private static final blacklist EXTRA_SPLIT_COMPONENT:Ljava/lang/String; = "split_component_name"

.field private static final blacklist EXTRA_SPLIT_TASK_ID:Ljava/lang/String; = "split_task_id"

.field private static final blacklist EXTRA_SPLIT_TASK_USER_ID:Ljava/lang/String; = "split_task_user_id"

.field private static final blacklist FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field private static final blacklist FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.72f

.field private static final blacklist FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.85f

.field private static final blacklist FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.3f

.field private static final blacklist FREEFORM_DEFAULT_SIZE_RATIO_FOR_MULTI_SPLIT:F = 0.45f

.field public static final blacklist FREEFROM_DOCKED_LEFT:I = 0x1

.field public static final blacklist FREEFROM_DOCKED_NONE:I = 0x0

.field public static final blacklist FREEFROM_DOCKED_RIGHT:I = 0x2

.field private static final blacklist MARGIN_IN_PX:I = 0x2

.field public static final blacklist MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final blacklist SEC_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final blacklist SPLIT_POSITION_BOTTOM_OR_RIGHT:I = 0x1

.field public static final blacklist SPLIT_POSITION_TOP_OR_LEFT:I

.field private static final blacklist sIsTablet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->checkIsTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    .line 70
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkIsTablet()Z
    .locals 2

    .line 73
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

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

.method public static blacklist convertSplitPosition(I)I
    .locals 1
    .param p0, "stagePosition"    # I

    .line 251
    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "displayBounds"    # Landroid/graphics/Rect;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 112
    .local v0, "displayWidth":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 115
    .local v1, "displayHeight":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    if-le v0, v1, :cond_0

    .line 117
    const v2, 0x3e99999a    # 0.3f

    .line 118
    .local v2, "widthRatio":F
    const v3, 0x3f3851ec    # 0.72f

    .local v3, "heightRatio":F
    goto :goto_0

    .line 120
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_0
    const v2, 0x3f3851ec    # 0.72f

    .line 121
    .restart local v2    # "widthRatio":F
    const v3, 0x3e99999a    # 0.3f

    .restart local v3    # "heightRatio":F
    goto :goto_0

    .line 125
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_1
    if-le v0, v1, :cond_2

    .line 126
    const/high16 v2, 0x3f000000    # 0.5f

    .line 127
    .restart local v2    # "widthRatio":F
    const v3, 0x3f59999a    # 0.85f

    .restart local v3    # "heightRatio":F
    goto :goto_0

    .line 129
    .end local v2    # "widthRatio":F
    .end local v3    # "heightRatio":F
    :cond_2
    const v2, 0x3f59999a    # 0.85f

    .line 130
    .restart local v2    # "widthRatio":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 133
    .restart local v3    # "heightRatio":F
    :goto_0
    int-to-float v4, v0

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 134
    .local v4, "width":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 135
    .local v5, "height":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge v0, v1, :cond_3

    .line 137
    move v6, v4

    .line 138
    .local v6, "temp":I
    move v4, v5

    .line 139
    move v5, v6

    .line 141
    .end local v6    # "temp":I
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 142
    return-void
.end method

.method private static blacklist getDensityBucket(I)I
    .locals 1
    .param p0, "densityDpi"    # I

    .line 260
    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    .line 261
    return v0

    .line 262
    :cond_0
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_1

    .line 263
    return v0

    .line 264
    :cond_1
    const/16 v0, 0xf0

    if-gt p0, v0, :cond_2

    .line 265
    return v0

    .line 266
    :cond_2
    const/16 v0, 0x140

    if-gt p0, v0, :cond_3

    .line 267
    return v0

    .line 268
    :cond_3
    const/16 v0, 0x1e0

    if-gt p0, v0, :cond_4

    .line 269
    return v0

    .line 271
    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method public static blacklist getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;
    .locals 4
    .param p0, "splitComponent"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .param p2, "taskId"    # I

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.appsedge"

    const-string v3, "com.samsung.android.app.appsedge.fromrecent.FromRecentAllAppsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "split_component_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "split_task_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "split_task_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const/high16 v1, 0x30040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    return-object v0
.end method

.method public static blacklist getFreeformDockedState(Landroid/app/WindowConfiguration;)I
    .locals 7
    .param p0, "winConfig"    # Landroid/app/WindowConfiguration;

    .line 375
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return v1

    .line 377
    :cond_0
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 378
    .local v0, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 379
    .local v2, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 380
    .local v3, "middlePosition":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v3, -0x2

    if-le v5, v6, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v3, 0x2

    if-ge v5, v6, :cond_1

    .line 383
    const/4 v1, 0x1

    return v1

    .line 384
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v3, -0x2

    if-le v5, v6, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v3, 0x2

    if-ge v5, v6, :cond_2

    .line 387
    return v4

    .line 389
    :cond_2
    return v1
.end method

.method public static blacklist getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 162
    const-string v0, "android.intent.category.INFO"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "intentToResolve":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 171
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 172
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 177
    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
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

    .line 184
    return-object v0

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-object v1

    .line 185
    .end local v2    # "intentToResolve":Landroid/content/Intent;
    .end local v3    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static blacklist getMinimumDensityWithinBucket(I)I
    .locals 1
    .param p0, "densityBucket"    # I

    .line 291
    sparse-switch p0, :sswitch_data_0

    .line 297
    return p0

    .line 296
    :sswitch_0
    const/16 v0, 0x1e1

    return v0

    .line 295
    :sswitch_1
    const/16 v0, 0x141

    return v0

    .line 294
    :sswitch_2
    const/16 v0, 0xf1

    return v0

    .line 293
    :sswitch_3
    const/16 v0, 0xa1

    return v0

    .line 292
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

.method public static blacklist getRoundedCornerColorForMultiWindow(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10608e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static blacklist getScaleDownDensity(II)I
    .locals 3
    .param p0, "smallestWidth"    # I
    .param p1, "densityDpi"    # I

    .line 275
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 282
    .local v0, "scaledDensityDpi":I
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v1

    .line 283
    .local v1, "densityBucket":I
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDensityBucket(I)I

    move-result v2

    .line 284
    .local v2, "scaledDensityBucket":I
    if-ge v2, v1, :cond_2

    .line 285
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getMinimumDensityWithinBucket(I)I

    move-result v0

    .line 287
    :cond_2
    return v0

    .line 278
    .end local v0    # "scaledDensityDpi":I
    .end local v1    # "densityBucket":I
    .end local v2    # "scaledDensityBucket":I
    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist hasCustomDensity()Z
    .locals 1

    .line 306
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isDefaultLauncher(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "defaultLauncher":Ljava/lang/String;
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

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static blacklist isEnabledCustomDensityType(IIZ)Z
    .locals 4
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I
    .param p2, "isSplitScreenWindowingMode"    # Z

    .line 318
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 319
    return v1

    .line 322
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 323
    return v1

    .line 326
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    if-eq p0, v0, :cond_7

    if-nez p0, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    const/4 v3, 0x5

    if-ne p0, v3, :cond_4

    .line 332
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_3

    move v1, v0

    :cond_3
    return v1

    .line 336
    :cond_4
    const/4 v3, 0x6

    if-ne p0, v3, :cond_6

    if-eqz p2, :cond_6

    .line 337
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    and-int/2addr v2, v3

    if-lez v2, :cond_5

    move v1, v0

    :cond_5
    return v1

    .line 341
    :cond_6
    return v1

    .line 328
    :cond_7
    :goto_0
    return v1
.end method

.method public static blacklist isFlexPanelEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isInSubDisplay(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 354
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

.method public static blacklist isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 233
    .local v2, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v4, 0x80

    .line 234
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 235
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 236
    .local v4, "launchMode":I
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.activity.launch_mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 237
    :cond_2
    const/4 v5, 0x0

    :goto_1
    nop

    .line 238
    .local v5, "launchMode2":Ljava/lang/String;
    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    if-eqz v5, :cond_3

    const-string/jumbo v6, "singleInstancePerTask"

    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    goto :goto_2

    .line 244
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "launchMode":I
    .end local v5    # "launchMode2":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 240
    .restart local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "launchMode":I
    .restart local v5    # "launchMode2":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 242
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "launchMode":I
    .end local v5    # "launchMode2":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 243
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 245
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    return v1
.end method

.method public static blacklist isTablet()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowUtils;->sIsTablet:Z

    return v0
.end method

.method public static blacklist needToUpdateDensity(IIZ)Z
    .locals 1
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I
    .param p2, "isSplitScreenWindowingMode"    # Z

    .line 346
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isEnabledCustomDensityType(IIZ)Z

    move-result v0

    return v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
