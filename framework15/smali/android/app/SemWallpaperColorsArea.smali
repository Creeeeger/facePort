.class public Landroid/app/SemWallpaperColorsArea;
.super Ljava/lang/Object;
.source "SemWallpaperColorsArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist BACKGROUND:I = 0x7

.field public static final blacklist BODY:I = 0x1

.field public static final blacklist BODY_BOTTOM:I = 0x4

.field public static final blacklist BODY_CENTER:I = 0x8

.field public static final blacklist BODY_LEFT:I = 0x9

.field public static final blacklist BODY_MID:I = 0x3

.field public static final blacklist BODY_RIGHT:I = 0xa

.field public static final blacklist BODY_TOP:I = 0x2

.field public static final blacklist COVER_DISPLAY_DENSITY:F = 1.0f

.field public static final blacklist COVER_LARGE_DISPLAY_DENSITY:F = 2.125f

.field private static final blacklist DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final blacklist NAME:[Ljava/lang/String;

.field public static final blacklist NAVIBAR:I = 0x5

.field public static final blacklist NAVIBAR_HOME:I = 0x6

.field public static final blacklist RATIO_FOLD_SUB_CRITERIA:I = 0x2

.field public static final blacklist STATUSBAR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemWallpaperColorsArea"

.field private static final blacklist mVirtualDisplayHeightDp:I = 0xf4

.field private static final blacklist mVirtualDisplayWidthDp:I = 0x99


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist mDensity:F

.field blacklist mDpHeight:I

.field blacklist mDpNavigationBarHeight:I

.field blacklist mDpStatusBarHeight:I

.field blacklist mDpStatusBarTopMargin:I

.field blacklist mDpWidth:I

.field blacklist mHeight:I

.field blacklist mInit:Z

.field private blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRotation:I

.field private blacklist mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

.field private blacklist mWhich:I

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    const-string v9, "BODY_LEFT"

    const-string v10, "BODY_RIGHT"

    const-string v0, "STATUSBAR"

    const-string v1, "BODY"

    const-string v2, "BODY_TOP"

    const-string v3, "BODY_MID"

    const-string v4, "BODY_BOTTOM"

    const-string v5, "NAVIBAR"

    const-string v6, "NAVIBAR"

    const-string v7, "BACKGROUND"

    const-string v8, "BODY_CENTER"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/app/SemWallpaperColorsArea;->mInit:Z

    iput-object v1, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    iput v2, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    iput v3, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v1, :cond_1

    if-eqz v4, :cond_0

    new-instance v6, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v6, v1, v2, v4}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v6, v1, v2}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v6}, Landroid/app/WallpaperColorOverrideAreas;->load()V

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColorsArea;->getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColorsArea;->getDisplaySize(I)Landroid/graphics/Point;

    move-result-object v9

    :cond_3
    iget v6, v9, Landroid/graphics/Point;->x:I

    iget v7, v9, Landroid/graphics/Point;->y:I

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SemWallpaperColorsArea ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "] which: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rotation: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " has Base: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "SemWallpaperColorsArea"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-le v6, v7, :cond_5

    const/4 v5, 0x1

    :cond_5
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v14, :cond_6

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_6

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_7

    :cond_6
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v14, :cond_8

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_8

    :cond_7
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v14, :cond_c

    const/16 v11, 0x1e

    const/16 v12, 0x43

    const v14, 0x1050563

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto :goto_3

    :cond_8
    const v14, 0x10502c9

    if-eqz v3, :cond_a

    if-nez v5, :cond_9

    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    :cond_9
    const v15, 0x1050568

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    :cond_b
    const v15, 0x1050569

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v14, 0x1050563

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :cond_c
    :goto_3
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v14, :cond_e

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_e

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x10

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_e

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v14, :cond_d

    const/high16 v14, 0x40080000    # 2.125f

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_4

    :cond_d
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_4

    :cond_e
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    :goto_4
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v14, v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v14, v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v14, v11

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    int-to-float v14, v12

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    int-to-float v14, v13

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SemWallpaperColorsArea which = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mDensity : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v1, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_1

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v0, v7

    invoke-virtual {v5, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getDisplayId(I)I
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColorsArea"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist getDisplayInfo(II)Landroid/view/DisplayInfo;
    .locals 7

    iget-object v0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    if-eqz v1, :cond_2

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    const-string v3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget-object v1, v3, v4

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    :cond_2
    const-string v3, "SemWallpaperColorsArea"

    const-string v4, "getDisplayInfo display == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :goto_0
    return-object v2
.end method

.method private blacklist getDisplaySize(I)Landroid/graphics/Point;
    .locals 11

    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayId(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize() which:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SemWallpaperColorsArea"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v3, :cond_6

    and-int/lit8 v3, p1, 0x8

    const/16 v6, 0x8

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    and-int/lit8 v6, p1, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    if-ne v6, v9, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDisplaySize() ratio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSubDisplay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v6, :cond_2

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_3

    :cond_2
    if-nez v6, :cond_5

    cmpl-float v9, v3, v9

    if-lez v9, :cond_5

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    move v0, v7

    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v7

    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    iget v8, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDisplaySize() wrong displayInfo, changed to displayId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    return-object v2
.end method

.method static blacklist name(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_1

    sget-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public blacklist buildKeyMap(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperColors$WallpaperColorsData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist clone()Landroid/app/SemWallpaperColorsArea;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColorsArea;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColorsArea"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(III)Landroid/graphics/Rect;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v5

    const-wide v6, 0x3fc3333333333333L    # 0.15

    const-string/jumbo v8, "unhandle area "

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-string v11, "SemWallpaperColorsArea"

    const/16 v12, 0x18

    const/4 v13, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const-string/jumbo v14, "tablet mode"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    packed-switch v1, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_1
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v7, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_3
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_4
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit16 v6, v6, 0x8a

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_5
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_6
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb3f7ced916872bL    # 0.078

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feaf9db22d0e560L    # 0.843

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_7
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_0
    const/4 v14, 0x0

    const-wide v6, 0x3fc47ae147ae147bL    # 0.16

    packed-switch v1, :pswitch_data_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_8
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_9
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_a
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v7, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_b
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fec000000000000L    # 0.875

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fef333333333333L    # 0.975

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_c
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit16 v6, v6, 0xa3

    add-int/lit16 v6, v6, 0x8f

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_d
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_e
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb020c49ba5e35L    # 0.844

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_f
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_1
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v14, 0x20

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v14

    if-ne v5, v14, :cond_2

    const/4 v5, 0x4

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_2

    :pswitch_10
    goto :goto_0

    :pswitch_11
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3e4da3ac

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v7, v7

    const v8, 0x3f24b8a8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_12
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3d38a7de

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v7, v7

    const v8, 0x3d864b8a

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_0
    goto/16 :goto_2

    :cond_2
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v5, :cond_3

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-ne v5, v15, :cond_3

    const/4 v5, 0x3

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_3

    :pswitch_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_14
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_15
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fadb22d0e560419L    # 0.058

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fda7ef9db22d0e5L    # 0.414

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_16
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3feb126e978d4fdfL    # 0.846

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fee7ef9db22d0e5L    # 0.953

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe8d4fdf3b645a2L    # 0.776

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fec6a7ef9db22d1L    # 0.888

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_17
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fde04189374bc6aL    # 0.469

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fe10624dd2f1aa0L    # 0.532

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3f926e978d4fdf3bL    # 0.018

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fb4fdf3b645a1cbL    # 0.082

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_18
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fcb4395810624ddL    # 0.213

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe5eb851eb851ecL    # 0.685

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_19
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_3
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_4

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-ne v5, v15, :cond_4

    const/4 v5, 0x3

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_4

    :pswitch_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1b
    const/16 v6, 0x112

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0xd5

    iput v6, v4, Landroid/graphics/Rect;->right:I

    const/16 v6, 0x36

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_1c
    const/16 v6, 0x30

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x116

    iput v6, v4, Landroid/graphics/Rect;->right:I

    const/16 v6, 0x21

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x9d

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_1d
    const/16 v6, 0x7e

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x104

    iput v6, v4, Landroid/graphics/Rect;->right:I

    const/16 v6, 0x26

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_1e
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_1f
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0x96

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x2a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_20
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    add-int/lit16 v6, v6, -0x1e7

    div-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x2a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_4
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-wide v16, 0x3fa26e978d4fdf3bL    # 0.036

    const-wide v18, 0x3fc999999999999aL    # 0.2

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v5, :cond_7

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-nez v5, :cond_7

    const/4 v5, 0x0

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_5

    const/4 v14, 0x3

    packed-switch v1, :pswitch_data_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_21
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_22
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_23
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_24
    const/16 v6, 0x40

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_25
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_26
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_27
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb26e978d4fdf3bL    # 0.072

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_28
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_5
    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_29
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2a
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2b
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v7, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2c
    const/16 v6, 0x32

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2d
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2e
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_2f
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_30
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isWinner()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x74

    iput v6, v4, Landroid/graphics/Rect;->right:I

    :cond_6
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x0

    sget-boolean v9, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v9, :cond_8

    sget-boolean v9, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v9, :cond_8

    iget v9, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v9, v15

    if-ne v9, v15, :cond_8

    const/4 v5, 0x2

    :cond_8
    iget v9, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v9, :cond_d

    const/4 v9, 0x3

    packed-switch v1, :pswitch_data_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_31
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_32
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_9

    const/4 v14, 0x1

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_9
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_a

    const/4 v14, 0x2

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid rotation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_33
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_34
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v6

    double-to-int v8, v12

    add-int/lit8 v8, v8, 0x12

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v10

    mul-double/2addr v12, v6

    double-to-int v6, v12

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x12

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v12, 0x3feaa7ef9db22d0eL    # 0.833

    mul-double/2addr v6, v12

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_35
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x67

    add-int/lit8 v6, v6, 0x1a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_36
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :pswitch_37
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v14, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v6, v14

    double-to-int v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_b

    const/4 v14, 0x1

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_b
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_c

    const/4 v14, 0x2

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid rotation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_38
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_1
    move v14, v9

    goto/16 :goto_2

    :cond_d
    const/4 v14, 0x0

    const/16 v6, 0x28

    packed-switch v1, :pswitch_data_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_39
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_3a
    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_3b
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feca3d70a3d70a4L    # 0.895

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feee147ae147ae1L    # 0.965

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_3c
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe299999999999aL    # 0.58125

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe9000000000000L    # 0.78125

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_3d
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0xb8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_3e
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_3f
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb53f7ced91687L    # 0.854

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_40
    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_2
    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    if-eqz v6, :cond_f

    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_e

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get custom area. display type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rotation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", area = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " areaFlag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v9, v5, v14, v7, v8}, Landroid/app/WallpaperColorOverrideAreas;->get(IIJ)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_f

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Has custom area. Original : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", calculated = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final area : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_13
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_20
        :pswitch_1a
        :pswitch_1f
        :pswitch_1a
        :pswitch_1a
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method
