.class public Landroid/app/SemAppIconSolution;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemAppIconSolution$IconScale;,
        Landroid/app/SemAppIconSolution$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final blacklist APPICON_RANGE_ALL_APPS:I = 0x0

.field private static final blacklist APPICON_RANGE_NONE:I = 0x2

.field private static final blacklist APPICON_RANGE_UNASSIGNED_APPS:I = 0x1

.field private static final blacklist APPICON_RANGE_UNDEFINED:I = 0x3

.field private static final blacklist APPICON_SCALE_TYPE_DEFAULT_CONTAINER:I = 0x2

.field private static final blacklist APPICON_SCALE_TYPE_DETERMINED:I = 0x0

.field private static final blacklist APPICON_SCALE_TYPE_THEME:I = 0x1

.field private static final blacklist CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final blacklist CLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field private static final blacklist DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT:F = 0.010416667f

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT2:F = 0.020833334f

.field public static final blacklist IGNORE_APPICON_THEME:I = 0x2

.field private static final blacklist INVALID_RESOURCE_ID:I = 0x0

.field private static final blacklist LIVEICON_BOOLEAN_NAME:Ljava/lang/String; = "liveicon_from_theme"

.field private static final blacklist MATRIX_MOVE:[[I

.field private static final blacklist MATRIX_POINT_ONEDOT:[[I

.field private static final blacklist MATRIX_POINT_THEMECROP:[[I

.field private static final blacklist MATRIX_PROGRESS:[[I

.field private static final blacklist PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

.field private static final blacklist RES_LOCKSCREEN_SHORTCUT_BG:Ljava/lang/String; = "ic_shortcut_theme_bg"

.field private static final blacklist SAMSUNG_THEME_APPICON_SCALE:F = 0.7f

.field public static final blacklist SET_APPICON_COLORTHEME:I = 0x3

.field public static final blacklist SET_APPICON_THEME:I = 0x0

.field private static final blacklist SHADOW_ALPHA_AMBIENT:I = 0x29

.field private static final blacklist SHADOW_ALPHA_AMBIENT2:I = 0x1a

.field private static final blacklist TAG:Ljava/lang/String; = "AppIconSolution"

.field private static final blacklist THEME_DESIGNER_THIRD_PARTY_APP_ICON:Ljava/lang/String; = "theme_designer_enable_third_party_app_icon"

.field private static final blacklist TYPE_BOOL:Ljava/lang/String; = "bool"

.field private static final blacklist TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final blacklist UNSET_APPICON_THEME:I = 0x1

.field private static blacklist sLayerColorForNight:I

.field private static blacklist sUniqueInstance:Landroid/app/SemAppIconSolution;


# instance fields
.field private final blacklist LIMIT_ICON_SIZE:I

.field private final blacklist LIMIT_SHADOW_SIZE:I

.field private final blacklist RESNAME_MONOCHROME:Ljava/lang/String;

.field private blacklist mAppIconPackageName:Ljava/lang/String;

.field private blacklist mCachedAPKContents:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/APKContents;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColorFilter:Landroid/graphics/ColorFilter;

.field private blacklist mEnabledThirdPartyAppIcon:Z

.field private blacklist mIgnoreAppIconThemeHost:Z

.field private blacklist mIsThemeParkExist:Z

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPaintForCrop:Landroid/graphics/Paint;

.field private blacklist mSamsungThemeAppIconMask:Z

.field private blacklist mSamsungThemeAppIconRange:I

.field private blacklist mSamsungThemeAppIconScale:F

.field private final blacklist mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mThemeAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThemePackageName:Ljava/lang/String;

.field private final blacklist mThemeSync:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 18

    const/4 v0, 0x0

    sput-object v0, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    const-string v0, "#19000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    sget-object v0, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v0, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    sget v2, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v2

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const/4 v4, -0x1

    filled-new-array {v4, v0}, [I

    move-result-object v5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    filled-new-array {v2, v3, v5, v0}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    filled-new-array {v1, v1}, [I

    move-result-object v0

    filled-new-array {v4, v1}, [I

    move-result-object v2

    filled-new-array {v4, v4}, [I

    move-result-object v3

    filled-new-array {v1, v4}, [I

    move-result-object v1

    filled-new-array {v0, v2, v3, v1}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    const/16 v0, 0x16

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const/16 v9, 0x60

    const/4 v2, 0x2

    filled-new-array {v9, v2}, [I

    move-result-object v3

    const/16 v4, 0xa9

    filled-new-array {v4, v0}, [I

    move-result-object v5

    const/16 v6, 0xbd

    filled-new-array {v6, v9}, [I

    move-result-object v7

    filled-new-array {v4, v4}, [I

    move-result-object v8

    filled-new-array {v9, v6}, [I

    move-result-object v6

    filled-new-array {v0, v4}, [I

    move-result-object v10

    filled-new-array {v2, v9}, [I

    move-result-object v11

    move-object v2, v3

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v7, v10

    move-object v8, v11

    filled-new-array/range {v1 .. v8}, [[I

    move-result-object v1

    sput-object v1, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    const/16 v1, 0x1d

    filled-new-array {v0, v1}, [I

    move-result-object v10

    const/4 v2, 0x3

    filled-new-array {v9, v2}, [I

    move-result-object v11

    const/16 v2, 0xaa

    filled-new-array {v2, v1}, [I

    move-result-object v12

    const/16 v1, 0xbb

    const/16 v3, 0x5e

    filled-new-array {v1, v3}, [I

    move-result-object v13

    const/16 v1, 0xa3

    filled-new-array {v2, v1}, [I

    move-result-object v14

    const/16 v2, 0xba

    filled-new-array {v9, v2}, [I

    move-result-object v15

    filled-new-array {v0, v1}, [I

    move-result-object v16

    const/4 v0, 0x5

    filled-new-array {v0, v3}, [I

    move-result-object v17

    filled-new-array/range {v10 .. v17}, [[I

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/SemAppIconSolution;->mThemeSync:Ljava/lang/Object;

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    const/16 v2, 0xd8

    iput v2, p0, Landroid/app/SemAppIconSolution;->LIMIT_ICON_SIZE:I

    const/16 v2, 0x3e8

    iput v2, p0, Landroid/app/SemAppIconSolution;->LIMIT_SHADOW_SIZE:I

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    const-string/jumbo v0, "sep_monochrome_icon"

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->RESNAME_MONOCHROME:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    const-string/jumbo v3, "sem_appicon_layer_color_for_night"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    sget-object v1, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    sget v2, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v1, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeHosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/themepark/icons/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    :cond_1
    return-void
.end method

.method private blacklist createColorFilter(IFI)Landroid/graphics/ColorFilter;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFilter colorToMultiply: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,colorToAdd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , saturation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppIconSolution"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    and-int/lit16 v5, p1, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/4 v3, 0x0

    aget v6, v1, v3

    mul-float/2addr v6, v2

    aput v6, v1, v3

    const/4 v3, 0x1

    aget v6, v1, v3

    mul-float/2addr v6, v2

    aput v6, v1, v3

    const/4 v3, 0x2

    aget v6, v1, v3

    mul-float/2addr v6, v2

    aput v6, v1, v3

    const/4 v3, 0x5

    aget v6, v1, v3

    mul-float/2addr v6, v4

    aput v6, v1, v3

    const/4 v3, 0x6

    aget v6, v1, v3

    mul-float/2addr v6, v4

    aput v6, v1, v3

    const/4 v3, 0x7

    aget v6, v1, v3

    mul-float/2addr v6, v4

    aput v6, v1, v3

    const/16 v3, 0xa

    aget v6, v1, v3

    mul-float/2addr v6, v5

    aput v6, v1, v3

    const/16 v3, 0xb

    aget v6, v1, v3

    mul-float/2addr v6, v5

    aput v6, v1, v3

    const/16 v3, 0xc

    aget v6, v1, v3

    mul-float/2addr v6, v5

    aput v6, v1, v3

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v2, v3

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    and-int/lit16 v4, p3, 0xff

    int-to-float v4, v4

    const/4 v5, 0x4

    aput v2, v1, v5

    const/16 v5, 0x9

    aput v3, v1, v5

    const/16 v5, 0xe

    aput v4, v1, v5

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v5
.end method

.method private blacklist createColorFilter(Landroid/content/res/Resources;)V
    .locals 6

    const-string v0, "color"

    :try_start_0
    const-string/jumbo v1, "theme_designer_icon_add_color"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string/jumbo v3, "theme_designer_icon_saturation"

    const-string v4, "integer"

    iget-object v5, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v4, "theme_designer_icon_mult_color"

    iget-object v5, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-direct {p0, v1, v4, v2}, Landroid/app/SemAppIconSolution;->createColorFilter(IFI)Landroid/graphics/ColorFilter;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    return-void
.end method

.method private blacklist getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 1

    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 22

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v13, v0, 0x2

    const/4 v14, 0x0

    filled-new-array {v14, v14}, [I

    move-result-object v0

    add-int/lit8 v2, v8, -0x1

    filled-new-array {v2, v14}, [I

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    add-int/lit8 v4, v9, -0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    filled-new-array {v14, v4}, [I

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [[I

    move-result-object v0

    move-object v15, v0

    mul-int v0, v8, v9

    new-array v7, v0, [I

    new-array v0, v1, [I

    const/4 v6, 0x1

    aput v8, v0, v6

    aput v9, v0, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[I

    if-lez v10, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    move v5, v0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move/from16 v3, p2

    move/from16 v19, v5

    move/from16 v5, v18

    move/from16 v6, p2

    move/from16 v18, v11

    move-object v11, v7

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    mul-int v1, v8, v0

    aget-object v2, v16, v0

    invoke-static {v11, v1, v2, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move/from16 v1, v18

    :goto_2
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-le v13, v1, :cond_9

    if-ne v12, v3, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x4

    if-ge v0, v4, :cond_7

    aget-object v5, v15, v0

    aget v5, v5, v14

    aget-object v6, v15, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    const/16 v18, 0x0

    if-eq v0, v2, :cond_2

    add-int/lit8 v18, v0, 0x1

    :cond_2
    const/16 v20, 0x0

    :goto_4
    if-nez v20, :cond_5

    aget-object v21, v15, v18

    aget v2, v21, v14

    if-ne v5, v2, :cond_3

    aget-object v2, v15, v18

    aget v2, v2, v7

    if-ne v6, v2, :cond_3

    const/4 v2, 0x1

    move/from16 v20, v2

    :cond_3
    aget-object v2, v16, v6

    aget v2, v2, v5

    ushr-int/lit8 v2, v2, 0x18

    move/from16 v4, v19

    if-le v2, v4, :cond_4

    move v2, v1

    move v12, v2

    goto :goto_5

    :cond_4
    sget-object v2, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v14

    add-int/2addr v5, v2

    sget-object v2, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v7

    add-int/2addr v6, v2

    move/from16 v19, v4

    const/4 v2, 0x3

    const/4 v4, 0x4

    goto :goto_4

    :cond_5
    move/from16 v4, v19

    :goto_5
    if-eq v12, v3, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v19, v4

    const/4 v2, 0x3

    goto :goto_3

    :cond_7
    move/from16 v4, v19

    const/4 v7, 0x1

    :goto_6
    if-ne v12, v3, :cond_8

    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x4

    if-ge v0, v2, :cond_8

    aget-object v3, v15, v0

    aget v5, v3, v14

    sget-object v6, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v6, v6, v0

    aget v6, v6, v14

    add-int/2addr v5, v6

    aput v5, v3, v14

    aget-object v3, v15, v0

    aget v5, v3, v7

    sget-object v6, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v6, v6, v0

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v4

    goto/16 :goto_2

    :cond_9
    move/from16 v4, v19

    const/4 v7, 0x1

    if-ne v12, v3, :cond_a

    const/4 v12, 0x0

    :cond_a
    if-eqz v10, :cond_11

    sget-object v2, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    aget-object v3, v15, v7

    aget v3, v3, v14

    aget-object v5, v15, v14

    aget v5, v5, v14

    sub-int/2addr v3, v5

    add-int/2addr v3, v7

    const/4 v5, 0x3

    aget-object v5, v15, v5

    aget v5, v5, v7

    aget-object v6, v15, v14

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int/2addr v5, v7

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_8
    const/16 v7, 0x8

    if-ge v0, v7, :cond_c

    aget-object v7, v2, v0

    aget v7, v7, v14

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0xc0

    aget-object v18, v15, v14

    aget v18, v18, v14

    add-int v7, v7, v18

    aget-object v18, v2, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v21, v1

    mul-int v1, v5, v18

    div-int/lit16 v1, v1, 0xc0

    aget-object v18, v15, v14

    aget v18, v18, v19

    add-int v1, v1, v18

    aget-object v18, v16, v1

    aget v18, v18, v7

    ushr-int/lit8 v14, v18, 0x18

    move/from16 v18, v1

    const/16 v1, 0x1a

    if-le v14, v1, :cond_b

    add-int/lit8 v6, v6, 0x1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    const/4 v7, 0x1

    const/4 v14, 0x0

    goto :goto_8

    :cond_c
    move/from16 v21, v1

    if-ne v6, v7, :cond_f

    const/4 v1, 0x1

    if-ne v10, v1, :cond_d

    const v1, 0x3f6147ae    # 0.88f

    move/from16 v2, v17

    goto :goto_a

    :cond_d
    if-ne v8, v9, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move/from16 v2, v17

    goto :goto_a

    :cond_e
    const v1, 0x3f2e147b    # 0.68f

    move/from16 v2, v17

    goto :goto_a

    :cond_f
    const/4 v1, 0x1

    if-ne v10, v1, :cond_10

    const v1, 0x3f70a3d7    # 0.94f

    goto :goto_9

    :cond_10
    const v1, 0x3f3851ec    # 0.72f

    :goto_9
    move/from16 v2, v17

    goto :goto_a

    :cond_11
    move/from16 v21, v1

    move/from16 v1, p4

    move/from16 v2, v17

    :goto_a
    new-instance v3, Landroid/app/SemAppIconSolution$IconScale;

    invoke-direct {v3, v12, v1, v2}, Landroid/app/SemAppIconSolution$IconScale;-><init>(IFZ)V

    return-object v3
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 21

    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    filled-new-array {v13, v13}, [I

    move-result-object v0

    add-int/lit8 v2, v8, -0x1

    filled-new-array {v2, v13}, [I

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    add-int/lit8 v4, v9, -0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    filled-new-array {v13, v4}, [I

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [[I

    move-result-object v0

    move-object v14, v0

    mul-int v0, v8, v9

    new-array v15, v0, [I

    new-array v0, v1, [I

    const/16 v16, 0x1

    aput v8, v0, v16

    aput v9, v0, v13

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[I

    const/16 v7, 0x1a

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v3, p2

    move/from16 v6, p2

    move/from16 v19, v7

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    mul-int v1, v8, v0

    aget-object v2, v17, v0

    invoke-static {v15, v1, v2, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x3

    const/4 v2, -0x1

    if-le v12, v10, :cond_8

    if-ne v11, v2, :cond_8

    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_6

    aget-object v4, v14, v0

    aget v4, v4, v13

    aget-object v5, v14, v0

    aget v5, v5, v16

    const/4 v6, 0x0

    if-eq v0, v1, :cond_1

    add-int/lit8 v6, v0, 0x1

    :cond_1
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    aget-object v20, v14, v6

    aget v1, v20, v13

    if-ne v4, v1, :cond_2

    aget-object v1, v14, v6

    aget v1, v1, v16

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    move v7, v1

    :cond_2
    aget-object v1, v17, v5

    aget v1, v1, v4

    ushr-int/lit8 v1, v1, 0x18

    move/from16 v3, v19

    if-le v1, v3, :cond_3

    move v1, v10

    move v11, v1

    goto :goto_4

    :cond_3
    sget-object v1, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v13

    add-int/2addr v4, v1

    sget-object v1, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v16

    add-int/2addr v5, v1

    move/from16 v19, v3

    const/4 v1, 0x3

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    move/from16 v3, v19

    :goto_4
    if-eq v11, v2, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v19, v3

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    move/from16 v3, v19

    :goto_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    aget-object v2, v14, v0

    aget v4, v2, v13

    sget-object v5, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v5, v5, v0

    aget v5, v5, v13

    add-int/2addr v4, v5

    aput v4, v2, v13

    aget-object v2, v14, v0

    aget v4, v2, v16

    sget-object v5, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v5, v5, v0

    aget v5, v5, v16

    add-int/2addr v4, v5

    aput v4, v2, v16

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v3

    goto :goto_1

    :cond_8
    move/from16 v3, v19

    if-ne v11, v2, :cond_9

    const/4 v11, 0x0

    :cond_9
    sget-object v1, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    aget-object v2, v14, v16

    aget v2, v2, v13

    aget-object v4, v14, v13

    aget v4, v4, v13

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    aget-object v4, v14, v4

    aget v4, v4, v16

    aget-object v5, v14, v13

    aget v5, v5, v16

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_7
    const/16 v6, 0x8

    if-ge v0, v6, :cond_b

    aget-object v6, v1, v0

    aget v6, v6, v13

    mul-int/2addr v6, v2

    div-int/lit16 v6, v6, 0xc0

    aget-object v7, v14, v13

    aget v7, v7, v13

    add-int/2addr v6, v7

    aget-object v7, v1, v0

    aget v7, v7, v16

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xc0

    aget-object v19, v14, v13

    aget v19, v19, v16

    add-int v7, v7, v19

    aget-object v19, v17, v7

    aget v19, v19, v6

    ushr-int/lit8 v13, v19, 0x18

    if-le v13, v3, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_c

    cmpg-float v6, p4, v7

    if-gtz v6, :cond_c

    if-ne v8, v9, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    move/from16 v7, v18

    goto :goto_8

    :cond_c
    cmpl-float v6, p4, v7

    if-lez v6, :cond_d

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, v18

    goto :goto_8

    :cond_d
    move/from16 v6, p4

    move/from16 v7, v18

    :goto_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "IconUnify : scaled rate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", size="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", alpha="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", hold="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "AppIconSolution"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/SemAppIconSolution$IconScale;

    invoke-direct {v0, v11, v6, v7}, Landroid/app/SemAppIconSolution$IconScale;-><init>(IFZ)V

    return-object v0
.end method

.method private blacklist getColorsForIcon(Landroid/content/Context;)[I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const v3, 0x106003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    const-string v3, "#ff000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v4

    goto :goto_0

    :cond_0
    const v3, 0x106003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v4

    :goto_0
    return-object v1
.end method

.method private blacklist getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v0, "com.android.systemui"

    and-int/lit16 v1, p4, 0x100

    const-string v2, "drawable"

    const-string v3, ", Exception="

    const/4 v4, 0x0

    const-string v5, "AppIconSolution"

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "SystemUI package doesn\'t have resources"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {v1, p2, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_1
    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Failed to get LockScreen Shorcut Icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v4

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon package doesnt have resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :cond_4
    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v4
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Landroid/app/SemAppIconSolution;
    .locals 2

    const-class v0, Landroid/app/SemAppIconSolution;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/SemAppIconSolution;

    invoke-direct {v1, p0}, Landroid/app/SemAppIconSolution;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    :cond_0
    sget-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    monitor-exit v1

    return-object v4

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    :goto_1
    const v1, 0x3c2aaaab

    int-to-float v5, v0

    mul-float/2addr v5, v1

    const v1, 0x3caaaaab

    int-to-float v6, v0

    mul-float/2addr v6, v1

    int-to-float v1, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v6

    add-float/2addr v1, v7

    float-to-int v7, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v1

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    move-object v10, v1

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x29000000

    const/4 v4, 0x0

    invoke-virtual {v10, v5, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v1, 0x1a000000

    invoke-virtual {v10, v6, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_1
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3

    return-object v8

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private blacklist getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-direct/range {p0 .. p1}, Landroid/app/SemAppIconSolution;->getThemeAppIconMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    const-string v5, "ic_shortcut_theme_bg"

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v6, "3rd_party_icon"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v6, "mask_for_crop"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    instance-of v6, v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    :cond_4
    :goto_0
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[getThemeAppIcon]"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v5, v8, v3}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_5
    iget-boolean v8, v0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    if-eqz v8, :cond_9

    if-nez v6, :cond_9

    if-eqz v2, :cond_9

    const/16 v8, 0x5a

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v10, "_"

    const-string v11, "\\."

    const-string v12, "US"

    const-string v13, "en"

    const/16 v14, 0x5a

    if-eqz v9, :cond_7

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v14, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v5, v9, v3}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_7
    if-nez v6, :cond_9

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v14, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_8
    const-string/jumbo v9, "package"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v5, v9, v3}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_9
    return-object v6

    :cond_a
    const/4 v5, 0x0

    return-object v5
.end method

.method private blacklist getThemeAppIconMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mThemeSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getThemeResourceFromMappingTable(Landroid/content/Context;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "AppIconSolution"

    if-nez p2, :cond_0

    const-string v2, "Couldn\'t get theme package resources, package is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/content/APKContents;->getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/APKContents;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using cached contents available for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v4, Landroid/content/APKContents;

    invoke-direct {v4, v2}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/app/SemAppIconSolution;->mCachedAPKContents:Landroid/util/Pair;

    :goto_3
    invoke-virtual {v3}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    :cond_5
    goto :goto_4

    :cond_6
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception v1

    :goto_4
    goto :goto_5

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed at get appIconPackage resources, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method private blacklist getThemeParkAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/overlays/themepark/icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    if-eqz v1, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v4

    const-string v5, "AppIconSolution"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private blacklist getThemeResourceFromMappingTable(Landroid/content/Context;)V
    .locals 14

    const-string v0, "ThemeApp"

    const-string v1, "className"

    const-string v2, "iconId"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x117007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_6

    :cond_0
    const/4 v5, 0x1

    if-eq v6, v5, :cond_6

    const/4 v5, 0x2

    if-eq v6, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    invoke-interface {v3, v10}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_2

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v5, v12

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v7, v12

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Landroid/app/SemAppIconSolution;->mThemeAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    nop

    :cond_5
    goto :goto_0

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during parsing theme app list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppIconSolution"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private blacklist registerAppIconInfo(Landroid/content/Context;)V
    .locals 10

    const-string v0, "bool"

    const-string v1, "integer"

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    :try_start_0
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/content/APKContents;

    invoke-direct {v6, v3}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_1

    const-string v0, "AppIconSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon package doesnt have resources "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v7, "icon_bg_range"

    iget-object v8, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    goto :goto_1

    :cond_2
    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    :goto_1
    const-string v8, "icon_scale_size"

    iget-object v9, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v1, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v8, v7

    const v9, 0x3c23d70a    # 0.01f

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    goto :goto_2

    :cond_3
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    const-string/jumbo v7, "mask_from_theme"

    iget-object v8, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v1, v7

    if-eqz v1, :cond_4

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_2
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    const-string/jumbo v7, "theme_designer_enable_third_party_app_icon"

    iget-object v8, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    goto :goto_5

    :cond_5
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_4
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    :goto_6
    invoke-direct {p0, v6}, Landroid/app/SemAppIconSolution;->createColorFilter(Landroid/content/res/Resources;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    goto :goto_8

    :cond_6
    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    :goto_8
    return-void
.end method


# virtual methods
.method public blacklist applyAppIconColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public blacklist applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    if-nez p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip applying night layer bitmap because of abnormal icon size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIconSolution"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    and-int/lit8 v1, p3, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    and-int/lit16 v4, p3, 0x80

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v2

    :goto_2
    instance-of v6, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v6, :cond_6

    move-object v3, p2

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setNightModeLayer(Z)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {p2, v3, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v3, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_7
    :goto_3
    return-object p2
.end method

.method public blacklist applyPrimaryColorToIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-object p2
.end method

.method public blacklist checkAndDrawLiveIconFromTheme(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;ZZI)Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    const-string v1, "bool"

    const-string v2, "AppIconSolution"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string/jumbo v0, "liveicon_from_theme"

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "com.sec.android.app.clockpackage"

    const-string v13, "com.samsung.android.calendar"

    const/4 v14, 0x1

    const/16 v16, -0x1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v14

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :goto_0
    move/from16 v5, v16

    :goto_1
    packed-switch v5, :pswitch_data_0

    move-object v6, v0

    goto :goto_2

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clock_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendar_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, v8, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    :cond_1
    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "app icon package doesn\'t have \'liveicon_from_theme\', pkg : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v4, :cond_4

    :try_start_1
    iget-object v0, v8, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_2
    goto :goto_4

    :sswitch_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v16, v14

    goto :goto_4

    :sswitch_3
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v16, 0x0

    :goto_4
    packed-switch v16, :pswitch_data_1

    goto :goto_5

    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".clockpackage"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_5

    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".calendar"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_5
    invoke-direct {v8, v9, v0}, Landroid/app/SemAppIconSolution;->getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v7, "liveicon_from_theme"

    invoke-virtual {v5, v7, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v4

    move v4, v1

    goto :goto_6

    :catch_1
    move-exception v0

    move v4, v1

    goto :goto_7

    :cond_3
    :goto_6
    move v0, v3

    move v13, v4

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at get liveicon boolean on overlay pkg : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", e : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v13, v4

    goto :goto_8

    :cond_4
    move v0, v3

    move v13, v4

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load= live icon for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", from overlay = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eqz v1, :cond_8

    if-nez v0, :cond_5

    iget v1, v8, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-gt v1, v14, :cond_5

    goto :goto_a

    :cond_5
    if-eqz p4, :cond_7

    if-eqz p5, :cond_6

    invoke-virtual {v8, v9, v11, v12}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    :cond_6
    invoke-virtual {v8, v9, v11, v12}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_9
    return-object v1

    :cond_7
    return-object v11

    :cond_8
    :goto_a
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v14, v6

    move-object v6, v7

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x748c4ce2 -> :sswitch_1
        0x83b450e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x748c4ce2 -> :sswitch_3
        0x83b450e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist checkAppIconThemePackage(Landroid/content/Context;)I
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "AppIconSolution"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "current_sec_active_themepackage"

    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "current_sec_appicon_theme_package"

    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t access setting property, just keep appIconPackageName empty, ex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/overlays/themepark/icons/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    iget-boolean v0, v1, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    sget-object v0, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    const/4 v3, 0x1

    :cond_1
    const/4 v9, 0x2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0xf

    if-ne v10, v9, :cond_2

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string/jumbo v10, "set theme to null for dex mode"

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v10, 0x3

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, v1, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    if-ne v8, v0, :cond_5

    iget v0, v1, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eq v0, v10, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    iput-object v5, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    iput-boolean v8, v1, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    invoke-direct/range {p0 .. p1}, Landroid/app/SemAppIconSolution;->registerAppIconInfo(Landroid/content/Context;)V

    :cond_6
    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iput-object v6, v1, Landroid/app/SemAppIconSolution;->mThemePackageName:Ljava/lang/String;

    :cond_9
    const/4 v11, 0x0

    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_b

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "colortheme_app_icon"

    invoke-static {v0, v14, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v12, :cond_a

    move v0, v12

    goto :goto_2

    :cond_a
    move v0, v13

    :goto_2
    move v11, v0

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t access setting property, just keep colortheme icon disabled, ex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    iget-object v0, v1, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-boolean v0, v1, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_d

    return v10

    :cond_d
    if-eqz v3, :cond_e

    return v9

    :cond_e
    return v12

    :cond_f
    :goto_4
    return v13
.end method

.method public blacklist getAppIconAlphaRelativeScaleRateForIconTray(Landroid/graphics/Bitmap;II)F
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SemAppIconSolution$IconScale;->-$$Nest$fgetmScale(Landroid/app/SemAppIconSolution$IconScale;)F

    move-result v0

    return v0
.end method

.method public blacklist getAppIconFromTheme(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/app/SemAppIconSolution;->getThemeParkAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/app/SemAppIconSolution;->getThemePackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorThemeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    instance-of v5, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const-string v6, "AppIconSolution"

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v7, "sep_monochrome_icon"

    const-string v8, "drawable"

    invoke-virtual {v5, v7, v8, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v4, v8

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Monochrome image is not existed, Pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find monochrome, Pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getColorsForIcon(Landroid/content/Context;)[I

    move-result-object v5

    if-nez v3, :cond_6

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ColorTheme icon has returned, color = #"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", isNoAdaptive = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", isOnlyBG = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    aget v2, v5, v2

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v6, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "NULL"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v6, 0x0

    const-string v7, "NULL"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 42

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p8

    move-object/from16 v0, p7

    if-eqz v8, :cond_2

    iget-object v1, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "android.content.cts"

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v11, v0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    move-object v11, v0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v13, ", isNight = "

    const/4 v14, 0x2

    const-string v15, "AppIconSolution"

    if-eqz v0, :cond_3

    instance-of v0, v9, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return adaptive icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v7, v9, v10}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-ne v0, v14, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return the original icon because tray option is set to None for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v7, v9, v10}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_8

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-lt v4, v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    invoke-direct {v6, v7, v8, v4, v10}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    move/from16 v19, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {v0, v5, v5, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v1, v19

    :goto_2
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v14, v3

    goto :goto_4

    :cond_7
    move-object v14, v3

    goto :goto_4

    :cond_8
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v14, 0x1

    iput-boolean v14, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v5, 0x10803ac

    invoke-static {v14, v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v14, v3

    :goto_4
    const/4 v3, 0x0

    if-gez v1, :cond_9

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_9

    const/4 v3, 0x1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move-object/from16 v16, v0

    move/from16 v20, v3

    goto :goto_5

    :cond_9
    const v5, 0x10803ac

    move-object/from16 v16, v0

    move/from16 v20, v3

    :goto_5
    if-lez v1, :cond_22

    if-lez v2, :cond_22

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v0, :cond_21

    if-gtz v3, :cond_a

    move/from16 v25, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v27, v3

    move-object v5, v7

    move v7, v10

    move-object/from16 v17, v12

    move-object/from16 v22, v14

    goto/16 :goto_13

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start to load, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v22, v14

    const-string v14, ", dr="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v23, v1

    const-string v1, ", forDefault="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v24, v2

    const-string v2, ", density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v25, v1

    instance-of v1, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_b

    move-object v1, v9

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move/from16 v25, v0

    move/from16 v27, v3

    const/4 v3, 0x0

    goto :goto_6

    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move/from16 v25, v0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v26, v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    move/from16 v27, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v1, v26

    :goto_6
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v25, 0xd8

    const/16 v4, 0xd8

    if-ge v4, v3, :cond_d

    const/high16 v26, 0x43580000    # 216.0f

    int-to-float v4, v3

    div-float v26, v26, v4

    int-to-float v4, v0

    mul-float v4, v4, v26

    float-to-int v0, v4

    int-to-float v4, v2

    mul-float v4, v4, v26

    float-to-int v2, v4

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0xd8

    move/from16 v24, v4

    move-object/from16 v27, v1

    move/from16 v1, v24

    goto :goto_7

    :cond_c
    move-object/from16 v27, v1

    move/from16 v4, v23

    move/from16 v1, v24

    :goto_7
    move/from16 v28, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scale down, pkg="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v0

    move v3, v4

    move-object/from16 v4, v27

    goto :goto_8

    :cond_d
    move v9, v0

    move-object v4, v1

    move/from16 v28, v3

    move/from16 v3, v23

    move/from16 v1, v24

    :goto_8
    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_e

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    goto :goto_9

    :cond_e
    move-object/from16 v26, v5

    const/4 v5, 0x0

    :goto_9
    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v5, ", iconScale="

    move-object/from16 v29, v5

    const-string v5, ", size="

    move-object/from16 v30, v5

    const-string v5, "getIconScale, pkg="

    move-object/from16 v31, v5

    const/4 v5, 0x0

    const/high16 v32, 0x40000000    # 2.0f

    if-eqz v0, :cond_12

    const v33, 0x3f99999a    # 1.2f

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v35, v1

    move-object v1, v4

    move/from16 v36, v2

    move v2, v9

    move/from16 v37, v3

    move/from16 v3, v36

    move-object/from16 v38, v4

    move/from16 v4, v33

    move-object/from16 v17, v12

    move-object/from16 v21, v13

    move-object/from16 v39, v26

    move-object/from16 v7, v29

    move-object/from16 v10, v30

    move-object/from16 v12, v31

    const/4 v13, 0x0

    move/from16 v5, v34

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v36

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v24, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v13, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803ad

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int v3, v28, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_f

    nop

    const/4 v4, 0x1

    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_f
    move v4, v3

    move v7, v3

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v13, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v2, v1, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "default container[CROP], pkg="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v13, v39

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, v21

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v0

    move-object/from16 v14, v22

    goto/16 :goto_a

    :cond_10
    move-object/from16 v4, v21

    move-object/from16 v13, v39

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int v1, v28, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    :cond_11
    move v2, v1

    move v7, v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v10, 0x10803ac

    invoke-static {v12, v10, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v12, 0x1

    invoke-static {v10, v7, v2, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v18, v0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v21, v1

    iget-object v1, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default container[Contain], pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    move-object v14, v10

    move-object v10, v12

    move-object v12, v0

    :goto_a
    int-to-float v0, v7

    div-float v0, v0, v32

    int-to-float v1, v4

    div-float v1, v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move v2, v5

    move v1, v7

    goto/16 :goto_11

    :cond_12
    move/from16 v35, v1

    move v5, v2

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v17, v12

    move-object v4, v13

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    move-object/from16 v10, v30

    move-object/from16 v12, v31

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, ", relScale="

    if-eqz v0, :cond_13

    move/from16 v2, v37

    int-to-float v0, v2

    iget v1, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float/2addr v0, v1

    int-to-float v1, v9

    div-float/2addr v0, v1

    move/from16 v1, v35

    int-to-float v7, v1

    iget v10, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float/2addr v7, v10

    int-to-float v10, v5

    div-float/2addr v7, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fromTheme, pkg="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Scale = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move v10, v5

    move-object/from16 v14, v22

    goto/16 :goto_f

    :cond_13
    move/from16 v1, v35

    move/from16 v2, v37

    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    const/16 v21, 0x0

    move/from16 v30, v0

    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    if-eqz v20, :cond_14

    move/from16 v34, v2

    move-object v6, v3

    move-object/from16 v40, v4

    move/from16 v36, v5

    move/from16 v33, v35

    goto :goto_b

    :cond_14
    const/16 v31, 0x0

    move/from16 v1, v30

    move-object/from16 v0, p0

    move/from16 v33, v35

    move-object/from16 v1, v38

    move/from16 v34, v2

    move v2, v9

    move-object v6, v3

    move v3, v5

    move-object/from16 v40, v4

    move/from16 v4, v30

    move/from16 v36, v5

    move/from16 v5, v31

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    move-object v5, v0

    goto :goto_c

    :cond_15
    move/from16 v34, v2

    move-object v6, v3

    move-object/from16 v40, v4

    move/from16 v36, v5

    move/from16 v33, v35

    :goto_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move v2, v9

    move/from16 v3, v36

    move/from16 v4, v30

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    move-object v5, v0

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, v36

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v7

    invoke-virtual {v5}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v27, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v5

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;ZZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x0

    goto :goto_d

    :cond_16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_d
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v22, v1

    move v1, v3

    move/from16 v0, v27

    move v3, v2

    goto :goto_e

    :cond_17
    move/from16 v0, v27

    move/from16 v1, v33

    move/from16 v3, v34

    goto :goto_e

    :cond_18
    move-object v12, v5

    move/from16 v0, v27

    move/from16 v1, v33

    move/from16 v3, v34

    :goto_e
    int-to-float v2, v3

    mul-float/2addr v2, v7

    invoke-virtual {v12}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    sub-int v4, v28, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    move v7, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromTheme2, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tarScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mask="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p0

    iget-boolean v8, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", isCropInTheme = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v8, v40

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v27, v0

    move v0, v2

    move-object/from16 v14, v22

    :goto_f
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v12, v4

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1a

    if-nez v20, :cond_1a

    if-eqz v14, :cond_19

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v12, v14, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_19
    const-string v4, "bgBitmap is null, so can\'t draw bg."

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_10
    if-eqz v27, :cond_1b

    int-to-float v4, v9

    mul-float/2addr v4, v0

    float-to-int v9, v4

    int-to-float v4, v10

    mul-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v5, v3

    div-float v5, v5, v32

    int-to-float v8, v1

    div-float v8, v8, v32

    invoke-virtual {v12, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v10, v2

    move v2, v4

    move v4, v1

    move v1, v3

    goto :goto_11

    :cond_1b
    int-to-float v4, v3

    div-float v4, v4, v32

    int-to-float v5, v1

    div-float v5, v5, v32

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v12, v0, v7}, Landroid/graphics/Canvas;->scale(FF)V

    move v4, v1

    move v1, v3

    move/from16 v41, v10

    move-object v10, v2

    move/from16 v2, v41

    :goto_11
    if-eqz v27, :cond_1d

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1d

    move-object/from16 v0, v38

    invoke-static {v0, v9, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v5, :cond_1c

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1c
    neg-int v3, v9

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_1d
    move-object/from16 v0, v38

    if-eqz v24, :cond_1f

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v3, :cond_1e

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1e
    neg-int v3, v9

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_1f
    neg-int v3, v9

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_12
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v5, p1

    move/from16 v7, p8

    invoke-virtual {v6, v5, v3, v7}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v2, v4

    goto :goto_14

    :cond_20
    move-object/from16 v5, p1

    move/from16 v7, p8

    move v2, v4

    goto :goto_14

    :cond_21
    move/from16 v25, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v27, v3

    move-object v5, v7

    move v7, v10

    move-object/from16 v17, v12

    move-object/from16 v22, v14

    :goto_13
    return-object p3

    :cond_22
    move/from16 v23, v1

    move/from16 v24, v2

    move-object v5, v7

    move v7, v10

    move-object/from16 v17, v12

    move-object/from16 v22, v14

    move-object/from16 v3, p3

    move-object/from16 v14, v22

    move/from16 v1, v23

    move/from16 v2, v24

    :goto_14
    return-object v3
.end method

.method public blacklist hasAppIconColorFilter()Z
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAppIconThemePackageSet()Z
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mIsThemeParkExist:Z

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

.method public blacklist isCropAppIconUsingBitmap(Landroid/graphics/Bitmap;II)Z
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v0

    return v0
.end method

.method public blacklist isThemeActive(Landroid/content/Context;)Z
    .locals 5

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const-string v3, "com.samsung.upsmtheme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public blacklist needToGetLiveIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Z
    .locals 9

    const-string v0, "AppIconSolution"

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.calendar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "com.sec.android.app.clockpackage"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v5, -0x1

    const-string/jumbo v6, "liveicon_from_theme"

    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clock_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->getAppIconPackageResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "bool"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v5, v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :cond_3
    nop

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app icon package doesn\'t support live theme icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app icon package doesn\'t have \'liveicon_from_theme\', pkg : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x748c4ce2 -> :sswitch_1
        0x83b450e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/app/SemAppIconSolution$ShadowDrawable;

    invoke-direct {v2, v1, p1}, Landroid/app/SemAppIconSolution$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip wrapping shadow bitmap because of abnormal icon size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIconSolution"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public blacklist wrapIconShadowAndNight(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/SemAppIconSolution;->wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
