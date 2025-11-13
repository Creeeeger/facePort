.class public Landroid/app/SemAppIconSolution;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemAppIconSolution$ShadowDrawable;,
        Landroid/app/SemAppIconSolution$IconScale;
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

.field private static final blacklist DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field private static final blacklist DISABLE_APPICON_CROP:Z

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT:F = 0.010416667f

.field private static final blacklist ICON_SIZE_FACTOR_AMBIENT2:F = 0.020833334f

.field public static final blacklist IGNORE_APPICON_THEME:I = 0x2

.field private static final blacklist MATRIX_MOVE:[[I

.field private static final blacklist MATRIX_POINT_ONEDOT:[[I

.field private static final blacklist MATRIX_POINT_THEMECROP:[[I

.field private static final blacklist MATRIX_PROGRESS:[[I

.field public static final blacklist PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

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

.field private blacklist mColorFilter:Landroid/graphics/ColorFilter;

.field private blacklist mEnabledThirdPartyAppIcon:Z

.field private blacklist mIgnoreAppIconThemeHost:Z

.field private blacklist mIsNightMode:Z

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


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 67
    const-string v1, "CscFeature_Common_DisableAppIconCrop"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    .line 96
    const-string v0, "#19000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    .line 99
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    sget v2, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    const/4 v0, 0x4

    new-array v2, v0, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sput-object v2, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    .line 330
    new-array v2, v0, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v6

    sput-object v2, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    .line 331
    const/16 v2, 0x8

    new-array v4, v2, [[I

    new-array v7, v3, [I

    fill-array-data v7, :array_8

    aput-object v7, v4, v5

    new-array v7, v3, [I

    fill-array-data v7, :array_9

    aput-object v7, v4, v1

    new-array v7, v3, [I

    fill-array-data v7, :array_a

    aput-object v7, v4, v3

    new-array v7, v3, [I

    fill-array-data v7, :array_b

    aput-object v7, v4, v6

    new-array v7, v3, [I

    fill-array-data v7, :array_c

    aput-object v7, v4, v0

    new-array v7, v3, [I

    fill-array-data v7, :array_d

    const/4 v8, 0x5

    aput-object v7, v4, v8

    new-array v7, v3, [I

    fill-array-data v7, :array_e

    const/4 v9, 0x6

    aput-object v7, v4, v9

    new-array v7, v3, [I

    fill-array-data v7, :array_f

    const/4 v10, 0x7

    aput-object v7, v4, v10

    sput-object v4, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    .line 332
    new-array v2, v2, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    aput-object v0, v2, v10

    sput-object v2, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x16
    .end array-data

    :array_9
    .array-data 4
        0x60
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xa9
        0x16
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x60
    .end array-data

    :array_c
    .array-data 4
        0xa9
        0xa9
    .end array-data

    :array_d
    .array-data 4
        0x60
        0xbd
    .end array-data

    :array_e
    .array-data 4
        0x16
        0xa9
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x60
    .end array-data

    :array_10
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x60
        0x3
    .end array-data

    :array_12
    .array-data 4
        0xaa
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0xbb
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0xaa
        0xa3
    .end array-data

    :array_15
    .array-data 4
        0x60
        0xba
    .end array-data

    :array_16
    .array-data 4
        0x16
        0xa3
    .end array-data

    :array_17
    .array-data 4
        0x5
        0x5e
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/app/ContextImpl;)V
    .locals 4
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    .line 93
    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    .line 94
    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    .line 104
    const/16 v2, 0xd8

    iput v2, p0, Landroid/app/SemAppIconSolution;->LIMIT_ICON_SIZE:I

    .line 107
    const/16 v2, 0x3e8

    iput v2, p0, Landroid/app/SemAppIconSolution;->LIMIT_SHADOW_SIZE:I

    .line 113
    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 114
    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    .line 879
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    .line 1035
    const-string/jumbo v0, "sep_monochrome_icon"

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->RESNAME_MONOCHROME:Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "sem_appicon_layer_color_for_night"

    const-string v2, "color"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Landroid/app/SemAppIconSolution;->sLayerColorForNight:I

    .line 122
    sget-object v2, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    :cond_0
    sget-boolean v1, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeHosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    .line 128
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method

.method private blacklist createColorFilter(IFI)Landroid/graphics/ColorFilter;
    .locals 8
    .param p1, "colorToMultiply"    # I
    .param p2, "saturation"    # F
    .param p3, "colorToAdd"    # I

    .line 1103
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

    .line 1105
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1106
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1107
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 1109
    .local v1, "matrix":[F
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 1110
    .local v2, "r":F
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 1111
    .local v4, "g":F
    and-int/lit16 v5, p1, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 1112
    .local v5, "b":F
    shr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 1114
    .local v6, "a":F
    const/4 v3, 0x0

    aget v7, v1, v3

    mul-float/2addr v7, v2

    aput v7, v1, v3

    .line 1115
    const/4 v3, 0x1

    aget v7, v1, v3

    mul-float/2addr v7, v2

    aput v7, v1, v3

    .line 1116
    const/4 v3, 0x2

    aget v7, v1, v3

    mul-float/2addr v7, v2

    aput v7, v1, v3

    .line 1117
    const/4 v3, 0x5

    aget v7, v1, v3

    mul-float/2addr v7, v4

    aput v7, v1, v3

    .line 1118
    const/4 v3, 0x6

    aget v7, v1, v3

    mul-float/2addr v7, v4

    aput v7, v1, v3

    .line 1119
    const/4 v3, 0x7

    aget v7, v1, v3

    mul-float/2addr v7, v4

    aput v7, v1, v3

    .line 1120
    const/16 v3, 0xa

    aget v7, v1, v3

    mul-float/2addr v7, v5

    aput v7, v1, v3

    .line 1121
    const/16 v3, 0xb

    aget v7, v1, v3

    mul-float/2addr v7, v5

    aput v7, v1, v3

    .line 1122
    const/16 v3, 0xc

    aget v7, v1, v3

    mul-float/2addr v7, v5

    aput v7, v1, v3

    .line 1124
    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v2, v3

    .line 1125
    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    .line 1126
    .end local v4    # "g":F
    .local v3, "g":F
    and-int/lit16 v4, p3, 0xff

    int-to-float v4, v4

    .line 1128
    .end local v5    # "b":F
    .local v4, "b":F
    const/4 v5, 0x4

    aput v2, v1, v5

    .line 1129
    const/16 v5, 0x9

    aput v3, v1, v5

    .line 1130
    const/16 v5, 0xe

    aput v4, v1, v5

    .line 1132
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1133
    .local v5, "colorMatrixColorFilter":Landroid/graphics/ColorFilter;
    return-object v5
.end method

.method private blacklist createColorFilter(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 1090
    const-string v0, "color"

    :try_start_0
    const-string/jumbo v1, "theme_designer_icon_add_color"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1091
    .local v1, "resID":I
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1092
    .local v2, "colorToAdd":I
    const-string/jumbo v3, "theme_designer_icon_saturation"

    const-string v4, "integer"

    iget-object v5, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 1093
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1094
    .local v3, "saturation":I
    const-string/jumbo v4, "theme_designer_icon_mult_color"

    iget-object v5, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1095
    .end local v1    # "resID":I
    .local v0, "resID":I
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1096
    .local v1, "colorToMultiply":I
    int-to-float v4, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-direct {p0, v1, v4, v2}, Landroid/app/SemAppIconSolution;->createColorFilter(IFI)Landroid/graphics/ColorFilter;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v0    # "resID":I
    .end local v1    # "colorToMultiply":I
    .end local v2    # "colorToAdd":I
    .end local v3    # "saturation":I
    goto :goto_0

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "scale"    # F
    .param p5, "scaleType"    # I

    .line 369
    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    invoke-direct/range {p0 .. p5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;
    .locals 22
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "scale"    # F
    .param p5, "scaleType"    # I

    .line 448
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const/4 v11, 0x0

    .line 449
    .local v11, "count":I
    const/4 v12, -0x1

    .line 450
    .local v12, "alpha":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v13, v0, 0x2

    .line 451
    .local v13, "smallestSide":I
    const/4 v14, 0x4

    new-array v0, v14, [[I

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v15, 0x0

    aput-object v2, v0, v15

    new-array v2, v1, [I

    add-int/lit8 v3, v8, -0x1

    aput v3, v2, v15

    const/4 v7, 0x1

    aput v15, v2, v7

    aput-object v2, v0, v7

    new-array v2, v1, [I

    add-int/lit8 v3, v8, -0x1

    aput v3, v2, v15

    add-int/lit8 v3, v9, -0x1

    aput v3, v2, v7

    aput-object v2, v0, v1

    new-array v2, v1, [I

    aput v15, v2, v15

    add-int/lit8 v3, v9, -0x1

    aput v3, v2, v7

    const/4 v6, 0x3

    aput-object v2, v0, v6

    move-object/from16 v16, v0

    .line 452
    .local v16, "startPoint":[[I
    mul-int v0, v8, v9

    new-array v5, v0, [I

    .line 453
    .local v5, "bmArray":[I
    new-array v0, v1, [I

    aput v8, v0, v7

    aput v9, v0, v15

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[I

    .line 455
    .local v17, "colorArray":[[I
    if-lez v10, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    move v0, v15

    :goto_0
    move v4, v0

    .line 457
    .local v4, "threshold":I
    const/16 v18, 0x0

    .line 458
    .local v18, "fullUp":Z
    const/4 v2, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v3, p2

    move/from16 v21, v4

    .end local v4    # "threshold":I
    .local v21, "threshold":I
    move/from16 v4, v19

    move-object v14, v5

    .end local v5    # "bmArray":[I
    .local v14, "bmArray":[I
    move/from16 v5, v20

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_1

    .line 460
    mul-int v1, v8, v0

    aget-object v2, v17, v0

    invoke-static {v14, v1, v2, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_1
    :goto_2
    const/4 v1, -0x1

    if-le v13, v11, :cond_a

    if-ne v12, v1, :cond_a

    .line 463
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x4

    if-ge v0, v2, :cond_7

    .line 464
    aget-object v2, v16, v0

    aget v2, v2, v15

    .line 465
    .local v2, "x":I
    aget-object v3, v16, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 466
    .local v3, "y":I
    const/4 v5, 0x0

    .line 467
    .local v5, "endPoint":I
    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    .line 468
    add-int/lit8 v5, v0, 0x1

    .line 470
    :cond_2
    const/4 v7, 0x0

    .line 471
    .local v7, "completed":Z
    :goto_4
    if-nez v7, :cond_5

    .line 472
    aget-object v20, v16, v5

    aget v6, v20, v15

    if-ne v2, v6, :cond_3

    aget-object v6, v16, v5

    aget v6, v6, v4

    if-ne v3, v6, :cond_3

    .line 473
    const/4 v6, 0x1

    move v7, v6

    .line 475
    :cond_3
    aget-object v6, v17, v3

    aget v6, v6, v2

    ushr-int/lit8 v6, v6, 0x18

    move/from16 v1, v21

    .end local v21    # "threshold":I
    .local v1, "threshold":I
    if-le v6, v1, :cond_4

    .line 476
    move v6, v11

    .line 477
    .end local v12    # "alpha":I
    .local v6, "alpha":I
    move v12, v6

    goto :goto_5

    .line 479
    .end local v6    # "alpha":I
    .restart local v12    # "alpha":I
    :cond_4
    sget-object v6, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v6, v6, v0

    aget v21, v6, v15

    add-int v2, v2, v21

    .line 480
    aget v6, v6, v4

    add-int/2addr v3, v6

    move/from16 v21, v1

    const/4 v1, -0x1

    const/4 v6, 0x3

    goto :goto_4

    .line 471
    .end local v1    # "threshold":I
    .restart local v21    # "threshold":I
    :cond_5
    move/from16 v1, v21

    .line 482
    .end local v21    # "threshold":I
    .restart local v1    # "threshold":I
    :goto_5
    const/4 v6, -0x1

    if-eq v12, v6, :cond_6

    .line 483
    goto :goto_6

    .line 463
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v21, v1

    move v1, v6

    goto :goto_3

    .end local v1    # "threshold":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v5    # "endPoint":I
    .end local v7    # "completed":Z
    .restart local v21    # "threshold":I
    :cond_7
    move v6, v1

    move/from16 v1, v21

    const/4 v4, 0x1

    .line 486
    .end local v21    # "threshold":I
    .restart local v1    # "threshold":I
    :goto_6
    if-ne v12, v6, :cond_8

    .line 487
    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    .line 488
    aget-object v3, v16, v0

    aget v5, v3, v15

    sget-object v6, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v6, v6, v0

    aget v7, v6, v15

    add-int/2addr v5, v7

    aput v5, v3, v15

    .line 489
    aget-object v3, v16, v0

    aget v5, v3, v4

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 486
    :cond_8
    const/4 v2, 0x4

    .line 492
    :cond_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v21, v1

    goto :goto_2

    .line 462
    .end local v1    # "threshold":I
    .restart local v21    # "threshold":I
    :cond_a
    move/from16 v1, v21

    const/4 v4, 0x1

    .line 494
    .end local v21    # "threshold":I
    .restart local v1    # "threshold":I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_b

    .line 495
    const/4 v12, 0x0

    .line 497
    :cond_b
    if-eqz v10, :cond_12

    .line 499
    sget-object v2, Landroid/app/SemAppIconSolution;->MATRIX_POINT_ONEDOT:[[I

    .line 500
    .local v2, "judge":[[I
    aget-object v3, v16, v4

    aget v3, v3, v15

    aget-object v5, v16, v15

    aget v5, v5, v15

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    .line 501
    .local v3, "detectedX":I
    const/4 v5, 0x3

    aget-object v5, v16, v5

    aget v5, v5, v4

    aget-object v6, v16, v15

    aget v6, v6, v4

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 502
    .local v5, "detectedY":I
    const/4 v6, 0x0

    .line 503
    .local v6, "judgeCount":I
    const/4 v0, 0x0

    :goto_8
    const/16 v7, 0x8

    if-ge v0, v7, :cond_d

    .line 504
    aget-object v7, v2, v0

    aget v7, v7, v15

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0xc0

    aget-object v19, v16, v15

    aget v19, v19, v15

    add-int v7, v7, v19

    .line 505
    .local v7, "x":I
    aget-object v19, v2, v0

    aget v19, v19, v4

    mul-int v4, v5, v19

    div-int/lit16 v4, v4, 0xc0

    aget-object v19, v16, v15

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v4, v4, v19

    .line 506
    .local v4, "y":I
    aget-object v19, v17, v4

    aget v19, v19, v7

    ushr-int/lit8 v15, v19, 0x18

    move/from16 v21, v1

    .end local v1    # "threshold":I
    .restart local v21    # "threshold":I
    const/16 v1, 0x1a

    if-le v15, v1, :cond_c

    add-int/lit8 v6, v6, 0x1

    .line 503
    :cond_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto :goto_8

    .line 508
    .end local v4    # "y":I
    .end local v7    # "x":I
    .end local v21    # "threshold":I
    .restart local v1    # "threshold":I
    :cond_d
    move/from16 v21, v1

    .end local v1    # "threshold":I
    .restart local v21    # "threshold":I
    if-ne v6, v7, :cond_10

    .line 510
    const/4 v1, 0x1

    if-ne v10, v1, :cond_e

    .line 512
    const v1, 0x3f6147ae    # 0.88f

    move/from16 v2, v18

    .end local p4    # "scale":F
    .local v1, "scale":F
    goto :goto_a

    .line 514
    .end local v1    # "scale":F
    .restart local p4    # "scale":F
    :cond_e
    sget-boolean v1, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    if-nez v1, :cond_f

    if-ne v8, v9, :cond_f

    .line 515
    const/high16 v1, 0x3f800000    # 1.0f

    .line 516
    .end local p4    # "scale":F
    .restart local v1    # "scale":F
    const/16 v18, 0x1

    move/from16 v2, v18

    goto :goto_a

    .line 518
    .end local v1    # "scale":F
    .restart local p4    # "scale":F
    :cond_f
    const v1, 0x3f2e147b    # 0.68f

    move/from16 v2, v18

    .end local p4    # "scale":F
    .restart local v1    # "scale":F
    goto :goto_a

    .line 522
    .end local v1    # "scale":F
    .restart local p4    # "scale":F
    :cond_10
    const/4 v1, 0x1

    if-ne v10, v1, :cond_11

    const v1, 0x3f70a3d7    # 0.94f

    goto :goto_9

    :cond_11
    const v1, 0x3f3851ec    # 0.72f

    :goto_9
    move/from16 v2, v18

    .end local p4    # "scale":F
    .restart local v1    # "scale":F
    goto :goto_a

    .line 497
    .end local v2    # "judge":[[I
    .end local v3    # "detectedX":I
    .end local v5    # "detectedY":I
    .end local v6    # "judgeCount":I
    .end local v21    # "threshold":I
    .local v1, "threshold":I
    .restart local p4    # "scale":F
    :cond_12
    move/from16 v21, v1

    .end local v1    # "threshold":I
    .restart local v21    # "threshold":I
    move/from16 v1, p4

    move/from16 v2, v18

    .line 525
    .end local v18    # "fullUp":Z
    .end local p4    # "scale":F
    .local v1, "scale":F
    .local v2, "fullUp":Z
    :goto_a
    new-instance v3, Landroid/app/SemAppIconSolution$IconScale;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v12, v1, v2}, Landroid/app/SemAppIconSolution$IconScale;-><init>(Landroid/app/SemAppIconSolution;IFZ)V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 21
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "scale"    # F

    .line 377
    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x0

    .line 378
    .local v10, "count":I
    const/4 v11, -0x1

    .line 379
    .local v11, "alpha":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    div-int/lit8 v12, v0, 0x2

    .line 380
    .local v12, "smallestSide":I
    const/4 v13, 0x4

    new-array v0, v13, [[I

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v14, 0x0

    aput-object v2, v0, v14

    new-array v2, v1, [I

    add-int/lit8 v3, v8, -0x1

    aput v3, v2, v14

    const/4 v15, 0x1

    aput v14, v2, v15

    aput-object v2, v0, v15

    new-array v2, v1, [I

    add-int/lit8 v3, v8, -0x1

    aput v3, v2, v14

    add-int/lit8 v3, v9, -0x1

    aput v3, v2, v15

    aput-object v2, v0, v1

    new-array v2, v1, [I

    aput v14, v2, v14

    add-int/lit8 v3, v9, -0x1

    aput v3, v2, v15

    const/4 v7, 0x3

    aput-object v2, v0, v7

    move-object/from16 v16, v0

    .line 381
    .local v16, "startPoint":[[I
    mul-int v0, v8, v9

    new-array v6, v0, [I

    .line 382
    .local v6, "bmArray":[I
    new-array v0, v1, [I

    aput v8, v0, v15

    aput v9, v0, v14

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[I

    .line 384
    .local v17, "colorArray":[[I
    const/16 v5, 0x1a

    .line 386
    .local v5, "threshold":I
    const/16 v18, 0x0

    .line 387
    .local v18, "fullUp":Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v3, p2

    move/from16 v20, v5

    .end local v5    # "threshold":I
    .local v20, "threshold":I
    move/from16 v5, v19

    move-object v15, v6

    .end local v6    # "bmArray":[I
    .local v15, "bmArray":[I
    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 389
    mul-int v1, v8, v0

    aget-object v2, v17, v0

    invoke-static {v15, v1, v2, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    :goto_1
    const/4 v1, -0x1

    if-le v12, v10, :cond_8

    if-ne v11, v1, :cond_8

    .line 392
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v13, :cond_6

    .line 393
    aget-object v2, v16, v0

    aget v2, v2, v14

    .line 394
    .local v2, "x":I
    aget-object v3, v16, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 395
    .local v3, "y":I
    const/4 v4, 0x0

    .line 396
    .local v4, "endPoint":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 397
    add-int/lit8 v4, v0, 0x1

    .line 399
    :cond_1
    const/4 v6, 0x0

    .line 400
    .local v6, "completed":Z
    :goto_3
    if-nez v6, :cond_4

    .line 401
    aget-object v7, v16, v4

    aget v7, v7, v14

    if-ne v2, v7, :cond_2

    aget-object v7, v16, v4

    const/16 v19, 0x1

    aget v7, v7, v19

    if-ne v3, v7, :cond_2

    .line 402
    const/4 v6, 0x1

    .line 404
    :cond_2
    aget-object v7, v17, v3

    aget v7, v7, v2

    ushr-int/lit8 v7, v7, 0x18

    move/from16 v5, v20

    .end local v20    # "threshold":I
    .restart local v5    # "threshold":I
    if-le v7, v5, :cond_3

    .line 405
    move v7, v10

    .line 406
    .end local v11    # "alpha":I
    .local v7, "alpha":I
    move v11, v7

    goto :goto_4

    .line 408
    .end local v7    # "alpha":I
    .restart local v11    # "alpha":I
    :cond_3
    sget-object v7, Landroid/app/SemAppIconSolution;->MATRIX_PROGRESS:[[I

    aget-object v7, v7, v0

    aget v20, v7, v14

    add-int v2, v2, v20

    .line 409
    const/16 v19, 0x1

    aget v7, v7, v19

    add-int/2addr v3, v7

    move/from16 v20, v5

    const/4 v5, 0x3

    goto :goto_3

    .line 400
    .end local v5    # "threshold":I
    .restart local v20    # "threshold":I
    :cond_4
    move/from16 v5, v20

    .line 411
    .end local v20    # "threshold":I
    .restart local v5    # "threshold":I
    :goto_4
    if-eq v11, v1, :cond_5

    .line 412
    goto :goto_5

    .line 392
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v20, v5

    goto :goto_2

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "endPoint":I
    .end local v5    # "threshold":I
    .end local v6    # "completed":Z
    .restart local v20    # "threshold":I
    :cond_6
    move/from16 v5, v20

    .line 415
    .end local v20    # "threshold":I
    .restart local v5    # "threshold":I
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_7

    .line 416
    aget-object v1, v16, v0

    aget v2, v1, v14

    sget-object v3, Landroid/app/SemAppIconSolution;->MATRIX_MOVE:[[I

    aget-object v3, v3, v0

    aget v4, v3, v14

    add-int/2addr v2, v4

    aput v2, v1, v14

    .line 417
    aget-object v1, v16, v0

    const/4 v2, 0x1

    aget v4, v1, v2

    aget v3, v3, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 419
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v20, v5

    goto :goto_1

    .line 391
    .end local v5    # "threshold":I
    .restart local v20    # "threshold":I
    :cond_8
    move/from16 v5, v20

    .line 421
    .end local v20    # "threshold":I
    .restart local v5    # "threshold":I
    if-ne v11, v1, :cond_9

    .line 422
    const/4 v11, 0x0

    .line 424
    :cond_9
    sget-object v1, Landroid/app/SemAppIconSolution;->MATRIX_POINT_THEMECROP:[[I

    .line 425
    .local v1, "judge":[[I
    const/4 v2, 0x1

    aget-object v3, v16, v2

    aget v3, v3, v14

    aget-object v4, v16, v14

    aget v4, v4, v14

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 426
    .local v3, "detectedX":I
    const/4 v4, 0x3

    aget-object v4, v16, v4

    aget v4, v4, v2

    aget-object v6, v16, v14

    aget v6, v6, v2

    sub-int/2addr v4, v6

    add-int/2addr v4, v2

    .line 427
    .local v4, "detectedY":I
    const/4 v2, 0x0

    .line 428
    .local v2, "judgeCount":I
    const/4 v0, 0x0

    :goto_7
    const/16 v6, 0x8

    if-ge v0, v6, :cond_b

    .line 429
    aget-object v6, v1, v0

    aget v6, v6, v14

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0xc0

    aget-object v7, v16, v14

    aget v7, v7, v14

    add-int/2addr v6, v7

    .line 430
    .local v6, "x":I
    aget-object v7, v1, v0

    const/4 v13, 0x1

    aget v7, v7, v13

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xc0

    aget-object v19, v16, v14

    aget v19, v19, v13

    add-int v7, v7, v19

    .line 431
    .local v7, "y":I
    aget-object v19, v17, v7

    aget v19, v19, v6

    ushr-int/lit8 v13, v19, 0x18

    if-le v13, v5, :cond_a

    .line 432
    add-int/lit8 v2, v2, 0x1

    .line 428
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 435
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v2, v6, :cond_c

    cmpg-float v6, p4, v7

    if-gtz v6, :cond_c

    if-ne v8, v9, :cond_c

    .line 436
    const/high16 v6, 0x3f800000    # 1.0f

    .line 437
    .end local p4    # "scale":F
    .local v6, "scale":F
    const/16 v18, 0x1

    move/from16 v7, v18

    goto :goto_8

    .line 438
    .end local v6    # "scale":F
    .restart local p4    # "scale":F
    :cond_c
    cmpl-float v6, p4, v7

    if-lez v6, :cond_d

    .line 439
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, v18

    .end local p4    # "scale":F
    .restart local v6    # "scale":F
    goto :goto_8

    .line 438
    .end local v6    # "scale":F
    .restart local p4    # "scale":F
    :cond_d
    move/from16 v6, p4

    move/from16 v7, v18

    .line 441
    .end local v18    # "fullUp":Z
    .end local p4    # "scale":F
    .restart local v6    # "scale":F
    .local v7, "fullUp":Z
    :goto_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IconUnify : scaled rate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", alpha="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hold="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AppIconSolution"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v13, Landroid/app/SemAppIconSolution$IconScale;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v11, v6, v7}, Landroid/app/SemAppIconSolution$IconScale;-><init>(Landroid/app/SemAppIconSolution;IFZ)V

    return-object v13

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist getColorsForIcon(Landroid/app/ContextImpl;)[I
    .locals 5
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 1074
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1075
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1077
    .local v1, "colors":[I
    iget-boolean v2, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1078
    const v2, 0x1060041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 1079
    const v2, 0x106003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 1081
    :cond_0
    const v2, 0x106003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 1082
    const-string v2, "#fffafafa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    .line 1084
    :goto_0
    return-object v1
.end method

.method private blacklist getDrawableFromAppIconPackage(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "overlayIcon"    # Ljava/lang/String;
    .param p3, "logText"    # Ljava/lang/String;

    .line 317
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "drawable"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "resID":I
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 325
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "resID":I
    :cond_0
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIconSolution"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/app/ContextImpl;)Landroid/app/SemAppIconSolution;
    .locals 2
    .param p0, "context"    # Landroid/app/ContextImpl;

    const-class v0, Landroid/app/SemAppIconSolution;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Landroid/app/SemAppIconSolution;

    invoke-direct {v1, p0}, Landroid/app/SemAppIconSolution;-><init>(Landroid/app/ContextImpl;)V

    sput-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;

    .line 135
    :cond_0
    sget-object v1, Landroid/app/SemAppIconSolution;->sUniqueInstance:Landroid/app/SemAppIconSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 131
    .end local p0    # "context":Landroid/app/ContextImpl;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 925
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 926
    .local v0, "shadowSize":I
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 928
    .local v2, "shadowRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 929
    .local v4, "shadow":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_1

    .line 930
    monitor-exit v1

    return-object v4

    .line 932
    .end local v2    # "shadowRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "shadow":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, "iconMaskPath":Landroid/graphics/Path;
    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 936
    invoke-virtual {p1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 937
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 940
    :cond_2
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 941
    .local v2, "dummyIconForPath":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 942
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    .line 945
    .end local v1    # "iconMaskPath":Landroid/graphics/Path;
    .local v2, "iconMaskPath":Landroid/graphics/Path;
    :goto_1
    const v1, 0x3c2aaaab

    int-to-float v5, v0

    mul-float/2addr v5, v1

    .line 946
    .local v5, "blur":F
    const v1, 0x3caaaaab

    int-to-float v6, v0

    mul-float/2addr v6, v1

    .line 949
    .local v6, "blur2":F
    int-to-float v1, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v6

    add-float/2addr v1, v7

    float-to-int v7, v1

    .line 951
    .local v7, "bitmapSize":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 953
    .local v8, "shadow":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v1

    .line 954
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 956
    new-instance v1, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    move-object v10, v1

    .line 957
    .local v10, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    const/high16 v1, 0x29000000

    const/4 v4, 0x0

    invoke-virtual {v10, v5, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 961
    invoke-virtual {v9, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 965
    const/high16 v1, 0x1a000000

    invoke-virtual {v10, v6, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 966
    invoke-virtual {v9, v2, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 968
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 969
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v3

    .line 970
    :try_start_1
    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mShadowCache:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 971
    monitor-exit v3

    .line 972
    return-object v8

    .line 971
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 932
    .end local v2    # "iconMaskPath":Landroid/graphics/Path;
    .end local v5    # "blur":F
    .end local v6    # "blur2":F
    .end local v7    # "bitmapSize":I
    .end local v8    # "shadow":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "paint":Landroid/graphics/Paint;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private blacklist getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "background"    # Z

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "background"    # Z
    .param p4, "mask"    # Z

    .line 268
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getThemeAppIconMap()Ljava/util/HashMap;

    move-result-object v3

    .line 269
    .local v3, "packageIconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 270
    const/4 v4, 0x0

    .line 271
    .local v4, "overlayIcon":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 272
    const-string v5, "3rd_party_icon"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_0
    if-eqz p4, :cond_1

    .line 274
    const-string/jumbo v5, "mask_for_crop"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_1
    if-eqz v2, :cond_3

    .line 276
    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 277
    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 278
    if-nez v4, :cond_3

    instance-of v5, v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    .line 279
    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_2
    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 282
    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 286
    :cond_3
    :goto_0
    const/4 v5, 0x0

    .line 287
    .local v5, "appIcon":Landroid/graphics/drawable/Drawable;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getThemeAppIcon]"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .local v6, "builder":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_4

    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v4, v7}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 292
    :cond_4
    iget-boolean v7, v0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    if-eqz v7, :cond_8

    if-nez v5, :cond_8

    if-eqz v2, :cond_8

    .line 293
    const/16 v7, 0x5a

    .line 294
    .local v7, "MAX_NAME_LENGTH":I
    iget-object v8, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v9, "_"

    const-string v10, "\\."

    const-string v11, "US"

    const-string v12, "en"

    const/16 v13, 0x5a

    if-eqz v8, :cond_6

    .line 295
    iget-object v8, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    new-instance v14, Ljava/util/Locale;

    invoke-direct {v14, v12, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_5

    .line 297
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    :cond_5
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v4, v8}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 301
    :cond_6
    if-nez v5, :cond_8

    iget-object v8, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 302
    iget-object v8, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v14, Ljava/util/Locale;

    invoke-direct {v14, v12, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_7

    .line 304
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    :cond_7
    const-string/jumbo v8, "package"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v4, v8}, Landroid/app/SemAppIconSolution;->getDrawableFromAppIconPackage(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 310
    .end local v7    # "MAX_NAME_LENGTH":I
    :cond_8
    return-object v5

    .line 312
    .end local v4    # "overlayIcon":Ljava/lang/String;
    .end local v5    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    :cond_9
    const/4 v4, 0x0

    return-object v4
.end method

.method private blacklist registerAppIconInfo(Landroid/app/ContextImpl;)V
    .locals 9
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 207
    const-string v0, "bool"

    const-string v1, "integer"

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    .line 210
    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, "r":Landroid/content/res/Resources;
    const-string v6, "icon_bg_range"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v1, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "resID":I
    if-eqz v6, :cond_0

    .line 216
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    goto :goto_0

    .line 218
    :cond_0
    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    .line 220
    :goto_0
    const-string v7, "icon_scale_size"

    iget-object v8, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v1, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 221
    .end local v6    # "resID":I
    .local v1, "resID":I
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 223
    .local v6, "iconScale":I
    int-to-float v7, v6

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    .line 224
    .end local v6    # "iconScale":I
    goto :goto_1

    .line 225
    :cond_1
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    :goto_1
    :try_start_1
    const-string/jumbo v6, "mask_from_theme"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v1, v6

    .line 229
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    goto :goto_2

    .line 232
    :cond_2
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :goto_2
    goto :goto_3

    .line 234
    :catch_0
    move-exception v6

    .line 235
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v6, "theme_designer_enable_third_party_app_icon"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 240
    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    goto :goto_4

    .line 243
    :cond_3
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    :goto_4
    goto :goto_5

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mEnabledThirdPartyAppIcon:Z

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-direct {p0, v3}, Landroid/app/SemAppIconSolution;->createColorFilter(Landroid/content/res/Resources;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "resID":I
    .end local v3    # "r":Landroid/content/res/Resources;
    goto :goto_6

    .line 250
    :catch_2
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/Exception;
    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    .line 252
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    .line 253
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_7

    .line 257
    :cond_4
    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    .line 258
    iput v4, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    .line 259
    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    .line 261
    :goto_7
    return-void
.end method


# virtual methods
.method public blacklist applyAppIconColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 1138
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1139
    return-void
.end method

.method public blacklist applyNightLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 887
    if-nez p1, :cond_0

    return-object p1

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 889
    .local v0, "iconSize":I
    if-gtz v0, :cond_1

    .line 890
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

    .line 891
    return-object p1

    .line 893
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    .line 895
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-boolean v2, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setNightModeLayer(Z)V

    goto :goto_0

    .line 896
    :cond_2
    iget-boolean v1, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    if-eqz v1, :cond_3

    .line 898
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 899
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 900
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 902
    sget-object v3, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 903
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 905
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    return-object p1
.end method

.method public blacklist applyPrimaryColorToIcon(Landroid/app/ContextImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 828
    if-eqz p2, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060300

    .line 830
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 829
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 832
    :cond_0
    return-object p2
.end method

.method public blacklist checkAndDrawLiveIconFromTheme(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "drLiveIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "forIconContainer"    # Z
    .param p5, "useThemeIcon"    # Z

    .line 803
    const/4 v0, 0x0

    .line 805
    .local v0, "fromOverlay":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 807
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "liveicon_from_theme"

    const-string v4, "bool"

    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 808
    .local v3, "resID":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 811
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    goto :goto_0

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load= live icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from overlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppIconSolution"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_2

    .line 819
    :cond_0
    if-eqz p4, :cond_2

    .line 820
    if-eqz p5, :cond_1

    invoke-virtual {p0, p3}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    return-object v1

    .line 822
    :cond_2
    return-object p3

    .line 815
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 816
    return-object p3
.end method

.method public blacklist checkAppIconThemePackage(Landroid/app/ContextImpl;)I
    .locals 12
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 140
    const-string v0, "AppIconSolution"

    const/4 v1, 0x0

    .line 141
    .local v1, "ignoreAppIconTheme":Z
    const/4 v2, 0x0

    .line 142
    .local v2, "nightModeChanged":Z
    const-string v3, ""

    .line 144
    .local v3, "themePackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_appicon_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v4

    .line 147
    .local v4, "se":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t access setting property, just keep themePackageName empty, ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v4    # "se":Ljava/lang/SecurityException;
    :goto_0
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const/4 v3, 0x0

    .line 152
    :cond_0
    sget-boolean v4, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 153
    iget-boolean v4, p0, Landroid/app/SemAppIconSolution;->mIgnoreAppIconThemeHost:Z

    if-eqz v4, :cond_1

    sget-object v4, Landroid/content/om/SamsungThemeConstants;->ignoreAppIconThemeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v1, 0x1

    .line 160
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 161
    .local v7, "cf":Landroid/content/res/Configuration;
    if-eqz v3, :cond_2

    if-eqz v7, :cond_2

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-ne v8, v4, :cond_2

    .line 162
    const/4 v3, 0x0

    .line 163
    const-string/jumbo v8, "set theme to null for dex mode"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    move v8, v6

    .line 167
    .local v8, "currentNightMode":Z
    :goto_1
    iget-boolean v9, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    if-eq v9, v8, :cond_4

    .line 168
    iput-boolean v8, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    .line 169
    const/4 v2, 0x1

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "night mode is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .end local v7    # "cf":Landroid/content/res/Configuration;
    .end local v8    # "currentNightMode":Z
    :cond_4
    goto :goto_2

    .line 172
    :catch_1
    move-exception v7

    .line 173
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_2
    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v8, 0x3

    if-eqz v7, :cond_5

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    if-eqz v3, :cond_6

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget v7, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eq v7, v8, :cond_7

    if-eqz v2, :cond_8

    .line 179
    :cond_7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 180
    iput-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->registerAppIconInfo(Landroid/app/ContextImpl;)V

    .line 184
    :cond_8
    const/4 v7, 0x0

    .line 185
    .local v7, "enableColorThemeIcon":Z
    iget-object v9, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 187
    :try_start_2
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "colortheme_app_icon"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v5, :cond_9

    move v0, v5

    goto :goto_3

    :cond_9
    move v0, v6

    :goto_3
    move v7, v0

    .line 191
    goto :goto_4

    .line 189
    :catch_2
    move-exception v9

    .line 190
    .local v9, "se":Ljava/lang/SecurityException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t access setting property, just keep colortheme icon disabled, ex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v9    # "se":Ljava/lang/SecurityException;
    :cond_a
    :goto_4
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 195
    return v6

    .line 196
    :cond_b
    if-eqz v7, :cond_c

    .line 197
    return v8

    .line 198
    :cond_c
    if-eqz v1, :cond_d

    .line 199
    return v4

    .line 201
    :cond_d
    return v5
.end method

.method public blacklist getAppIconAlphaRelativeScaleRateForIconTray(Landroid/graphics/Bitmap;II)F
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I

    .line 867
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

.method public blacklist getAppIconFromTheme(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 843
    if-nez p3, :cond_0

    .line 844
    const/4 v0, 0x0

    return-object v0

    .line 846
    :cond_0
    iget v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-nez v1, :cond_1

    .line 847
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 849
    :cond_1
    invoke-virtual {p0, p3}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getColorThemeIcon(Landroid/app/ContextImpl;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "iconFeature"    # I

    .line 1037
    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1038
    .local v0, "isNoAdaptive":Z
    :goto_0
    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1040
    .local v3, "isOnlyBG":Z
    :goto_1
    const/4 v4, 0x0

    .line 1042
    .local v4, "mono":Landroid/graphics/drawable/Drawable;
    instance-of v5, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const-string v6, "AppIconSolution"

    if-eqz v5, :cond_3

    .line 1043
    if-eqz v3, :cond_2

    .line 1044
    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    .line 1046
    :cond_2
    move-object v5, p2

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    .line 1048
    :cond_3
    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 1050
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 1052
    .local v5, "resources":Landroid/content/res/Resources;
    const-string/jumbo v7, "sep_monochrome_icon"

    const-string v8, "drawable"

    invoke-virtual {v5, v7, v8, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1053
    .local v7, "resID":I
    if-eqz v7, :cond_4

    .line 1054
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v4, v8

    goto :goto_2

    .line 1056
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

    .line 1060
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "resID":I
    :goto_2
    goto :goto_3

    .line 1058
    :catch_0
    move-exception v5

    .line 1059
    .local v5, "e":Ljava/lang/Exception;
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

    .line 1063
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v4, :cond_7

    .line 1064
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1065
    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getColorsForIcon(Landroid/app/ContextImpl;)[I

    move-result-object v5

    .line 1066
    .local v5, "colors":[I
    if-nez v3, :cond_6

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1067
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ColorTheme icon has returned, isNoAdaptive = "

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

    .line 1068
    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    aget v2, v5, v2

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v6, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 1070
    .end local v5    # "colors":[I
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFeatureDisableAppIconCrop()Z
    .locals 1

    .line 854
    sget-boolean v0, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    return v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 530
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "forDefaultContainer"    # Ljava/lang/Boolean;

    .line 536
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "forDefaultContainer"    # Ljava/lang/Boolean;
    .param p5, "fromThemePackage"    # Ljava/lang/Boolean;

    .line 542
    const/4 v6, 0x0

    const-string v7, "NULL"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeIconWithBG(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 42
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "forDefaultContainer"    # Ljava/lang/Boolean;
    .param p5, "fromThemePackage"    # Ljava/lang/Boolean;
    .param p6, "density"    # I
    .param p7, "packageName"    # Ljava/lang/String;

    .line 549
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p7

    .line 550
    .local v0, "pkgname":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 551
    iget-object v1, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.content.cts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v10, v0

    goto :goto_1

    .line 552
    :cond_1
    :goto_0
    return-object v9

    .line 550
    :cond_2
    move-object v10, v0

    .line 556
    .end local v0    # "pkgname":Ljava/lang/String;
    .local v10, "pkgname":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v11, ", isNight = "

    const/4 v12, 0x2

    const-string v13, "AppIconSolution"

    if-eqz v0, :cond_3

    .line 557
    instance-of v0, v9, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_4

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return adaptive icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v6, v9}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 561
    :cond_3
    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-ne v0, v12, :cond_4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return the original icon because tray option is set to None for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {v6, v9}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 566
    :cond_4
    const/4 v0, 0x0

    .line 567
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v1, -0x1

    .line 568
    .local v1, "bgWidth":I
    const/4 v2, -0x1

    .line 569
    .local v2, "bgHeight":I
    const/4 v3, 0x0

    .line 570
    .local v3, "bgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-nez v4, :cond_8

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-lt v4, v12, :cond_5

    goto :goto_3

    .line 580
    :cond_5
    invoke-direct {v6, v7, v8, v15}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_7

    .line 582
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    .line 583
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 585
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 586
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 587
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 588
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 589
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-virtual {v0, v5, v5, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 590
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 592
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_2
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 593
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 594
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v12, v3

    goto :goto_4

    .line 581
    :cond_7
    move-object v12, v3

    goto :goto_4

    .line 571
    :cond_8
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 572
    .local v4, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 573
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 574
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x1080362

    invoke-static {v12, v14, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 576
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 577
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 578
    .end local v4    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    move-object v12, v3

    .line 598
    .end local v3    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v12, "bgBitmap":Landroid/graphics/Bitmap;
    :goto_4
    const/4 v3, 0x0

    .line 599
    .local v3, "noBG":Z
    if-gez v1, :cond_9

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-gt v4, v15, :cond_9

    .line 601
    const/4 v3, 0x1

    .line 602
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x1080362

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 605
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move-object v14, v0

    move/from16 v18, v3

    goto :goto_5

    .line 607
    :cond_9
    move-object v14, v0

    move/from16 v18, v3

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "noBG":Z
    .local v14, "bg":Landroid/graphics/drawable/Drawable;
    .local v18, "noBG":Z
    :goto_5
    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 609
    .local v0, "drWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 610
    .local v3, "drHeight":I
    if-lez v0, :cond_21

    if-gtz v3, :cond_a

    move/from16 v23, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v25, v3

    move-object/from16 v20, v12

    move-object/from16 v27, v14

    goto/16 :goto_13

    .line 613
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start to load, pkg="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", bg="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v20, v12

    .end local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v20, "bgBitmap":Landroid/graphics/Bitmap;
    const-string v12, ", dr="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v21, v1

    .end local v1    # "bgWidth":I
    .local v21, "bgWidth":I
    const-string v1, ", forDefault="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v22, v2

    .end local v2    # "bgHeight":I
    .local v22, "bgHeight":I
    const-string v2, ", density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v1, 0x0

    .line 619
    .local v1, "drBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v23, v1

    .end local v1    # "drBitmap":Landroid/graphics/Bitmap;
    .local v23, "drBitmap":Landroid/graphics/Bitmap;
    instance-of v1, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_b

    .line 620
    move-object v1, v9

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move/from16 v23, v0

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v23    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drBitmap":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 622
    .end local v1    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "drBitmap":Landroid/graphics/Bitmap;
    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 623
    .end local v23    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drBitmap":Landroid/graphics/Bitmap;
    move/from16 v23, v0

    .end local v0    # "drWidth":I
    .local v23, "drWidth":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 624
    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v24, v1

    .end local v1    # "drBitmap":Landroid/graphics/Bitmap;
    .local v24, "drBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "drHeight":I
    .local v25, "drHeight":I
    invoke-virtual {v9, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v1, v24

    .line 627
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v24    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drBitmap":Landroid/graphics/Bitmap;
    :goto_6
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 629
    .end local v23    # "drWidth":I
    .local v0, "drWidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 630
    .end local v25    # "drHeight":I
    .local v2, "drHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 631
    .local v3, "maxDr":I
    const/16 v23, 0xd8

    .line 632
    .local v23, "bgMax":I
    const/16 v4, 0xd8

    if-ge v4, v3, :cond_d

    .line 633
    const/high16 v24, 0x43580000    # 216.0f

    int-to-float v4, v3

    div-float v24, v24, v4

    .line 634
    .local v24, "scaleX":F
    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v0, v4

    .line 635
    int-to-float v4, v2

    mul-float v4, v4, v24

    float-to-int v2, v4

    .line 636
    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 637
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 638
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 639
    const/16 v4, 0xd8

    move/from16 v22, v4

    move-object/from16 v25, v1

    move/from16 v1, v22

    .end local v21    # "bgWidth":I
    .local v4, "bgWidth":I
    goto :goto_7

    .line 638
    .end local v4    # "bgWidth":I
    .restart local v21    # "bgWidth":I
    :cond_c
    move-object/from16 v25, v1

    move/from16 v4, v21

    move/from16 v1, v22

    .line 641
    .end local v21    # "bgWidth":I
    .end local v22    # "bgHeight":I
    .local v1, "bgHeight":I
    .restart local v4    # "bgWidth":I
    .local v25, "drBitmap":Landroid/graphics/Bitmap;
    :goto_7
    move/from16 v26, v3

    .end local v3    # "maxDr":I
    .local v26, "maxDr":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v14

    .end local v14    # "bg":Landroid/graphics/drawable/Drawable;
    .local v27, "bg":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v14, "scale down, pkg="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v0

    move v3, v4

    move-object/from16 v4, v25

    goto :goto_8

    .line 632
    .end local v4    # "bgWidth":I
    .end local v24    # "scaleX":F
    .end local v25    # "drBitmap":Landroid/graphics/Bitmap;
    .end local v26    # "maxDr":I
    .end local v27    # "bg":Landroid/graphics/drawable/Drawable;
    .local v1, "drBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "maxDr":I
    .restart local v14    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "bgWidth":I
    .restart local v22    # "bgHeight":I
    :cond_d
    move-object/from16 v27, v14

    .end local v14    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "bg":Landroid/graphics/drawable/Drawable;
    move v14, v0

    move-object v4, v1

    move/from16 v26, v3

    move/from16 v3, v21

    move/from16 v1, v22

    .line 644
    .end local v0    # "drWidth":I
    .end local v21    # "bgWidth":I
    .end local v22    # "bgHeight":I
    .local v1, "bgHeight":I
    .local v3, "bgWidth":I
    .local v4, "drBitmap":Landroid/graphics/Bitmap;
    .local v14, "drWidth":I
    .restart local v26    # "maxDr":I
    :goto_8
    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_e

    .line 645
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    .line 646
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "bgHeight":I
    .local v21, "bgHeight":I
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 647
    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 648
    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    goto :goto_9

    .line 644
    .end local v21    # "bgHeight":I
    .restart local v1    # "bgHeight":I
    :cond_e
    move/from16 v21, v1

    const/4 v1, 0x0

    .line 651
    .end local v1    # "bgHeight":I
    .restart local v21    # "bgHeight":I
    :goto_9
    const/16 v19, 0x0

    .line 652
    .local v19, "b":Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .line 653
    .local v22, "canvas":Landroid/graphics/Canvas;
    const/16 v24, 0x0

    .line 654
    .local v24, "isTargetForAppIconCrop":Z
    const/16 v25, 0x0

    .line 655
    .local v25, "isCropInTheme":Z
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v28, v5

    const-string v5, ", iconScale="

    move-object/from16 v29, v5

    const-string v5, ", size="

    move-object/from16 v30, v5

    const-string v5, "getIconScale, pkg="

    move-object/from16 v31, v5

    const/4 v5, 0x0

    const/high16 v32, 0x40000000    # 2.0f

    if-eqz v0, :cond_12

    .line 656
    const v33, 0x3f99999a    # 1.2f

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v35, v21

    move/from16 v21, v1

    .end local v21    # "bgHeight":I
    .local v35, "bgHeight":I
    move-object v1, v4

    move/from16 v36, v2

    .end local v2    # "drHeight":I
    .local v36, "drHeight":I
    move v2, v14

    move/from16 v37, v3

    .end local v3    # "bgWidth":I
    .local v37, "bgWidth":I
    move/from16 v3, v36

    move-object/from16 v38, v4

    .end local v4    # "drBitmap":Landroid/graphics/Bitmap;
    .local v38, "drBitmap":Landroid/graphics/Bitmap;
    move/from16 v4, v33

    move-object/from16 v39, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v28, v11

    move/from16 v11, v21

    move/from16 v5, v34

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    .line 658
    .local v0, "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v36

    .end local v36    # "drHeight":I
    .local v5, "drHeight":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 661
    const/16 v24, 0x1

    .line 662
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 663
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 664
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080363

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 667
    .local v2, "maskBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 668
    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int v3, v26, v3

    .line 669
    .local v3, "target":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 670
    nop

    .line 671
    const/4 v4, 0x1

    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 673
    :cond_f
    move v4, v3

    .end local v35    # "bgHeight":I
    .local v4, "bgHeight":I
    move v7, v3

    .line 674
    .end local v37    # "bgWidth":I
    .local v7, "bgWidth":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 675
    .end local v19    # "b":Landroid/graphics/Bitmap;
    .local v8, "b":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 676
    .end local v22    # "canvas":Landroid/graphics/Canvas;
    .local v9, "canvas":Landroid/graphics/Canvas;
    iget-object v11, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .local v16, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v9, v2, v1, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "default container[CROP], pkg="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, v39

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, v28

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v11, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v2    # "maskBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "target":I
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v16, v0

    move-object/from16 v12, v20

    goto/16 :goto_a

    .line 680
    .end local v4    # "bgHeight":I
    .end local v7    # "bgWidth":I
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .restart local v19    # "b":Landroid/graphics/Bitmap;
    .restart local v22    # "canvas":Landroid/graphics/Canvas;
    .restart local v35    # "bgHeight":I
    .restart local v37    # "bgWidth":I
    :cond_10
    move-object/from16 v4, v28

    move-object/from16 v11, v39

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int v1, v26, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 681
    .local v1, "target":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_11

    .line 682
    add-int/lit8 v1, v1, 0x1

    .line 684
    :cond_11
    move v2, v1

    .end local v35    # "bgHeight":I
    .local v2, "bgHeight":I
    move v7, v1

    .line 685
    .end local v37    # "bgWidth":I
    .restart local v7    # "bgWidth":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 686
    .local v3, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 687
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v8, 0x1080362

    invoke-static {v9, v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 690
    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v8, "bgBitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 691
    const/4 v9, 0x1

    invoke-static {v8, v7, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 692
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 693
    .end local v19    # "b":Landroid/graphics/Bitmap;
    .local v9, "b":Landroid/graphics/Bitmap;
    move-object/from16 v16, v0

    .end local v0    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    .local v16, "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    .end local v22    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    move/from16 v17, v1

    .end local v1    # "target":I
    .local v17, "target":I
    iget-object v1, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v3

    const/4 v3, 0x0

    .end local v3    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .local v28, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v0, v8, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default container[Contain], pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    move-object v12, v8

    move-object v8, v9

    move-object v9, v0

    .line 698
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "bgHeight":I
    .end local v17    # "target":I
    .end local v28    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "bgHeight":I
    .local v8, "b":Landroid/graphics/Bitmap;
    .local v9, "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    :goto_a
    int-to-float v0, v7

    div-float v0, v0, v32

    int-to-float v1, v4

    div-float v1, v1, v32

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    .end local v16    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    move v2, v5

    move v1, v7

    goto/16 :goto_11

    .line 702
    .end local v5    # "drHeight":I
    .end local v7    # "bgWidth":I
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v38    # "drBitmap":Landroid/graphics/Bitmap;
    .local v2, "drHeight":I
    .local v3, "bgWidth":I
    .local v4, "drBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "b":Landroid/graphics/Bitmap;
    .restart local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "bgHeight":I
    .restart local v22    # "canvas":Landroid/graphics/Canvas;
    :cond_12
    move v5, v2

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object v4, v11

    move/from16 v35, v21

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    .end local v2    # "drHeight":I
    .end local v3    # "bgWidth":I
    .end local v4    # "drBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "bgHeight":I
    .restart local v5    # "drHeight":I
    .restart local v35    # "bgHeight":I
    .restart local v37    # "bgWidth":I
    .restart local v38    # "drBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, ", relScale="

    if-eqz v0, :cond_13

    .line 703
    move/from16 v2, v37

    .end local v37    # "bgWidth":I
    .local v2, "bgWidth":I
    int-to-float v0, v2

    iget v1, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float/2addr v0, v1

    int-to-float v7, v14

    div-float/2addr v0, v7

    .line 704
    .local v0, "relativeScaleX":F
    move/from16 v7, v35

    .end local v35    # "bgHeight":I
    .local v7, "bgHeight":I
    int-to-float v8, v7

    mul-float/2addr v8, v1

    int-to-float v1, v5

    div-float/2addr v8, v1

    .line 705
    .local v8, "relativeScaleY":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fromTheme, pkg="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Scale = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move v2, v5

    move v1, v7

    move-object/from16 v12, v20

    goto/16 :goto_f

    .line 709
    .end local v0    # "relativeScaleX":F
    .end local v2    # "bgWidth":I
    .end local v7    # "bgHeight":I
    .end local v8    # "relativeScaleY":F
    .restart local v35    # "bgHeight":I
    .restart local v37    # "bgWidth":I
    :cond_13
    move/from16 v17, v35

    move/from16 v2, v37

    .end local v35    # "bgHeight":I
    .end local v37    # "bgWidth":I
    .restart local v2    # "bgWidth":I
    .local v17, "bgHeight":I
    iget v1, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    .line 710
    .local v1, "targetScale":F
    const/16 v28, 0x0

    .line 711
    .local v28, "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    move/from16 v30, v1

    const/4 v1, 0x2

    .end local v1    # "targetScale":F
    .local v30, "targetScale":F
    if-eq v0, v1, :cond_15

    if-eqz v18, :cond_14

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move/from16 v36, v5

    move/from16 v33, v30

    move/from16 v30, v2

    goto :goto_b

    .line 715
    :cond_14
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v33, v30

    .end local v30    # "targetScale":F
    .local v33, "targetScale":F
    move-object/from16 v1, v38

    move/from16 v30, v2

    .end local v2    # "bgWidth":I
    .local v30, "bgWidth":I
    move v2, v14

    move-object/from16 v40, v3

    move v3, v5

    move-object/from16 v41, v4

    move/from16 v4, v33

    move/from16 v36, v5

    .end local v5    # "drHeight":I
    .restart local v36    # "drHeight":I
    move/from16 v5, v31

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    .end local v28    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    .local v0, "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    goto :goto_c

    .line 711
    .end local v0    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    .end local v33    # "targetScale":F
    .end local v36    # "drHeight":I
    .restart local v2    # "bgWidth":I
    .restart local v5    # "drHeight":I
    .restart local v28    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    .local v30, "targetScale":F
    :cond_15
    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move/from16 v36, v5

    move/from16 v33, v30

    move/from16 v30, v2

    .line 712
    .end local v2    # "bgWidth":I
    .end local v5    # "drHeight":I
    .local v30, "bgWidth":I
    .restart local v33    # "targetScale":F
    .restart local v36    # "drHeight":I
    :goto_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move v2, v14

    move/from16 v3, v36

    move/from16 v4, v33

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIFI)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    .line 718
    .end local v28    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    .restart local v0    # "iconScale":Landroid/app/SemAppIconSolution$IconScale;
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v36

    .end local v36    # "drHeight":I
    .local v2, "drHeight":I
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v1

    .line 720
    .local v1, "relativeScaleX":F
    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->isCrop()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 721
    const/16 v25, 0x1

    .line 722
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v7, v5}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/app/ContextImpl;Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 723
    .local v8, "maskDr":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_17

    .line 724
    instance-of v5, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_16

    .line 725
    move-object v5, v8

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v4, 0x0

    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v5, "bgBitmap":Landroid/graphics/Bitmap;
    goto :goto_d

    .line 727
    .end local v5    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    :cond_16
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 728
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 727
    invoke-static {v5, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 729
    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bgBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 730
    .local v7, "maskCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 731
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 730
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 734
    .end local v7    # "maskCanvas":Landroid/graphics/Canvas;
    :goto_d
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 735
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 736
    .end local v30    # "bgWidth":I
    .restart local v3    # "bgWidth":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v20, v5

    move/from16 v5, v25

    .end local v17    # "bgHeight":I
    .local v4, "bgHeight":I
    goto :goto_e

    .line 723
    .end local v3    # "bgWidth":I
    .end local v4    # "bgHeight":I
    .end local v5    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "bgHeight":I
    .restart local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v30    # "bgWidth":I
    :cond_17
    move/from16 v4, v17

    move/from16 v5, v25

    move/from16 v3, v30

    goto :goto_e

    .line 720
    .end local v8    # "maskDr":Landroid/graphics/drawable/Drawable;
    :cond_18
    move/from16 v4, v17

    move/from16 v5, v25

    move/from16 v3, v30

    .line 739
    .end local v17    # "bgHeight":I
    .end local v25    # "isCropInTheme":Z
    .end local v30    # "bgWidth":I
    .restart local v3    # "bgWidth":I
    .restart local v4    # "bgHeight":I
    .local v5, "isCropInTheme":Z
    :goto_e
    int-to-float v7, v3

    mul-float/2addr v7, v1

    .line 740
    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v8

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    sub-int v8, v26, v8

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 741
    move v8, v1

    .line 742
    .local v8, "relativeScaleY":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fromTheme2, pkg="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", tarScale="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v9, v33

    .end local v33    # "targetScale":F
    .local v9, "targetScale":F
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v11, v40

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", mask="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v11, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", isCropInTheme = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v11, v41

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v11, v6, Landroid/app/SemAppIconSolution;->mIsNightMode:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v1, v4

    move/from16 v25, v5

    move-object/from16 v12, v20

    .line 746
    .end local v4    # "bgHeight":I
    .end local v5    # "isCropInTheme":Z
    .end local v9    # "targetScale":F
    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v0, "relativeScaleX":F
    .local v1, "bgHeight":I
    .restart local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v25    # "isCropInTheme":Z
    :goto_f
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 747
    .end local v19    # "b":Landroid/graphics/Bitmap;
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v5

    .line 748
    .end local v22    # "canvas":Landroid/graphics/Canvas;
    .local v9, "canvas":Landroid/graphics/Canvas;
    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1a

    iget v5, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v7, 0x1

    if-gt v5, v7, :cond_1a

    if-nez v18, :cond_1a

    .line 749
    if-eqz v12, :cond_19

    .line 751
    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v9, v12, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 753
    :cond_19
    const-string v5, "bgBitmap is null, so can\'t draw bg."

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1a
    :goto_10
    if-eqz v25, :cond_1b

    .line 757
    int-to-float v5, v14

    mul-float/2addr v5, v0

    float-to-int v14, v5

    .line 758
    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v2, v5

    .line 759
    int-to-float v5, v3

    div-float v5, v5, v32

    int-to-float v7, v1

    div-float v7, v7, v32

    invoke-virtual {v9, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v8, v4

    move v4, v1

    move v1, v3

    goto :goto_11

    .line 762
    :cond_1b
    int-to-float v5, v3

    div-float v5, v5, v32

    int-to-float v7, v1

    div-float v7, v7, v32

    invoke-virtual {v9, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 763
    invoke-virtual {v9, v0, v8}, Landroid/graphics/Canvas;->scale(FF)V

    move-object v8, v4

    move v4, v1

    move v1, v3

    .line 767
    .end local v0    # "relativeScaleX":F
    .end local v3    # "bgWidth":I
    .local v1, "bgWidth":I
    .local v4, "bgHeight":I
    .local v8, "b":Landroid/graphics/Bitmap;
    :goto_11
    if-eqz v25, :cond_1d

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1d

    .line 770
    move-object/from16 v0, v38

    .end local v38    # "drBitmap":Landroid/graphics/Bitmap;
    .local v0, "drBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v14, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 771
    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v5, :cond_1c

    .line 772
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    .line 773
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 774
    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 775
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 776
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 778
    :cond_1c
    neg-int v3, v14

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 767
    .end local v0    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v38    # "drBitmap":Landroid/graphics/Bitmap;
    :cond_1d
    move-object/from16 v0, v38

    .line 779
    .end local v38    # "drBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "drBitmap":Landroid/graphics/Bitmap;
    if-eqz v24, :cond_1f

    .line 781
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v3, :cond_1e

    .line 782
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    .line 783
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 784
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 785
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 786
    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 788
    :cond_1e
    neg-int v3, v14

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 790
    :cond_1f
    neg-int v3, v14

    int-to-float v3, v3

    div-float v3, v3, v32

    neg-int v5, v2

    int-to-float v5, v5

    div-float v5, v5, v32

    iget-object v7, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    :goto_12
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 794
    .end local p3    # "dr":Landroid/graphics/drawable/Drawable;
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 795
    invoke-virtual {v6, v3}, Landroid/app/SemAppIconSolution;->wrapIconShadowAndNight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v2, v4

    goto :goto_14

    .line 794
    :cond_20
    move v2, v4

    goto :goto_14

    .line 610
    .end local v4    # "bgHeight":I
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v23    # "bgMax":I
    .end local v24    # "isTargetForAppIconCrop":Z
    .end local v25    # "isCropInTheme":Z
    .end local v26    # "maxDr":I
    .end local v27    # "bg":Landroid/graphics/drawable/Drawable;
    .local v0, "drWidth":I
    .local v2, "bgHeight":I
    .local v3, "drHeight":I
    .local v14, "bg":Landroid/graphics/drawable/Drawable;
    .restart local p3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_21
    move/from16 v23, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v25, v3

    move-object/from16 v20, v12

    move-object/from16 v27, v14

    .line 611
    .end local v0    # "drWidth":I
    .end local v1    # "bgWidth":I
    .end local v2    # "bgHeight":I
    .end local v3    # "drHeight":I
    .end local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .local v21, "bgWidth":I
    .local v22, "bgHeight":I
    .local v23, "drWidth":I
    .local v25, "drHeight":I
    .restart local v27    # "bg":Landroid/graphics/drawable/Drawable;
    :goto_13
    return-object p3

    .line 607
    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "bgWidth":I
    .end local v22    # "bgHeight":I
    .end local v23    # "drWidth":I
    .end local v25    # "drHeight":I
    .end local v27    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bgWidth":I
    .restart local v2    # "bgHeight":I
    .restart local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_22
    move/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v20, v12

    move-object/from16 v27, v14

    .line 798
    .end local v1    # "bgWidth":I
    .end local v2    # "bgHeight":I
    .end local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "bgWidth":I
    .restart local v22    # "bgHeight":I
    .restart local v27    # "bg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v3, p3

    move-object/from16 v12, v20

    move/from16 v1, v21

    move/from16 v2, v22

    .end local v20    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "bgWidth":I
    .end local v22    # "bgHeight":I
    .end local p3    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bgWidth":I
    .restart local v2    # "bgHeight":I
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "bgBitmap":Landroid/graphics/Bitmap;
    :goto_14
    return-object v3
.end method

.method public blacklist hasAppIconColorFilter()Z
    .locals 1

    .line 1143
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

    .line 837
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCropAppIconUsingBitmap(Landroid/graphics/Bitmap;II)Z
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I

    .line 859
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

.method public blacklist isThemeActive(Landroid/app/ContextImpl;)Z
    .locals 5
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 362
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "com.samsung.upsmtheme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 363
    .local v0, "hasAppIconPack":Z
    :goto_0
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 364
    .local v3, "isDexMode":Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public blacklist wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 909
    if-nez p1, :cond_0

    return-object p1

    .line 910
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 911
    .local v0, "iconSize":I
    if-lez v0, :cond_3

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 915
    :cond_1
    instance-of v1, p1, Landroid/app/SemAppIconSolution$ShadowDrawable;

    if-eqz v1, :cond_2

    .line 917
    return-object p1

    .line 920
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/SemAppIconSolution;->getShadowBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 921
    .local v1, "shadow":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/app/SemAppIconSolution$ShadowDrawable;

    invoke-direct {v2, v1, p1}, Landroid/app/SemAppIconSolution$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 912
    .end local v1    # "shadow":Landroid/graphics/Bitmap;
    :cond_3
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

    .line 913
    return-object p1
.end method

.method public blacklist wrapIconShadowAndNight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 882
    invoke-virtual {p0, p1}, Landroid/app/SemAppIconSolution;->applyNightLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 883
    .local v0, "nightLayerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/app/SemAppIconSolution;->wrapIconShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
