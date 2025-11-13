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

    .line 77
    const-string v0, "STATUSBAR"

    const-string v1, "BODY"

    const-string v2, "BODY_TOP"

    const-string v3, "BODY_MID"

    const-string v4, "BODY_BOTTOM"

    const-string v5, "NAVIBAR"

    const-string v6, "NAVIBAR"

    const-string v7, "BACKGROUND"

    const-string v8, "BODY_CENTER"

    const-string v9, "BODY_LEFT"

    const-string v10, "BODY_RIGHT"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    .line 98
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/app/SemWallpaperColorsArea;->mInit:Z

    .line 116
    iput-object v1, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    .line 117
    iput v2, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    .line 118
    iput v3, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    .line 120
    if-eqz v1, :cond_1

    .line 121
    if-eqz v4, :cond_0

    .line 122
    new-instance v5, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v5, v1, v2, v4}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    goto :goto_0

    .line 124
    :cond_0
    new-instance v5, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v5, v1, v2}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;I)V

    iput-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    .line 125
    invoke-virtual {v5}, Landroid/app/WallpaperColorOverrideAreas;->load()V

    .line 129
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 130
    .local v5, "width":I
    const/4 v6, 0x0

    .line 132
    .local v6, "height":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 135
    .local v7, "resource":Landroid/content/res/Resources;
    iget-object v8, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    if-nez v8, :cond_2

    .line 136
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 139
    :cond_2
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColorsArea;->getDisplaySize(I)Landroid/graphics/Point;

    move-result-object v8

    .line 140
    .local v8, "size":Landroid/graphics/Point;
    iget v5, v8, Landroid/graphics/Point;->x:I

    .line 141
    iget v6, v8, Landroid/graphics/Point;->y:I

    .line 144
    .end local v8    # "size":Landroid/graphics/Point;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemWallpaperColorsArea ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "SemWallpaperColorsArea"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v8, 0x0

    .line 147
    .local v8, "isLandscapeMode":Z
    if-le v5, v6, :cond_3

    .line 148
    const/4 v8, 0x1

    .line 151
    :cond_3
    iput v5, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 152
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 154
    const/4 v11, 0x0

    .line 155
    .local v11, "statusBarHeight":I
    const/4 v12, 0x0

    .line 156
    .local v12, "navigationBarHeight":I
    const/4 v13, 0x0

    .line 158
    .local v13, "statusBarTopMargin":I
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_4

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_9

    :cond_4
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v14, :cond_5

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_5

    goto :goto_2

    .line 164
    :cond_5
    const v14, 0x1050244

    if-eqz v3, :cond_7

    .line 165
    if-nez v8, :cond_6

    .line 166
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 167
    iput v5, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 169
    :cond_6
    const v15, 0x10504ce

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 170
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_2

    .line 172
    :cond_7
    if-eqz v8, :cond_8

    .line 173
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 174
    iput v5, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 176
    :cond_8
    const v15, 0x10504cf

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 177
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 178
    const v14, 0x10504c9

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 181
    :cond_9
    :goto_2
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v14, :cond_a

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_a

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x10

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_a

    .line 183
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_3

    .line 185
    :cond_a
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    .line 187
    :goto_3
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v14, v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    .line 188
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v14, v14

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    .line 189
    int-to-float v14, v11

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    .line 190
    int-to-float v14, v12

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    .line 191
    int-to-float v14, v13

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    .line 193
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

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private blacklist getDisplayId(I)I
    .locals 4
    .param p1, "which"    # I

    .line 686
    const/4 v0, 0x0

    .line 689
    .local v0, "displayId":I
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 690
    const/4 v1, 0x2

    return v1

    .line 694
    :cond_0
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_5

    .line 695
    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 696
    .local v1, "isSubDisplay":Z
    :goto_0
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v3, :cond_3

    .line 697
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    move v0, v2

    goto :goto_2

    .line 699
    :cond_3
    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 700
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-nez v3, :cond_4

    .line 701
    if-nez v1, :cond_5

    .line 702
    const/4 v0, 0x1

    goto :goto_2

    .line 705
    :cond_4
    if-eqz v1, :cond_5

    .line 706
    const/4 v0, 0x1

    .line 712
    .end local v1    # "isSubDisplay":Z
    .end local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
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

    .line 714
    return v0
.end method

.method private blacklist getDisplayInfo(II)Landroid/view/DisplayInfo;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "which"    # I

    .line 751
    iget-object v0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 752
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 753
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 755
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_2

    .line 756
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 757
    const-string v3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 758
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 759
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 760
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 761
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 762
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 763
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 764
    .local v5, "screenW":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 766
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .end local v5    # "screenW":I
    :cond_0
    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    .line 770
    :cond_2
    const-string v3, "SemWallpaperColorsArea"

    const-string v4, "getDisplayInfo display == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 772
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 773
    .local v4, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v4, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 776
    .end local v3    # "wm":Landroid/view/WindowManager;
    .end local v4    # "defaultDisplay":Landroid/view/Display;
    :goto_0
    return-object v2
.end method

.method private blacklist getDisplaySize(I)Landroid/graphics/Point;
    .locals 11
    .param p1, "which"    # I

    .line 718
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayId(I)I

    move-result v0

    .line 719
    .local v0, "displayId":I
    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 720
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 721
    .local v2, "size":Landroid/graphics/Point;
    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 722
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 724
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

    .line 726
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v3, :cond_6

    and-int/lit8 v3, p1, 0x8

    const/16 v6, 0x8

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    .line 728
    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 734
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 735
    .local v3, "ratio":F
    and-int/lit8 v6, p1, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    if-ne v6, v9, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    .line 736
    .local v6, "isSubDisplay":Z
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

    .line 738
    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v6, :cond_2

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_3

    :cond_2
    if-nez v6, :cond_5

    cmpl-float v9, v3, v9

    if-lez v9, :cond_5

    .line 740
    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    move v0, v7

    .line 741
    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v7

    .line 742
    .local v7, "display":Landroid/view/DisplayInfo;
    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 743
    iget v8, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 744
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

    .line 747
    .end local v7    # "display":Landroid/view/DisplayInfo;
    :cond_5
    return-object v2

    .line 729
    .end local v3    # "ratio":F
    .end local v6    # "isSubDisplay":Z
    :cond_6
    :goto_2
    return-object v2
.end method

.method static blacklist name(I)Ljava/lang/String;
    .locals 2
    .param p0, "area"    # I

    .line 679
    if-ltz p0, :cond_1

    sget-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 680
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

    .line 792
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SemWallpaperColors$WallpaperColorsData;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 796
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

    .line 797
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-nez v1, :cond_1

    .line 798
    goto :goto_0

    .line 801
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

    .line 802
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_0

    .line 803
    :cond_2
    return-void

    .line 793
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist clone()Landroid/app/SemWallpaperColorsArea;
    .locals 3

    .line 782
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColorsArea;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 785
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

    .line 788
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
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

    .line 57
    invoke-virtual {p0}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "area"    # I

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(III)Landroid/graphics/Rect;
    .locals 20
    .param p1, "area"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v5

    const-wide v6, 0x3fc3333333333333L    # 0.15

    const-string/jumbo v8, "unhandle area "

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-string v11, "SemWallpaperColorsArea"

    const/16 v12, 0x18

    const/4 v13, 0x0

    if-eqz v5, :cond_1

    .line 209
    const/4 v5, 0x1

    .line 210
    .local v5, "displayType":I
    const-string/jumbo v14, "tablet mode"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_0

    .line 212
    const/4 v14, 0x3

    .line 213
    .local v14, "rotationType":I
    packed-switch v1, :pswitch_data_0

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    goto/16 :goto_2

    .line 257
    :pswitch_0
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 258
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 259
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 260
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 261
    goto/16 :goto_2

    .line 251
    :pswitch_1
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 252
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 253
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 254
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 255
    goto/16 :goto_2

    .line 245
    :pswitch_2
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 246
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 247
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 248
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 249
    goto/16 :goto_2

    .line 239
    :pswitch_3
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 240
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 241
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 242
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 243
    goto/16 :goto_2

    .line 233
    :pswitch_4
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 234
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 235
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit16 v6, v6, 0x8a

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 236
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 237
    goto/16 :goto_2

    .line 227
    :pswitch_5
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 228
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 229
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 230
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 231
    goto/16 :goto_2

    .line 221
    :pswitch_6
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 222
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 223
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb3f7ced916872bL    # 0.078

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 224
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feaf9db22d0e560L    # 0.843

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 225
    goto/16 :goto_2

    .line 215
    :pswitch_7
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 216
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 217
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 218
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 219
    goto/16 :goto_2

    .line 267
    .end local v14    # "rotationType":I
    :cond_0
    const/4 v14, 0x0

    .line 268
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_1

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    goto/16 :goto_2

    .line 312
    :pswitch_8
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 313
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 314
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 315
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 316
    goto/16 :goto_2

    .line 306
    :pswitch_9
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 307
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 308
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 309
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 310
    goto/16 :goto_2

    .line 300
    :pswitch_a
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 301
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 302
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 303
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 304
    goto/16 :goto_2

    .line 294
    :pswitch_b
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 295
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 296
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fec000000000000L    # 0.875

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 297
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fef333333333333L    # 0.975

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 298
    goto/16 :goto_2

    .line 288
    :pswitch_c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 289
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 290
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit16 v6, v6, 0xa3

    add-int/lit16 v6, v6, 0x8f

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 291
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 292
    goto/16 :goto_2

    .line 282
    :pswitch_d
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 283
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 284
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 285
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 286
    goto/16 :goto_2

    .line 276
    :pswitch_e
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 277
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 278
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 279
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb020c49ba5e35L    # 0.844

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 280
    goto/16 :goto_2

    .line 270
    :pswitch_f
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 271
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 272
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 273
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 274
    goto/16 :goto_2

    .line 322
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_1
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v14, 0x20

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v14

    if-ne v5, v14, :cond_2

    .line 324
    const/4 v5, 0x4

    .line 325
    .restart local v5    # "displayType":I
    const/4 v14, 0x0

    .line 326
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_2

    :pswitch_10
    goto :goto_0

    .line 334
    :pswitch_11
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 335
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 336
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3e4da3ac

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 337
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

    .line 328
    :pswitch_12
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 329
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 330
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3d38a7de

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 331
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v7, v7

    const v8, 0x3d864b8a

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 332
    nop

    .line 338
    :goto_0
    goto/16 :goto_2

    .line 340
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_2
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_3

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-ne v5, v15, :cond_3

    .line 342
    const/4 v5, 0x3

    .line 343
    .restart local v5    # "displayType":I
    const/4 v14, 0x0

    .line 344
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_3

    .line 382
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

    .line 383
    goto/16 :goto_2

    .line 370
    :pswitch_14
    const/16 v6, 0x112

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 371
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0xd5

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 372
    const/16 v6, 0x36

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 373
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 374
    goto/16 :goto_2

    .line 364
    :pswitch_15
    const/16 v6, 0x30

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 365
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x116

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 366
    const/16 v6, 0x21

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 367
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x9d

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 368
    goto/16 :goto_2

    .line 358
    :pswitch_16
    const/16 v6, 0x7e

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 359
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x104

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 360
    const/16 v6, 0x26

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 361
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 362
    goto/16 :goto_2

    .line 376
    :pswitch_17
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 377
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 378
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 379
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 380
    goto/16 :goto_2

    .line 352
    :pswitch_18
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0x96

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 353
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 354
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x2a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 355
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 356
    goto/16 :goto_2

    .line 346
    :pswitch_19
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    add-int/lit16 v6, v6, -0x1e7

    div-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 347
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 348
    const/4 v6, 0x7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 349
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x2a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 350
    goto/16 :goto_2

    .line 385
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_3
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-wide v16, 0x3fa26e978d4fdf3bL    # 0.036

    const-wide v18, 0x3fc999999999999aL    # 0.2

    if-eqz v5, :cond_6

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-nez v5, :cond_6

    .line 386
    const/4 v5, 0x2

    .line 387
    .restart local v5    # "displayType":I
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_4

    .line 388
    const/4 v14, 0x3

    .line 389
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_4

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    goto/16 :goto_2

    .line 433
    :pswitch_1a
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 434
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 435
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 436
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 437
    goto/16 :goto_2

    .line 427
    :pswitch_1b
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 428
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 429
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 430
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 431
    goto/16 :goto_2

    .line 421
    :pswitch_1c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 422
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 423
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 424
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 425
    goto/16 :goto_2

    .line 415
    :pswitch_1d
    const/16 v6, 0x40

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 416
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 417
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 418
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 419
    goto/16 :goto_2

    .line 409
    :pswitch_1e
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 410
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 411
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 412
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 413
    goto/16 :goto_2

    .line 403
    :pswitch_1f
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 404
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 405
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 406
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 407
    goto/16 :goto_2

    .line 397
    :pswitch_20
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 398
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 399
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb26e978d4fdf3bL    # 0.072

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 400
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 401
    goto/16 :goto_2

    .line 391
    :pswitch_21
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 392
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 393
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 394
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 395
    goto/16 :goto_2

    .line 443
    .end local v14    # "rotationType":I
    :cond_4
    const/4 v14, 0x0

    .line 444
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_5

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    goto/16 :goto_2

    .line 491
    :pswitch_22
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 492
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 493
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 494
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 495
    goto/16 :goto_2

    .line 485
    :pswitch_23
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 486
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 487
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 488
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 489
    goto/16 :goto_2

    .line 479
    :pswitch_24
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 480
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 481
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 482
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 483
    goto/16 :goto_2

    .line 473
    :pswitch_25
    const/16 v6, 0x32

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 474
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 475
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 476
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 477
    goto/16 :goto_2

    .line 467
    :pswitch_26
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 468
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 469
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 470
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 471
    goto/16 :goto_2

    .line 461
    :pswitch_27
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 462
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 463
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 464
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 465
    goto/16 :goto_2

    .line 455
    :pswitch_28
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 456
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 457
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 458
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 459
    goto/16 :goto_2

    .line 446
    :pswitch_29
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 447
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 448
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isWinner()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 449
    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x74

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 451
    :cond_5
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 452
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 453
    goto/16 :goto_2

    .line 502
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_6
    const/4 v5, 0x0

    .line 503
    .restart local v5    # "displayType":I
    iget v9, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v9, :cond_b

    .line 504
    const/4 v10, 0x3

    .line 505
    .local v10, "rotationType":I
    packed-switch v1, :pswitch_data_6

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    goto/16 :goto_1

    .line 580
    :pswitch_2a
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 581
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 582
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 583
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 584
    goto/16 :goto_1

    .line 559
    :pswitch_2b
    const/16 v6, 0x5a

    if-ne v9, v6, :cond_7

    .line 560
    const/4 v14, 0x1

    .line 561
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 562
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 563
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 564
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 565
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_7
    const/16 v6, 0x10e

    if-ne v9, v6, :cond_8

    .line 566
    const/4 v14, 0x2

    .line 567
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 568
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 569
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 570
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 572
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_8
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

    .line 573
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 574
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 575
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 576
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 578
    goto/16 :goto_1

    .line 553
    :pswitch_2c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 554
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 555
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 556
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 557
    goto/16 :goto_1

    .line 547
    :pswitch_2d
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x12

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 548
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v6

    double-to-int v6, v12

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x12

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 549
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feaa7ef9db22d0eL    # 0.833

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 550
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 551
    goto/16 :goto_1

    .line 541
    :pswitch_2e
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 542
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 543
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x67

    add-int/lit8 v6, v6, 0x1a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 544
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 545
    goto/16 :goto_1

    .line 535
    :pswitch_2f
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 536
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 537
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 538
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 539
    goto/16 :goto_1

    .line 513
    :pswitch_30
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v14, v6

    const-wide v16, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v14, v14, v16

    double-to-int v6, v14

    .line 514
    .local v6, "margin":I
    const/16 v8, 0x5a

    if-ne v9, v8, :cond_9

    .line 515
    const/4 v14, 0x1

    .line 516
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 517
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 518
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 519
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 520
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_9
    const/16 v8, 0x10e

    if-ne v9, v8, :cond_a

    .line 521
    const/4 v14, 0x2

    .line 522
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 523
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 524
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 525
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 527
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_a
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

    .line 528
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 529
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 530
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 531
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 533
    goto :goto_1

    .line 507
    .end local v6    # "margin":I
    :pswitch_31
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 508
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 509
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 510
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 511
    nop

    .line 647
    :goto_1
    move v14, v10

    goto/16 :goto_2

    .line 590
    .end local v10    # "rotationType":I
    :cond_b
    const/4 v14, 0x0

    .line 591
    .restart local v14    # "rotationType":I
    const/16 v6, 0x28

    packed-switch v1, :pswitch_data_7

    .line 641
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

    .line 635
    :pswitch_32
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 636
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 637
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 638
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 639
    goto/16 :goto_2

    .line 629
    :pswitch_33
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 630
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 631
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 632
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 633
    goto/16 :goto_2

    .line 623
    :pswitch_34
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 624
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 625
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 626
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 627
    goto/16 :goto_2

    .line 617
    :pswitch_35
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 618
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 619
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe92f1a9fbe76c9L    # 0.787

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 620
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 621
    goto :goto_2

    .line 611
    :pswitch_36
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 612
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 613
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0xb8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 614
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 615
    goto :goto_2

    .line 605
    :pswitch_37
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 606
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 607
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 608
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 609
    goto :goto_2

    .line 599
    :pswitch_38
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 600
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 601
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 602
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb53f7ced91687L    # 0.854

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 603
    goto :goto_2

    .line 593
    :pswitch_39
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 594
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 595
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 596
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 597
    nop

    .line 647
    :goto_2
    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    if-eqz v6, :cond_d

    .line 648
    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 649
    .local v6, "areaFlag":Ljava/lang/Long;
    if-nez v6, :cond_c

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 650
    .local v7, "safeAreaFlag":J
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

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v9, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v9, v5, v14, v7, v8}, Landroid/app/WallpaperColorOverrideAreas;->get(IIJ)Landroid/graphics/RectF;

    move-result-object v9

    .line 652
    .local v9, "customRectF":Landroid/graphics/RectF;
    if-eqz v9, :cond_d

    .line 653
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 654
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 655
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 656
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 657
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

    .line 661
    .end local v6    # "areaFlag":Ljava/lang/Long;
    .end local v7    # "safeAreaFlag":J
    .end local v9    # "customRectF":Landroid/graphics/RectF;
    :cond_d
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 662
    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 663
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 664
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 666
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 667
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 668
    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 669
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 670
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 673
    :cond_e
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

    .line 675
    return-object v4

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
    .packed-switch 0x2
        :pswitch_19
        :pswitch_13
        :pswitch_18
        :pswitch_13
        :pswitch_13
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method
