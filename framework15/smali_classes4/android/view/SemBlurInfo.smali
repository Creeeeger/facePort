.class public Landroid/view/SemBlurInfo;
.super Ljava/lang/Object;
.source "SemBlurInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SemBlurInfo$ColorCurve;,
        Landroid/view/SemBlurInfo$Builder;,
        Landroid/view/SemBlurInfo$BlurMode;
    }
.end annotation


# static fields
.field private static final blacklist BLUR_BASE_OFFSET:I = 0x65

.field public static final whitelist BLUR_BG_REGULAR_DARK:I = 0x87

.field public static final whitelist BLUR_BG_REGULAR_LIGHT:I = 0x84

.field public static final whitelist BLUR_BG_THICK_DARK:I = 0x88

.field public static final whitelist BLUR_BG_THICK_DARK_GRAYISH:I = 0x89

.field public static final whitelist BLUR_BG_THICK_LIGHT:I = 0x85

.field public static final whitelist BLUR_BG_THIN_DARK:I = 0x86

.field public static final whitelist BLUR_BG_THIN_LIGHT:I = 0x83

.field public static final whitelist BLUR_MODE_CANVAS:I = 0x2

.field public static final whitelist BLUR_MODE_WINDOW:I = 0x0

.field public static final whitelist BLUR_MODE_WINDOW_CAPTURED:I = 0x1

.field private static final blacklist BLUR_PRESET:[[F

.field private static final blacklist BLUR_PRESET_BEGIN:I = 0x65

.field private static final blacklist BLUR_PRESET_END:I = 0x89

.field public static final whitelist BLUR_UI_HIGH_REGULAR_DARK:I = 0x80

.field public static final whitelist BLUR_UI_HIGH_REGULAR_LIGHT:I = 0x71

.field public static final whitelist BLUR_UI_HIGH_THICK_DARK:I = 0x81

.field public static final whitelist BLUR_UI_HIGH_THICK_LIGHT:I = 0x72

.field public static final whitelist BLUR_UI_HIGH_THIN_DARK:I = 0x7f

.field public static final whitelist BLUR_UI_HIGH_THIN_LIGHT:I = 0x70

.field public static final whitelist BLUR_UI_HIGH_ULTRA_THICK_DARK:I = 0x82

.field public static final whitelist BLUR_UI_HIGH_ULTRA_THICK_LIGHT:I = 0x73

.field public static final whitelist BLUR_UI_HIGH_ULTRA_THIN_DARK:I = 0x7e

.field public static final whitelist BLUR_UI_HIGH_ULTRA_THIN_LIGHT:I = 0x6f

.field public static final whitelist BLUR_UI_LOW_REGULAR_DARK:I = 0x76

.field public static final whitelist BLUR_UI_LOW_REGULAR_LIGHT:I = 0x67

.field public static final whitelist BLUR_UI_LOW_THICK_DARK:I = 0x77

.field public static final whitelist BLUR_UI_LOW_THICK_LIGHT:I = 0x68

.field public static final whitelist BLUR_UI_LOW_THIN_DARK:I = 0x75

.field public static final whitelist BLUR_UI_LOW_THIN_LIGHT:I = 0x66

.field public static final whitelist BLUR_UI_LOW_ULTRA_THICK_DARK:I = 0x78

.field public static final whitelist BLUR_UI_LOW_ULTRA_THICK_LIGHT:I = 0x69

.field public static final whitelist BLUR_UI_LOW_ULTRA_THIN_DARK:I = 0x74

.field public static final whitelist BLUR_UI_LOW_ULTRA_THIN_LIGHT:I = 0x65

.field public static final whitelist BLUR_UI_MEDIUM_REGULAR_DARK:I = 0x7b

.field public static final whitelist BLUR_UI_MEDIUM_REGULAR_LIGHT:I = 0x6c

.field public static final whitelist BLUR_UI_MEDIUM_THICK_DARK:I = 0x7c

.field public static final whitelist BLUR_UI_MEDIUM_THICK_LIGHT:I = 0x6d

.field public static final whitelist BLUR_UI_MEDIUM_THIN_DARK:I = 0x7a

.field public static final whitelist BLUR_UI_MEDIUM_THIN_LIGHT:I = 0x6b

.field public static final whitelist BLUR_UI_MEDIUM_ULTRA_THICK_DARK:I = 0x7d

.field public static final whitelist BLUR_UI_MEDIUM_ULTRA_THICK_LIGHT:I = 0x6e

.field public static final whitelist BLUR_UI_MEDIUM_ULTRA_THIN_DARK:I = 0x79

.field public static final whitelist BLUR_UI_MEDIUM_ULTRA_THIN_LIGHT:I = 0x6a

.field private static final blacklist COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

.field private static final blacklist COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

.field private static final blacklist COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

.field private static final blacklist COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

.field private static final blacklist COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

.field private static final blacklist COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

.field public static final whitelist COLOR_CURVE_TYPE_DIM_BACKGROUND_DARK:I = 0xf

.field public static final whitelist COLOR_CURVE_TYPE_DIM_BACKGROUND_LIGHT:I = 0xc

.field public static final whitelist COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_DARK:I = 0xe

.field public static final whitelist COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_LIGHT:I = 0xb

.field public static final whitelist COLOR_CURVE_TYPE_ULTRA_BACKGROUND_DARK:I = 0x10

.field public static final whitelist COLOR_CURVE_TYPE_ULTRA_BACKGROUND_LIGHT:I = 0xd

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SemBlurInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemBlurInfo"


# instance fields
.field private final blacklist mBackgroundBlurColor:I

.field private final blacklist mBlurMode:I

.field private final blacklist mBlurRadius:I

.field private final blacklist mCanvasDownScale:I

.field private final blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private final blacklist mHasCapturedBitmap:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetBLUR_PRESET()[[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->BLUR_PRESET:[[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_DARK()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT()[F
    .locals 1

    sget-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 39

    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

    new-array v1, v0, [F

    move-object v2, v1

    fill-array-data v1, :array_6

    new-array v1, v0, [F

    move-object v3, v1

    fill-array-data v1, :array_7

    new-array v1, v0, [F

    move-object v4, v1

    fill-array-data v1, :array_8

    new-array v1, v0, [F

    move-object v5, v1

    fill-array-data v1, :array_9

    new-array v1, v0, [F

    move-object v6, v1

    fill-array-data v1, :array_a

    new-array v1, v0, [F

    move-object v7, v1

    fill-array-data v1, :array_b

    new-array v1, v0, [F

    move-object v8, v1

    fill-array-data v1, :array_c

    new-array v1, v0, [F

    move-object v9, v1

    fill-array-data v1, :array_d

    new-array v1, v0, [F

    move-object v10, v1

    fill-array-data v1, :array_e

    new-array v1, v0, [F

    move-object v11, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [F

    move-object v12, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [F

    move-object v13, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [F

    move-object v14, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [F

    move-object v15, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [F

    move-object/from16 v16, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [F

    move-object/from16 v17, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [F

    move-object/from16 v18, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [F

    move-object/from16 v19, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [F

    move-object/from16 v20, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [F

    move-object/from16 v21, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [F

    move-object/from16 v22, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [F

    move-object/from16 v23, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [F

    move-object/from16 v24, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [F

    move-object/from16 v25, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [F

    move-object/from16 v26, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [F

    move-object/from16 v27, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [F

    move-object/from16 v28, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [F

    move-object/from16 v29, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [F

    move-object/from16 v30, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [F

    move-object/from16 v31, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [F

    move-object/from16 v32, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [F

    move-object/from16 v33, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [F

    move-object/from16 v34, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [F

    move-object/from16 v35, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [F

    move-object/from16 v36, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [F

    move-object/from16 v37, v1

    fill-array-data v1, :array_29

    new-array v0, v0, [F

    move-object/from16 v38, v0

    fill-array-data v0, :array_2a

    filled-new-array/range {v2 .. v38}, [[F

    move-result-object v0

    sput-object v0, Landroid/view/SemBlurInfo;->BLUR_PRESET:[[F

    new-instance v0, Landroid/view/SemBlurInfo$1;

    invoke-direct {v0}, Landroid/view/SemBlurInfo$1;-><init>()V

    sput-object v0, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x43160000    # 150.0f
        0x0
        0x40a00000    # 5.0f
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x43540000    # 212.0f
    .end array-data

    :array_1
    .array-data 4
        0x43960000    # 300.0f
        0x0
        0x41600000    # 14.0f
        0x0
        0x437f0000    # 255.0f
        0x4312999a    # 146.6f
        0x43720000    # 242.0f
    .end array-data

    :array_2
    .array-data 4
        0x43ae0000    # 348.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x42a20000    # 81.0f
        0x434f0000    # 207.0f
    .end array-data

    :array_3
    .array-data 4
        0x43160000    # 150.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x40000000    # 2.0f
        0x43180000    # 152.0f
    .end array-data

    :array_4
    .array-data 4
        0x43960000    # 300.0f
        0x0
        0x41600000    # 14.0f
        0x0
        0x437f0000    # 255.0f
        0x4019999a    # 2.4f
        0x42bc6666    # 94.2f
    .end array-data

    :array_5
    .array-data 4
        0x43ae0000    # 348.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x42240000    # 41.0f
        0x43270000    # 167.0f
    .end array-data

    :array_6
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        0x40a00000    # 5.0f
        0x0
        0x437a0000    # 250.0f
        0x418e6666    # 17.8f
        0x43774ccd    # 247.3f
    .end array-data

    :array_7
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        0x40a00000    # 5.0f
        0x0
        0x437a0000    # 250.0f
        0x4289999a    # 68.8f
        0x43776666    # 247.4f
    .end array-data

    :array_8
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        0x40a00000    # 5.0f
        0x0
        0x437a0000    # 250.0f
        0x42ed3333    # 118.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_9
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        0x40a00000    # 5.0f
        0x0
        0x437a0000    # 250.0f
        0x4329999a    # 169.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_a
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        0x40a00000    # 5.0f
        0x0
        0x437a0000    # 250.0f
        0x4350199a    # 208.1f
        0x43764ccd    # 246.3f
    .end array-data

    :array_b
    .array-data 4
        0x43960000    # 300.0f
        0x3e99999a    # 0.3f
        0x41400000    # 12.0f
        0x40a00000    # 5.0f
        0x436b0000    # 235.0f
        0x418e6666    # 17.8f
        0x43774ccd    # 247.3f
    .end array-data

    :array_c
    .array-data 4
        0x43960000    # 300.0f
        0x3e99999a    # 0.3f
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4289999a    # 68.8f
        0x43776666    # 247.4f
    .end array-data

    :array_d
    .array-data 4
        0x43960000    # 300.0f
        0x3eb33333    # 0.35f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x42ed3333    # 118.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_e
    .array-data 4
        0x43960000    # 300.0f
        0x3ecccccd    # 0.4f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4329999a    # 169.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_f
    .array-data 4
        0x43960000    # 300.0f
        0x3f000000    # 0.5f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4350199a    # 208.1f
        0x43764ccd    # 246.3f
    .end array-data

    :array_10
    .array-data 4
        0x43960000    # 300.0f
        0x3ecccccd    # 0.4f
        0x41a00000    # 20.0f
        0x40a00000    # 5.0f
        0x436b0000    # 235.0f
        0x418e6666    # 17.8f
        0x43774ccd    # 247.3f
    .end array-data

    :array_11
    .array-data 4
        0x43960000    # 300.0f
        0x3ee66666    # 0.45f
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4289999a    # 68.8f
        0x43776666    # 247.4f
    .end array-data

    :array_12
    .array-data 4
        0x43960000    # 300.0f
        0x3f000000    # 0.5f
        0x41b80000    # 23.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x42ed3333    # 118.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_13
    .array-data 4
        0x43960000    # 300.0f
        0x3f266666    # 0.65f
        0x41c80000    # 25.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4329999a    # 169.6f
        0x4376199a    # 246.1f
    .end array-data

    :array_14
    .array-data 4
        0x43960000    # 300.0f
        0x3f400000    # 0.75f
        0x41c80000    # 25.0f
        0x41700000    # 15.0f
        0x436b0000    # 235.0f
        0x4350199a    # 208.1f
        0x43764ccd    # 246.3f
    .end array-data

    :array_15
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x4154cccd    # 13.3f
        0x436b199a    # 235.1f
    .end array-data

    :array_16
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x41600000    # 14.0f
        0x434d4ccd    # 205.3f
    .end array-data

    :array_17
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x41566666    # 13.4f
        0x4333199a    # 179.1f
    .end array-data

    :array_18
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        -0x3e600000    # -20.0f
        0x0
        0x437f0000    # 255.0f
        0x41580000    # 13.5f
        0x43056666    # 133.4f
    .end array-data

    :array_19
    .array-data 4
        0x43960000    # 300.0f
        0x3dcccccd    # 0.1f
        -0x3e600000    # -20.0f
        0x0
        0x437f0000    # 255.0f
        0x4164cccd    # 14.3f
        0x42b5999a    # 90.8f
    .end array-data

    :array_1a
    .array-data 4
        0x43960000    # 300.0f
        0x3eb33333    # 0.35f
        -0x3f600000    # -5.0f
        0x0
        0x437f0000    # 255.0f
        0x4154cccd    # 13.3f
        0x436b199a    # 235.1f
    .end array-data

    :array_1b
    .array-data 4
        0x43960000    # 300.0f
        0x3ecccccd    # 0.4f
        -0x3ee00000    # -10.0f
        0x0
        0x437f0000    # 255.0f
        0x41600000    # 14.0f
        0x434d4ccd    # 205.3f
    .end array-data

    :array_1c
    .array-data 4
        0x43960000    # 300.0f
        0x3ee66666    # 0.45f
        -0x3ee00000    # -10.0f
        0x0
        0x437f0000    # 255.0f
        0x41566666    # 13.4f
        0x4333199a    # 179.1f
    .end array-data

    :array_1d
    .array-data 4
        0x43960000    # 300.0f
        0x3f000000    # 0.5f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x41580000    # 13.5f
        0x43056666    # 133.4f
    .end array-data

    :array_1e
    .array-data 4
        0x43960000    # 300.0f
        0x3f0ccccd    # 0.55f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x4164cccd    # 14.3f
        0x42b5999a    # 90.8f
    .end array-data

    :array_1f
    .array-data 4
        0x43960000    # 300.0f
        0x3ee66666    # 0.45f
        -0x3f600000    # -5.0f
        0x0
        0x437f0000    # 255.0f
        0x4154cccd    # 13.3f
        0x436b199a    # 235.1f
    .end array-data

    :array_20
    .array-data 4
        0x43960000    # 300.0f
        0x3f000000    # 0.5f
        -0x3ee00000    # -10.0f
        0x0
        0x437f0000    # 255.0f
        0x41600000    # 14.0f
        0x434d4ccd    # 205.3f
    .end array-data

    :array_21
    .array-data 4
        0x43960000    # 300.0f
        0x3f19999a    # 0.6f
        -0x3ee00000    # -10.0f
        0x0
        0x437f0000    # 255.0f
        0x41566666    # 13.4f
        0x4333199a    # 179.1f
    .end array-data

    :array_22
    .array-data 4
        0x43960000    # 300.0f
        0x3f266666    # 0.65f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x41580000    # 13.5f
        0x43056666    # 133.4f
    .end array-data

    :array_23
    .array-data 4
        0x43960000    # 300.0f
        0x3f333333    # 0.7f
        -0x3e900000    # -15.0f
        0x0
        0x437f0000    # 255.0f
        0x4164cccd    # 14.3f
        0x42b5999a    # 90.8f
    .end array-data

    :array_24
    .array-data 4
        0x42dc0000    # 110.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4220cccd    # 40.2f
        0x434de666    # 205.9f
    .end array-data

    :array_25
    .array-data 4
        0x437a0000    # 250.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4220cccd    # 40.2f
        0x434de666    # 205.9f
    .end array-data

    :array_26
    .array-data 4
        0x43c80000    # 400.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4220cccd    # 40.2f
        0x434de666    # 205.9f
    .end array-data

    :array_27
    .array-data 4
        0x42dc0000    # 110.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4209999a    # 34.4f
        0x432eb333    # 174.7f
    .end array-data

    :array_28
    .array-data 4
        0x437a0000    # 250.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4209999a    # 34.4f
        0x432eb333    # 174.7f
    .end array-data

    :array_29
    .array-data 4
        0x43c80000    # 400.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x4209999a    # 34.4f
        0x432eb333    # 174.7f
    .end array-data

    :array_2a
    .array-data 4
        0x43c80000    # 400.0f
        0x3e800000    # 0.25f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x437f0000    # 255.0f
        0x41600000    # 14.0f
        0x4300cccd    # 128.8f
    .end array-data
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Bitmap;IIFFFFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    iput-object p2, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    :goto_0
    iput p3, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    iput p4, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    iput p5, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    iput p6, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    iput p7, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    iput p8, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    iput p9, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Bitmap;IIFFFFILandroid/view/SemBlurInfo$ColorCurve;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/view/SemBlurInfo;-><init>(ILandroid/graphics/Bitmap;IIFFFFI)V

    iput-object p10, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    iget-boolean v1, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundBlurColor()I
    .locals 2

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getBackgroundBlurColor, because of blurMode is not BLUR_MODE_WINDOW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBackgroundBlurCornerRadius([F)V
    .locals 2

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    aput v1, p1, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outRadius must be an array of four integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getBackgroundBlurCornerRadius, because of blurMode is not BLUR_MODE_WINDOW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBlurMode()I
    .locals 1

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    return v0
.end method

.method public blacklist getBlurRadius()I
    .locals 1

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    return v0
.end method

.method public blacklist getCanvasDownScale()I
    .locals 2

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getCanvasDownScale, because of blurMode is not BLUR_MODE_CANVAS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getCapturedBitmap, because of blurMode is not BLUR_MODE_WINDOW_CAPTURED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .locals 1

    iget-object v0, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    const-string v1, ", mColorCurve = "

    const-string/jumbo v2, "}"

    const-string v3, " {"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BLUR_MODE_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BLUR_MODE_CANVAS, mBlurRadius = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCanvasDownScale = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BLUR_MODE_WINDOW_CAPTURED, mBlurRadius = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCapturedBitmap = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BLUR_MODE_WINDOW, mBlurRadius = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mBackgroundBlurColor = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCornerRadiusTL = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCornerRadiusTR = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCornerRadiusBL = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mCornerRadiusBR = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
