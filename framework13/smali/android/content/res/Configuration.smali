.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_MASK:I = 0xc

.field public static final whitelist COLOR_MODE_HDR_NO:I = 0x4

.field public static final whitelist COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final whitelist COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_YES:I = 0x8

.field public static final whitelist COLOR_MODE_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DENSITY_DPI_ANY:I = 0xfffe

.field public static final greylist-max-o DENSITY_DPI_NONE:I = 0xffff

.field public static final whitelist DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final blacklist DESKTOP_MODE_UNDEFINED:I = -0x1

.field public static final blacklist DEX_COMPAT_DISABLED:I = 0x1

.field public static final blacklist DEX_COMPAT_ENABLED:I = 0x2

.field public static final blacklist DEX_COMPAT_UI_CUSTOM:I = 0x2

.field public static final blacklist DEX_COMPAT_UI_DEFAULT:I = 0x1

.field public static final blacklist DEX_COMPAT_UI_FULLSCREEN:I = 0x3

.field public static final blacklist DEX_COMPAT_UI_UNDEFINED:I = 0x0

.field public static final blacklist DEX_COMPAT_UNDEFINED:I = 0x0

.field public static final blacklist DEX_MODE_DUAL:I = 0x2

.field public static final blacklist DEX_MODE_NONE:I = 0x0

.field public static final blacklist DEX_MODE_STANDALONE:I = 0x1

.field public static final blacklist DEX_MODE_UNDEFINED:I = -0x1

.field public static final blacklist DISPLAY_DEVICE_TYPE_HDMI:I = 0x1

.field public static final blacklist DISPLAY_DEVICE_TYPE_UNDEFINED:I = -0x1

.field public static final greylist-max-o EMPTY:Landroid/content/res/Configuration;

.field public static final whitelist FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final whitelist HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist KEYBOARDHIDDEN_NO:I = 0x1

.field public static final greylist-max-o KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final whitelist KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist KEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist KEYBOARD_12KEY:I = 0x3

.field public static final whitelist KEYBOARD_NOKEYS:I = 0x1

.field public static final whitelist KEYBOARD_QWERTY:I = 0x2

.field public static final whitelist KEYBOARD_UNDEFINED:I = 0x0

.field public static final whitelist MNC_ZERO:I = 0xffff

.field public static final blacklist MOBILEKEYBOARD_COVERED_UNDEFINED:I = -0x1

.field public static final blacklist NATIVE_CONFIG_BOLD_TEXT:I = 0x40000

.field public static final greylist-max-o NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final greylist-max-o NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final blacklist NATIVE_CONFIG_FLIPFONT:I = 0x8000

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final greylist-max-o NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final greylist-max-o NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final greylist-max-o NATIVE_CONFIG_MCC:I = 0x1

.field public static final greylist-max-o NATIVE_CONFIG_MNC:I = 0x2

.field public static final greylist-max-o NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final blacklist NATIVE_CONFIG_NIGHT_DIM:I = 0x100000

.field public static final greylist-max-o NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final blacklist NATIVE_CONFIG_SHOW_BUTTON_SHAPE:I = 0x80000

.field public static final greylist-max-o NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final blacklist NATIVE_CONFIG_THEMESEQ:I = 0x20000

.field public static final greylist-max-o NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final greylist-max-o NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final greylist-max-o NATIVE_CONFIG_VERSION:I = 0x400

.field public static final whitelist NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final whitelist NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final whitelist NAVIGATION_DPAD:I = 0x2

.field public static final whitelist NAVIGATION_NONAV:I = 0x1

.field public static final whitelist NAVIGATION_TRACKBALL:I = 0x3

.field public static final whitelist NAVIGATION_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATION_WHEEL:I = 0x4

.field public static final whitelist ORIENTATION_LANDSCAPE:I = 0x2

.field public static final whitelist ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field public static final greylist-max-o SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final whitelist SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final whitelist SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final whitelist SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final whitelist SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final greylist-max-o SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final whitelist SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final whitelist SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final whitelist SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final whitelist SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final whitelist SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final whitelist SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final whitelist SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final blacklist SEM_BOLD_FONT_DISABLED:I = 0x0

.field public static final blacklist SEM_BOLD_FONT_ENABLED:I = 0x1

.field public static final blacklist SEM_BOLD_FONT_UNDEFINED:I = -0x1

.field public static final whitelist SEM_BUTTON_SHAPE_DISABLED:I = 0x0

.field public static final whitelist SEM_BUTTON_SHAPE_ENABLED:I = 0x1

.field public static final blacklist SEM_BUTTON_SHAPE_UNDEFINED:I = -0x1

.field public static final whitelist SEM_DESKTOP_MODE_DISABLED:I = 0x0

.field public static final whitelist SEM_DESKTOP_MODE_ENABLED:I = 0x1

.field public static final whitelist SEM_DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static final whitelist SEM_DISPLAY_DEVICE_TYPE_SUB:I = 0x5

.field public static final whitelist SEM_MOBILE_KEYBOARD_COVERED_NO:I = 0x0

.field public static final whitelist SEM_MOBILE_KEYBOARD_COVERED_YES:I = 0x1

.field public static final blacklist SHOWBUTTONBACKGROUND_UNDEFINED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Configuration"

.field public static final whitelist TOUCHSCREEN_FINGER:I = 0x3

.field public static final whitelist TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final whitelist TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_MASK:I = 0x30

.field public static final whitelist UI_MODE_NIGHT_NO:I = 0x10

.field public static final whitelist UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_YES:I = 0x20

.field public static final whitelist UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final whitelist UI_MODE_TYPE_CAR:I = 0x3

.field public static final whitelist UI_MODE_TYPE_DESK:I = 0x2

.field public static final whitelist UI_MODE_TYPE_MASK:I = 0xf

.field public static final whitelist UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final whitelist UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final whitelist UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final whitelist UI_MODE_TYPE_WATCH:I = 0x6

.field private static final greylist-max-o XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final greylist-max-o XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final greylist-max-o XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final greylist-max-o XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final blacklist XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final greylist-max-o XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final greylist-max-o XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final greylist-max-o XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final greylist-max-o XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final greylist-max-o XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final greylist-max-o XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final greylist-max-o XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final greylist-max-o XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final greylist-max-o XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final greylist-max-o XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final greylist-max-o XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final greylist-max-o XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final greylist-max-o XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final greylist-max-o XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final greylist-max-o XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final greylist-max-o XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public blacklist FlipFont:I

.field public greylist-max-r assetsSeq:I

.field public blacklist boldFont:I

.field public whitelist colorMode:I

.field public greylist-max-o compatScreenHeightDp:I

.field public greylist-max-o compatScreenWidthDp:I

.field public greylist-max-o compatSmallestScreenWidthDp:I

.field public whitelist densityDpi:I

.field public blacklist dexCompatEnabled:I

.field public blacklist dexCompatUiMode:I

.field public blacklist dexMode:I

.field public whitelist fontScale:F

.field public whitelist fontWeightAdjustment:I

.field public whitelist hardKeyboardHidden:I

.field public whitelist keyboard:I

.field public whitelist keyboardHidden:I

.field public whitelist locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mLocaleList:Landroid/os/LocaleList;

.field public whitelist mcc:I

.field public whitelist mnc:I

.field public whitelist navigation:I

.field public whitelist navigationHidden:I

.field public blacklist nightDim:I

.field public whitelist orientation:I

.field public blacklist rilSetLocale:Z

.field public whitelist screenHeightDp:I

.field public whitelist screenLayout:I

.field public whitelist screenWidthDp:I

.field public whitelist semButtonShapeEnabled:I

.field public whitelist semDesktopModeEnabled:I

.field public whitelist semDisplayDeviceType:I

.field public whitelist semMobileKeyboardCovered:I

.field public greylist seq:I

.field public blacklist showButtonBackground:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist smallestScreenWidthDp:I

.field public blacklist themeSeq:I

.field public whitelist touchscreen:I

.field public whitelist uiMode:I

.field public greylist userSetLocale:Z

.field public final blacklist windowConfiguration:Landroid/app/WindowConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2747
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 984
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1020
    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1063
    iput v1, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1091
    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1108
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1120
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1286
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 1287
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 984
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1020
    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1063
    iput v1, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1091
    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1108
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1120
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1293
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1294
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 984
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 1020
    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1063
    iput v1, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1091
    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1108
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1120
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2762
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2763
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o configurationDiffToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "diff"    # I

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 462
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 465
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 468
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 471
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 474
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 477
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 480
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 483
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_8
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_9

    .line 486
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_9
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    .line 489
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_a
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b

    .line 492
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_b
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_c

    .line 495
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_c
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    .line 498
    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_d
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    .line 501
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_e
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 504
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_f
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    .line 507
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_10
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 510
    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_11
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    .line 513
    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_14

    .line 517
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v4, v3, -0x1

    if-eq v2, v4, :cond_13

    .line 519
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_14
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o fixUpLocaleList()V
    .locals 4

    .line 1299
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1300
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1301
    :cond_1
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1303
    :cond_3
    return-void
.end method

.method public static whitelist generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 4
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .line 3455
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 3456
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 3457
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 3460
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 3461
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3464
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 3465
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 3468
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 3469
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 3470
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3471
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3472
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3475
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_4

    .line 3476
    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 3479
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5

    .line 3480
    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 3483
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_6

    .line 3484
    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3487
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_7

    .line 3488
    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 3491
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_8

    .line 3492
    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3495
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_9

    .line 3496
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3499
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_a

    .line 3501
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3504
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_b

    .line 3506
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3509
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_c

    .line 3511
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3514
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eq v1, v3, :cond_d

    .line 3516
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3519
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0x3

    if-eq v1, v3, :cond_e

    .line 3521
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 3524
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0xc

    if-eq v1, v3, :cond_f

    .line 3526
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 3529
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_10

    .line 3530
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3533
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_11

    .line 3534
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3537
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_12

    .line 3538
    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3541
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_13

    .line 3542
    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3545
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_14

    .line 3546
    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3549
    :cond_14
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_15

    .line 3550
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3553
    :cond_15
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_16

    .line 3554
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 3557
    :cond_16
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3558
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 3561
    :cond_17
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_18

    .line 3562
    iput v2, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3565
    :cond_18
    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v1, v2, :cond_19

    .line 3566
    iput v2, v0, Landroid/content/res/Configuration;->boldFont:I

    .line 3571
    :cond_19
    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v1, v2, :cond_1a

    .line 3572
    iput v2, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 3577
    :cond_1a
    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v1, v2, :cond_1b

    .line 3578
    iput v2, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 3580
    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v2, :cond_1c

    .line 3581
    iput v2, v0, Landroid/content/res/Configuration;->dexMode:I

    .line 3585
    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v1, v2, :cond_1d

    .line 3586
    iput v2, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 3588
    :cond_1d
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v1, v2, :cond_1e

    .line 3589
    iput v2, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 3601
    :cond_1e
    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v1, v2, :cond_1f

    .line 3602
    iput v2, v0, Landroid/content/res/Configuration;->themeSeq:I

    .line 3609
    :cond_1f
    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v1, v2, :cond_20

    .line 3610
    iput v2, v0, Landroid/content/res/Configuration;->nightDim:I

    .line 3615
    :cond_20
    return-object v0
.end method

.method private static greylist-max-o getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    .line 3071
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static blacklist getUiModeTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uiModeType"    # I

    .line 3425
    packed-switch p0, :pswitch_data_0

    .line 3439
    const/4 v0, 0x0

    return-object v0

    .line 3437
    :pswitch_0
    const-string/jumbo v0, "vrheadset"

    return-object v0

    .line 3435
    :pswitch_1
    const-string/jumbo v0, "watch"

    return-object v0

    .line 3427
    :pswitch_2
    const-string v0, "appliance"

    return-object v0

    .line 3431
    :pswitch_3
    const-string/jumbo v0, "television"

    return-object v0

    .line 3433
    :pswitch_4
    const-string v0, "car"

    return-object v0

    .line 3429
    :pswitch_5
    const-string v0, "desk"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final greylist hidden_SEM_DESKTOP_MODE_ENABLED()I
    .locals 1

    .line 3798
    const/4 v0, 0x1

    return v0
.end method

.method private greylist hidden_semDesktopModeEnabled()I
    .locals 1

    .line 3790
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    return v0
.end method

.method public static greylist-max-o localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 9
    .param p0, "locs"    # Landroid/os/LocaleList;

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3114
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 3115
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 3116
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 3117
    .local v3, "l":I
    if-nez v3, :cond_0

    .line 3118
    goto/16 :goto_1

    .line 3120
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 3121
    .local v4, "s":I
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 3122
    .local v5, "c":I
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 3125
    .local v6, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 3126
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    :cond_1
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_3

    :cond_2
    if-nez v6, :cond_3

    .line 3130
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    if-ne v5, v7, :cond_6

    .line 3132
    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3135
    :cond_3
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    const-string v7, "+"

    if-eqz v4, :cond_4

    .line 3138
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    :cond_4
    if-eqz v5, :cond_5

    .line 3142
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    :cond_5
    if-eqz v6, :cond_6

    .line 3146
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "l":I
    .end local v4    # "s":I
    .end local v5    # "c":I
    .end local v6    # "v":I
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3151
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist needNewResources(II)Z
    .locals 2
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .line 2531
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    const/high16 v1, 0x1000000

    or-int p1, v0, v1

    .line 2537
    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    .line 2539
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist needToUpdateOverlays(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .line 3705
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3650
    nop

    .line 3651
    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 3650
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3652
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 3653
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 3655
    const-string v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3656
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3657
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3659
    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 3661
    const-string v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 3663
    const-string v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3665
    nop

    .line 3666
    const-string v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3668
    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 3670
    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3672
    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3674
    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3676
    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 3678
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3679
    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3681
    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3683
    nop

    .line 3684
    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3686
    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3688
    const-string v1, "fontWeightAdjustment"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3693
    return-void
.end method

.method public static greylist-max-o reduceScreenLayout(III)I
    .locals 5
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .line 402
    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 406
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x0

    .line 407
    .local v1, "screenLayoutLong":Z
    const/4 v2, 0x0

    .local v2, "screenLayoutCompatNeeded":Z
    goto :goto_3

    .line 410
    .end local v0    # "screenLayoutSize":I
    .end local v1    # "screenLayoutLong":Z
    .end local v2    # "screenLayoutCompatNeeded":Z
    :cond_0
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_1

    .line 413
    const/4 v0, 0x4

    .restart local v0    # "screenLayoutSize":I
    goto :goto_0

    .line 414
    .end local v0    # "screenLayoutSize":I
    :cond_1
    const/16 v0, 0x280

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_2

    .line 417
    const/4 v0, 0x3

    .restart local v0    # "screenLayoutSize":I
    goto :goto_0

    .line 419
    .end local v0    # "screenLayoutSize":I
    :cond_2
    const/4 v0, 0x2

    .line 425
    .restart local v0    # "screenLayoutSize":I
    :goto_0
    const/16 v1, 0x141

    if-gt p2, v1, :cond_4

    const/16 v1, 0x23a

    if-le p1, v1, :cond_3

    goto :goto_1

    .line 428
    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .local v1, "screenLayoutCompatNeeded":Z
    goto :goto_2

    .line 426
    .end local v1    # "screenLayoutCompatNeeded":Z
    :cond_4
    :goto_1
    const/4 v1, 0x1

    move v2, v1

    .line 432
    .restart local v2    # "screenLayoutCompatNeeded":Z
    :goto_2
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_5

    .line 434
    const/4 v1, 0x1

    .local v1, "screenLayoutLong":Z
    goto :goto_3

    .line 436
    .end local v1    # "screenLayoutLong":Z
    :cond_5
    const/4 v1, 0x0

    .line 442
    .restart local v1    # "screenLayoutLong":Z
    :goto_3
    if-nez v1, :cond_6

    .line 443
    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    .line 445
    :cond_6
    if-eqz v2, :cond_7

    .line 446
    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    .line 448
    :cond_7
    and-int/lit8 v3, p0, 0xf

    .line 449
    .local v3, "curSize":I
    if-ge v0, v3, :cond_8

    .line 450
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    .line 452
    :cond_8
    return p0
.end method

.method public static greylist-max-o resetScreenLayout(I)I
    .locals 1
    .param p0, "curLayout"    # I

    .line 387
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static greylist-max-r resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 3163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 6
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3175
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_0

    .line 3176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3177
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_0

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3183
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 3184
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3185
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 3194
    :sswitch_0
    const-string v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    goto :goto_0

    .line 3191
    :sswitch_1
    const-string v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3192
    nop

    .line 3200
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_2

    .line 3201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3204
    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_3

    .line 3205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3208
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_4

    .line 3209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3212
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3223
    :pswitch_0
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3224
    goto :goto_1

    .line 3220
    :pswitch_1
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3221
    goto :goto_1

    .line 3217
    :pswitch_2
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3218
    goto :goto_1

    .line 3214
    :pswitch_3
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
    nop

    .line 3229
    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    .line 3231
    :sswitch_2
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    goto :goto_2

    .line 3234
    :sswitch_3
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3235
    nop

    .line 3240
    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2

    goto :goto_3

    .line 3242
    :sswitch_4
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    goto :goto_3

    .line 3245
    :sswitch_5
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    nop

    .line 3251
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 3253
    :pswitch_4
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    goto :goto_4

    .line 3256
    :pswitch_5
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    nop

    .line 3262
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_3

    goto :goto_5

    .line 3264
    :sswitch_6
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3265
    goto :goto_5

    .line 3267
    :sswitch_7
    const-string v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    nop

    .line 3273
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 3275
    :pswitch_6
    const-string v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3276
    goto :goto_6

    .line 3278
    :pswitch_7
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3279
    nop

    .line 3284
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 3285
    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 3286
    .local v1, "uiModeTypeString":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 3287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3290
    :cond_5
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_4

    goto :goto_7

    .line 3292
    :sswitch_8
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    goto :goto_7

    .line 3295
    :sswitch_9
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    nop

    .line 3301
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_5

    .line 3332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3329
    :sswitch_a
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3330
    goto :goto_8

    .line 3326
    :sswitch_b
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    goto :goto_8

    .line 3323
    :sswitch_c
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3324
    goto :goto_8

    .line 3320
    :sswitch_d
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3321
    goto :goto_8

    .line 3317
    :sswitch_e
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3318
    goto :goto_8

    .line 3314
    :sswitch_f
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3315
    goto :goto_8

    .line 3311
    :sswitch_10
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3312
    goto :goto_8

    .line 3308
    :sswitch_11
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3309
    goto :goto_8

    .line 3305
    :sswitch_12
    const-string v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3306
    goto :goto_8

    .line 3303
    :sswitch_13
    nop

    .line 3336
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    :pswitch_8
    goto :goto_9

    .line 3341
    :pswitch_9
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    goto :goto_9

    .line 3338
    :pswitch_a
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3339
    nop

    .line 3347
    :goto_9
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_4

    goto :goto_a

    .line 3355
    :pswitch_b
    const-string v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3356
    goto :goto_a

    .line 3352
    :pswitch_c
    const-string v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3353
    goto :goto_a

    .line 3349
    :pswitch_d
    const-string v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    nop

    .line 3361
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_5

    goto :goto_b

    .line 3369
    :pswitch_e
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3370
    goto :goto_b

    .line 3366
    :pswitch_f
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3367
    goto :goto_b

    .line 3363
    :pswitch_10
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3364
    nop

    .line 3375
    :goto_b
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_6

    goto :goto_c

    .line 3380
    :pswitch_11
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    goto :goto_c

    .line 3377
    :pswitch_12
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3378
    nop

    .line 3386
    :goto_c
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    goto :goto_d

    .line 3397
    :pswitch_13
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3398
    goto :goto_d

    .line 3394
    :pswitch_14
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    goto :goto_d

    .line 3391
    :pswitch_15
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3392
    goto :goto_d

    .line 3388
    :pswitch_16
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    nop

    .line 3403
    :goto_d
    if-eqz p1, :cond_7

    .line 3405
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_6

    .line 3406
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3407
    .local v2, "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "height":I
    goto :goto_e

    .line 3410
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_6
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3412
    .restart local v2    # "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3414
    .restart local v3    # "height":I
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3417
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_13
        0x78 -> :sswitch_12
        0xa0 -> :sswitch_11
        0xd5 -> :sswitch_10
        0xf0 -> :sswitch_f
        0x140 -> :sswitch_e
        0x1e0 -> :sswitch_d
        0x280 -> :sswitch_c
        0xfffe -> :sswitch_b
        0xffff -> :sswitch_a
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public static greylist-max-o uiModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uiMode"    # I

    .line 1870
    packed-switch p0, :pswitch_data_0

    .line 1888
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1886
    :pswitch_0
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    .line 1884
    :pswitch_1
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    .line 1882
    :pswitch_2
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    .line 1880
    :pswitch_3
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    .line 1878
    :pswitch_4
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    .line 1876
    :pswitch_5
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    .line 1874
    :pswitch_6
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    .line 1872
    :pswitch_7
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

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
.end method

.method private blacklist updateFromScreenConfiguration(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 3738
    const/4 v0, 0x0

    .line 3739
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    .line 3740
    .local v1, "screenLayoutNoDir":I
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    .line 3742
    .local v2, "deltaScreenLayoutNoDir":I
    if-eqz v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 3744
    or-int/lit16 v0, v0, 0x100

    .line 3746
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3749
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_1

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_1

    .line 3750
    or-int/lit16 v0, v0, 0x80

    .line 3751
    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 3754
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_2

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v3, :cond_2

    .line 3756
    or-int/lit16 v0, v0, 0x400

    .line 3757
    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3760
    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_3

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v3, :cond_3

    .line 3762
    or-int/lit16 v0, v0, 0x400

    .line 3763
    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3766
    :cond_3
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_4

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v3, :cond_4

    .line 3768
    or-int/lit16 v0, v0, 0x800

    .line 3769
    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3771
    :cond_4
    return v0
.end method


# virtual methods
.method public greylist-max-o clearLocales()V
    .locals 1

    .line 3036
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3037
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3038
    return-void
.end method

.method public whitelist compareTo(Landroid/content/res/Configuration;)I
    .locals 11
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2776
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2777
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2778
    .local v1, "b":F
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    return v3

    .line 2779
    :cond_0
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    return v4

    .line 2780
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    .line 2781
    .local v2, "n":I
    if-eqz v2, :cond_2

    return v2

    .line 2782
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    .line 2783
    .end local v2    # "n":I
    .local v5, "n":I
    if-eqz v5, :cond_3

    return v5

    .line 2785
    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2786
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2789
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2790
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    return v4

    .line 2791
    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2792
    return v3

    .line 2794
    :cond_5
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2795
    .local v2, "minSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_c

    .line 2796
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 2797
    .local v7, "thisLocale":Ljava/util/Locale;
    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 2799
    .local v8, "thatLocale":Ljava/util/Locale;
    if-eqz v7, :cond_a

    if-nez v8, :cond_6

    goto :goto_1

    .line 2805
    :cond_6
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2806
    if-eqz v5, :cond_7

    return v5

    .line 2807
    :cond_7
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2808
    if-eqz v5, :cond_8

    return v5

    .line 2809
    :cond_8
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2810
    if-eqz v5, :cond_9

    return v5

    .line 2811
    :cond_9
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2812
    if-eqz v5, :cond_b

    return v5

    .line 2800
    :cond_a
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "this.mLocaleList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", that.mLocaleList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", minSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Configuration"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    nop

    .line 2795
    .end local v7    # "thisLocale":Ljava/util/Locale;
    .end local v8    # "thatLocale":Ljava/util/Locale;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2814
    .end local v6    # "i":I
    :cond_c
    iget-object v6, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    sub-int v5, v6, v7

    .line 2815
    if-eqz v5, :cond_d

    return v5

    .line 2818
    .end local v2    # "minSize":I
    :cond_d
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v2, v6

    .line 2819
    .end local v5    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_e

    return v2

    .line 2820
    :cond_e
    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v5, v6

    .line 2821
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_f

    return v5

    .line 2822
    :cond_f
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v2, v6

    .line 2823
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_10

    return v2

    .line 2824
    :cond_10
    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v5, v6

    .line 2825
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_11

    return v5

    .line 2826
    :cond_11
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v2, v6

    .line 2827
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_12

    return v2

    .line 2828
    :cond_12
    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v5, v6

    .line 2829
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_13

    return v5

    .line 2830
    :cond_13
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v2, v6

    .line 2831
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_14

    return v2

    .line 2832
    :cond_14
    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v6, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v5, v6

    .line 2833
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_15

    return v5

    .line 2834
    :cond_15
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v2, v6

    .line 2835
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_16

    return v2

    .line 2836
    :cond_16
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v5, v6

    .line 2837
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_17

    return v5

    .line 2838
    :cond_17
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v2, v6

    .line 2839
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_18

    return v2

    .line 2840
    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v5, v6

    .line 2841
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_19

    return v5

    .line 2842
    :cond_19
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v2, v6

    .line 2843
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_1a

    return v2

    .line 2844
    :cond_1a
    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v5, v6

    .line 2845
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_1b

    return v5

    .line 2846
    :cond_1b
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v6, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v2, v6

    .line 2847
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_1c

    return v2

    .line 2848
    :cond_1c
    iget-object v5, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    .line 2849
    if-eqz v2, :cond_1d

    return v2

    .line 2850
    :cond_1d
    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v6, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v5, v6

    .line 2851
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_1e

    return v5

    .line 2853
    :cond_1e
    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v0, v2

    .line 2854
    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v1, v2

    .line 2855
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1f

    return v3

    .line 2856
    :cond_1f
    cmpl-float v2, v0, v1

    if-lez v2, :cond_20

    return v4

    .line 2860
    :cond_20
    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v0, v2

    .line 2861
    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v1, v2

    .line 2862
    cmpg-float v2, v0, v1

    if-gez v2, :cond_21

    return v3

    .line 2863
    :cond_21
    cmpl-float v2, v0, v1

    if-lez v2, :cond_22

    return v4

    .line 2867
    :cond_22
    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    sub-int/2addr v2, v6

    .line 2868
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_23

    return v2

    .line 2872
    :cond_23
    iget v5, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    sub-int/2addr v5, v6

    .line 2873
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_24

    return v5

    .line 2874
    :cond_24
    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexMode:I

    sub-int/2addr v2, v6

    .line 2875
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_25

    return v2

    .line 2878
    :cond_25
    iget v5, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    sub-int/2addr v5, v6

    .line 2879
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_26

    return v5

    .line 2880
    :cond_26
    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    sub-int/2addr v2, v6

    .line 2881
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_27

    return v2

    .line 2891
    :cond_27
    iget v5, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2892
    .local v5, "x":I
    iget v6, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 2893
    .local v6, "y":I
    if-ge v5, v6, :cond_28

    return v3

    .line 2894
    :cond_28
    if-le v5, v6, :cond_29

    return v4

    .line 2900
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_29
    iget v5, p0, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v0, v5

    .line 2901
    iget v5, p1, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v1, v5

    .line 2902
    cmpg-float v5, v0, v1

    if-gez v5, :cond_2a

    return v3

    .line 2903
    :cond_2a
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2b

    return v4

    .line 2908
    :cond_2b
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2586
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 2350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o diff(Landroid/content/res/Configuration;ZZ)I
    .locals 7
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "compareUndefined"    # Z
    .param p3, "publicOnly"    # Z

    .line 2371
    const/4 v0, 0x0

    .line 2372
    .local v0, "changed":I
    if-nez p2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 2373
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 2375
    :cond_1
    if-nez p2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_3

    .line 2376
    or-int/lit8 v0, v0, 0x1

    .line 2378
    :cond_3
    if-nez p2, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_5

    .line 2379
    or-int/lit8 v0, v0, 0x2

    .line 2381
    :cond_5
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2382
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2383
    if-nez p2, :cond_6

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2384
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2385
    or-int/lit8 v0, v0, 0x4

    .line 2386
    or-int/lit16 v0, v0, 0x2000

    .line 2388
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v1, 0xc0

    .line 2389
    .local v2, "deltaScreenLayoutDir":I
    if-nez p2, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v2, v3, :cond_9

    .line 2391
    or-int/lit16 v0, v0, 0x2000

    .line 2393
    :cond_9
    if-nez p2, :cond_a

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_b

    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_b

    .line 2395
    or-int/lit8 v0, v0, 0x8

    .line 2397
    :cond_b
    if-nez p2, :cond_c

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_d

    :cond_c
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_d

    .line 2399
    or-int/lit8 v0, v0, 0x10

    .line 2401
    :cond_d
    if-nez p2, :cond_e

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_f

    :cond_e
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_f

    .line 2403
    or-int/lit8 v0, v0, 0x20

    .line 2405
    :cond_f
    if-nez p2, :cond_10

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_11

    :cond_10
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_11

    .line 2407
    or-int/lit8 v0, v0, 0x20

    .line 2409
    :cond_11
    if-nez p2, :cond_12

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_13

    :cond_12
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_13

    .line 2411
    or-int/lit8 v0, v0, 0x40

    .line 2413
    :cond_13
    if-nez p2, :cond_14

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_15

    :cond_14
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_15

    .line 2415
    or-int/lit8 v0, v0, 0x20

    .line 2417
    :cond_15
    if-nez p2, :cond_16

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_17

    :cond_16
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_17

    .line 2419
    or-int/lit16 v0, v0, 0x80

    .line 2421
    :cond_17
    if-nez p2, :cond_18

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2423
    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2424
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v1, v3, :cond_19

    .line 2425
    or-int/lit16 v0, v0, 0x100

    .line 2427
    :cond_19
    if-nez p2, :cond_1a

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_1b

    :cond_1a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v1, v3, :cond_1b

    .line 2431
    or-int/lit16 v0, v0, 0x4000

    .line 2433
    :cond_1b
    if-nez p2, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1d

    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v1, v3, :cond_1d

    .line 2438
    or-int/lit16 v0, v0, 0x4000

    .line 2440
    :cond_1d
    if-nez p2, :cond_1e

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_1f

    :cond_1e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v3, :cond_1f

    .line 2442
    or-int/lit16 v0, v0, 0x200

    .line 2444
    :cond_1f
    if-nez p2, :cond_20

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_21

    :cond_20
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v3, :cond_21

    .line 2446
    or-int/lit16 v0, v0, 0x400

    .line 2448
    :cond_21
    if-nez p2, :cond_22

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_23

    :cond_22
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v3, :cond_23

    .line 2450
    or-int/lit16 v0, v0, 0x400

    .line 2452
    :cond_23
    if-nez p2, :cond_24

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_25

    :cond_24
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v3, :cond_25

    .line 2454
    or-int/lit16 v0, v0, 0x800

    .line 2456
    :cond_25
    if-nez p2, :cond_26

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_27

    :cond_26
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v3, :cond_27

    .line 2458
    or-int/lit16 v0, v0, 0x1000

    .line 2460
    :cond_27
    if-nez p2, :cond_28

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_29

    :cond_28
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v3, :cond_29

    .line 2462
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 2466
    :cond_29
    if-nez p3, :cond_2a

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2467
    invoke-virtual {v1, v3, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2a

    .line 2468
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 2471
    :cond_2a
    const/high16 v1, 0x10000000

    if-nez p2, :cond_2b

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2c

    :cond_2b
    iget v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v4, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v3, v4, :cond_2c

    .line 2473
    or-int/2addr v0, v1

    .line 2477
    :cond_2c
    iget v3, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    iget v5, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v5, v3, :cond_2d

    .line 2479
    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    .line 2484
    :cond_2d
    iget v3, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v3, :cond_2e

    iget v5, p0, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v5, v3, :cond_2e

    .line 2485
    or-int/2addr v0, v1

    .line 2490
    :cond_2e
    iget v1, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v1, v4, :cond_2f

    iget v3, p0, Landroid/content/res/Configuration;->boldFont:I

    if-eq v3, v1, :cond_2f

    .line 2491
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 2506
    :cond_2f
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v1, :cond_30

    iget v3, p0, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v3, v1, :cond_30

    .line 2507
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 2512
    :cond_30
    return v0
.end method

.method public greylist-max-o diffPublicOnly(Landroid/content/res/Configuration;)I
    .locals 2
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 2362
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1673
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1674
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 6
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "critical"    # Z

    .line 1686
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1687
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "persisted"    # Z
    .param p5, "critical"    # Z

    .line 1633
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1634
    .local v0, "token":J
    if-nez p5, :cond_2

    .line 1635
    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1636
    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1637
    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1638
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    .line 1639
    const-wide v3, 0x10900000014L

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1641
    :cond_0
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1642
    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1643
    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1644
    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1645
    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1646
    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1647
    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1648
    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1649
    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1650
    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1651
    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1653
    if-nez p4, :cond_1

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_1

    .line 1654
    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1656
    :cond_1
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1658
    :cond_2
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1659
    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1660
    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1661
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1662
    return-void
.end method

.method public whitelist equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2912
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2913
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 2914
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .line 2919
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2920
    :catch_0
    move-exception v0

    .line 2922
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .locals 2

    .line 3048
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 3049
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3048
    :goto_0
    return v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .locals 1

    .line 2993
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2994
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2926
    const/16 v0, 0x11

    .line 2927
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2928
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    .line 2929
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    .line 2930
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2931
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    .line 2932
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    .line 2933
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    .line 2934
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    .line 2935
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    .line 2936
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    .line 2937
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    .line 2938
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    .line 2939
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    .line 2940
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    .line 2941
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    .line 2942
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    .line 2943
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    .line 2944
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    .line 2945
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    .line 2946
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    .line 2948
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    add-int/2addr v1, v2

    .line 2951
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    add-int/2addr v0, v2

    .line 2954
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    add-int/2addr v1, v2

    .line 2958
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    add-int/2addr v0, v2

    .line 2959
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    add-int/2addr v1, v2

    .line 2963
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    add-int/2addr v0, v2

    .line 2964
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    add-int/2addr v1, v2

    .line 2973
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    add-int/2addr v0, v2

    .line 2979
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->nightDim:I

    add-int/2addr v1, v2

    .line 2983
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isDexMode()Z
    .locals 2

    .line 3780
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isLayoutSizeAtLeast(I)Z
    .locals 2
    .param p1, "size"    # I

    .line 537
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 538
    .local v0, "cur":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 539
    :cond_0
    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist isNightModeActive()Z
    .locals 2

    .line 2771
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 6
    .param p1, "other"    # Landroid/content/res/Configuration;

    .line 2548
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2550
    return v0

    .line 2552
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2555
    return v2

    .line 2557
    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_2

    .line 2560
    return v2

    .line 2562
    :cond_2
    sub-int/2addr v1, v3

    .line 2563
    .local v1, "diff":I
    const/high16 v3, 0x10000

    if-le v1, v3, :cond_3

    .line 2566
    return v0

    .line 2570
    :cond_3
    iget v4, p1, Landroid/content/res/Configuration;->themeSeq:I

    iget v5, p0, Landroid/content/res/Configuration;->themeSeq:I

    sub-int/2addr v4, v5

    .line 2571
    .local v4, "themeDiff":I
    if-le v4, v3, :cond_4

    .line 2574
    return v0

    .line 2576
    :cond_4
    if-gtz v1, :cond_5

    if-lez v4, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    return v0
.end method

.method public whitelist isScreenHdr()Z
    .locals 2

    .line 3105
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isScreenRound()Z
    .locals 2

    .line 3081
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isScreenWideColorGamut()Z
    .locals 2

    .line 3096
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1974
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1975
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2672
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2676
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2677
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2682
    .local v0, "localeSetFrom":I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2683
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 2689
    .end local v0    # "localeSetFrom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2694
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2695
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2707
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 2736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2745
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 26
    .param p1, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    const-string v9, ""

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 1699
    .local v10, "token":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1701
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v13, -0x1

    if-eq v0, v13, :cond_3

    .line 1702
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_0

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .local v20, "token":J
    goto/16 :goto_d

    .line 1821
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_0
    const-wide v13, 0x10d00000015L

    :try_start_2
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_d

    .line 1827
    :catchall_0
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_e

    .line 1814
    :pswitch_1
    move-wide v15, v10

    .end local v10    # "token":J
    .local v15, "token":J
    const-wide v10, 0x10900000014L

    :try_start_3
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1818
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "error parsing locale list in configuration."

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1819
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_d

    .line 1810
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_2
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v10, 0x10b00000013L

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1811
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1807
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_3
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000012L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1808
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1804
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_4
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000011L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1805
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1801
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_5
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000010L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1802
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1798
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_6
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1799
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1795
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_7
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000eL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1796
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1792
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_8
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000dL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1793
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1789
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_9
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000cL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1790
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1786
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_a
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000bL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1787
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1783
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_b
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000aL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1784
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1780
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_c
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000009L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1781
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1777
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_d
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000008L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1778
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1774
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_e
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000007L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1775
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1771
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_f
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000006L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1772
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1768
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_10
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000005L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1769
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_d

    .line 1827
    :catchall_1
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_e

    .line 1715
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_11
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x20b00000004L

    :try_start_5
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 1716
    .local v10, "localeToken":J
    move-object v0, v9

    .line 1717
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v17, v9

    .line 1718
    .local v17, "country":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 1719
    .local v18, "variant":Ljava/lang/String;
    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    .line 1721
    .end local v0    # "language":Ljava/lang/String;
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "variant":Ljava/lang/String;
    .local v20, "language":Ljava/lang/String;
    .local v21, "country":Ljava/lang/String;
    .local v22, "variant":Ljava/lang/String;
    .local v23, "script":Ljava/lang/String;
    :goto_1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_6
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v0, v13, :cond_0

    .line 1723
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_7
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    packed-switch v0, :pswitch_data_1

    move-object/from16 v18, v14

    goto/16 :goto_2

    .line 1735
    :pswitch_12
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_8
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .end local v23    # "script":Ljava/lang/String;
    .local v0, "script":Ljava/lang/String;
    goto :goto_2

    .line 1732
    .end local v0    # "script":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1733
    .end local v22    # "variant":Ljava/lang/String;
    .local v0, "variant":Ljava/lang/String;
    move-object/from16 v22, v0

    goto :goto_2

    .line 1729
    .end local v0    # "variant":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1730
    .end local v21    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    move-object/from16 v21, v0

    goto :goto_2

    .line 1725
    .end local v0    # "country":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    :pswitch_15
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1727
    .end local v20    # "language":Ljava/lang/String;
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v20, v0

    goto :goto_2

    .line 1743
    .end local v0    # "language":Ljava/lang/String;
    .restart local v20    # "language":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_8

    .line 1739
    :catch_1
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_7

    .line 1736
    :goto_2
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_1

    .line 1743
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_8

    .line 1739
    :catch_2
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_7

    .line 1743
    :cond_0
    move-object/from16 v18, v14

    :try_start_9
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1745
    :try_start_a
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_a
    .catch Ljava/util/IllformedLocaleException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 1746
    move-object/from16 v13, v20

    .end local v20    # "language":Ljava/lang/String;
    .local v13, "language":Ljava/lang/String;
    :try_start_b
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/IllformedLocaleException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1747
    move-object/from16 v14, v21

    .end local v21    # "country":Ljava/lang/String;
    .local v14, "country":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/IllformedLocaleException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1748
    move-object/from16 v19, v9

    move-object/from16 v9, v22

    .end local v22    # "variant":Ljava/lang/String;
    .local v9, "variant":Ljava/lang/String;
    :try_start_d
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/IllformedLocaleException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1749
    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :try_start_e
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1750
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1753
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    .line 1754
    .local v22, "inListIndex":I
    move/from16 v1, v22

    const/4 v2, -0x1

    .end local v22    # "inListIndex":I
    .local v1, "inListIndex":I
    if-eq v1, v2, :cond_1

    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_e
    .catch Ljava/util/IllformedLocaleException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v16, v5

    :try_start_f
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1756
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/util/IllformedLocaleException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1755
    move-object/from16 v5, v18

    :try_start_10
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1760
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1758
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "inListIndex":I
    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/util/IllformedLocaleException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1764
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :goto_3
    goto/16 :goto_6

    .line 1760
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    :goto_4
    move-object/from16 v5, v18

    goto :goto_5

    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v23    # "script":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .local v22, "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_5

    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .line 1761
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_5
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1765
    nop

    .line 1766
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto/16 :goto_d

    .line 1743
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    move-object v1, v0

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    goto :goto_8

    .line 1739
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    .line 1741
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_7
    nop

    .end local v9    # "variant":Ljava/lang/String;
    .end local v10    # "localeToken":J
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1743
    .end local v0    # "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v10    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .restart local v15    # "script":Ljava/lang/String;
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_8
    move-object/from16 v2, p1

    :try_start_13
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1745
    :try_start_14
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 1746
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1747
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1748
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1749
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1750
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1753
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_14
    .catch Ljava/util/IllformedLocaleException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move/from16 v19, v18

    .line 1754
    .local v19, "inListIndex":I
    move-wide/from16 v22, v10

    move/from16 v10, v19

    const/4 v11, -0x1

    .end local v19    # "inListIndex":I
    .local v10, "inListIndex":I
    .local v22, "localeToken":J
    if-eq v10, v11, :cond_2

    .line 1755
    :try_start_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1756
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1755
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1758
    :cond_2
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/util/IllformedLocaleException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 1764
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v10    # "inListIndex":I
    :goto_9
    goto :goto_b

    .line 1760
    :catch_b
    move-exception v0

    goto :goto_a

    .end local v22    # "localeToken":J
    .local v10, "localeToken":J
    :catch_c
    move-exception v0

    move-wide/from16 v22, v10

    .line 1761
    .end local v10    # "localeToken":J
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v22    # "localeToken":J
    :goto_a
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_b
    nop

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1827
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v22    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_6
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_c

    .end local v20    # "token":J
    .local v15, "token":J
    :catchall_7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v15

    .end local v15    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_e

    .line 1710
    .end local v20    # "token":J
    .local v10, "token":J
    :pswitch_16
    move-object v2, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v0, 0x10d00000003L

    move-object/from16 v2, p1

    :try_start_17
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object/from16 v1, p0

    :try_start_18
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1711
    goto :goto_d

    .line 1827
    :catchall_8
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c

    .line 1707
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_17
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1708
    goto :goto_d

    .line 1704
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_18
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 1705
    goto :goto_d

    .line 1827
    :catchall_9
    move-exception v0

    :goto_c
    move-wide/from16 v3, v20

    goto :goto_e

    .line 1822
    :goto_d
    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_0

    .line 1827
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :catchall_a
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    goto :goto_e

    .end local v20    # "token":J
    .restart local v10    # "token":J
    :cond_3
    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1829
    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1831
    :cond_4
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1832
    nop

    .line 1833
    return-void

    .line 1827
    .end local v3    # "token":J
    .restart local v10    # "token":J
    :catchall_b
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v3    # "token":J
    :goto_e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1829
    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1831
    :cond_5
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1832
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public whitelist semIsPopOver()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    return v0
.end method

.method public whitelist setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3065
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3066
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3068
    return-void
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3027
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 3028
    return-void
.end method

.method public whitelist setLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 3009
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3010
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3011
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3012
    return-void
.end method

.method public whitelist setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1311
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1312
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1313
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1314
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 1316
    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1321
    :cond_1
    :goto_0
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1322
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1323
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1324
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1325
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1326
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1327
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1328
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1329
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1330
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1331
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1332
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1333
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1334
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1335
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1336
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1337
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1338
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1339
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1340
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1341
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1342
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1343
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1344
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1348
    iget-boolean v0, p1, Landroid/content/res/Configuration;->rilSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 1353
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 1356
    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 1359
    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 1363
    iget v0, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1364
    iget v0, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1367
    iget v0, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1368
    iget v0, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1377
    iget v0, p1, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1383
    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 1386
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;II)V
    .locals 2
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "mask"    # I
    .param p3, "windowMask"    # I

    .line 2239
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 2240
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2242
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 2243
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2245
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 2246
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2248
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 2249
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2250
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2251
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2253
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2257
    :cond_3
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4

    .line 2258
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 2259
    .local v0, "deltaScreenLayoutDir":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2261
    .end local v0    # "deltaScreenLayoutDir":I
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 2262
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2264
    :cond_5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_6

    .line 2265
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2267
    :cond_6
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_7

    .line 2268
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2270
    :cond_7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 2271
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2272
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2273
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2275
    :cond_8
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_9

    .line 2276
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2278
    :cond_9
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_a

    .line 2279
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2281
    :cond_a
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_b

    .line 2283
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2285
    :cond_b
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_c

    .line 2286
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2288
    :cond_c
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_d

    .line 2289
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2291
    :cond_d
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_e

    .line 2292
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2293
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2295
    :cond_e
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_f

    .line 2296
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2298
    :cond_f
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_10

    .line 2299
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2301
    :cond_10
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_11

    .line 2302
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2304
    :cond_11
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_12

    .line 2305
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    .line 2307
    :cond_12
    const/high16 v0, 0x10000000

    and-int v1, p2, v0

    if-eqz v1, :cond_13

    .line 2308
    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2311
    :cond_13
    and-int/2addr v0, p2

    if-eqz v0, :cond_14

    .line 2312
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2316
    :cond_14
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_15

    .line 2317
    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2321
    :cond_15
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_16

    .line 2322
    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2335
    :cond_16
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_17

    .line 2336
    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2340
    :cond_17
    return-void
.end method

.method public whitelist setToDefaults()V
    .locals 2

    .line 1896
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1897
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1898
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1899
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1900
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1901
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1902
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1903
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1904
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1905
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1906
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1907
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1908
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1909
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1910
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1911
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1912
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1913
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1914
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1915
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1916
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1917
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 1918
    const v1, 0x7fffffff

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1922
    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    .line 1927
    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 1930
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 1933
    iput v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 1937
    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 1938
    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 1941
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 1942
    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1951
    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 1957
    iput v1, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 1960
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1390
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1392
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_0

    .line 1394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1397
    :cond_0
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_1

    .line 1400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1401
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1403
    :cond_1
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1406
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1410
    :cond_2
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 1413
    .local v2, "layoutDir":I
    sparse-switch v2, :sswitch_data_0

    .line 1417
    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1416
    :sswitch_0
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1415
    :sswitch_1
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1414
    :sswitch_2
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    :goto_3
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_3

    .line 1421
    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1423
    :cond_3
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :goto_4
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_4

    .line 1426
    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1428
    :cond_4
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :goto_5
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_5

    .line 1431
    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1433
    :cond_5
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    :goto_6
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_6

    .line 1436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1438
    :cond_6
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    .line 1446
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1445
    :pswitch_0
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1444
    :pswitch_1
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1443
    :pswitch_2
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1442
    :pswitch_3
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1441
    :pswitch_4
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_1

    .line 1453
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1452
    :sswitch_3
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1451
    :sswitch_4
    goto :goto_9

    .line 1450
    :sswitch_5
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :goto_9
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2

    .line 1460
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1459
    :sswitch_6
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1458
    :sswitch_7
    goto :goto_a

    .line 1457
    :sswitch_8
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_1

    .line 1467
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1466
    :pswitch_5
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1465
    :pswitch_6
    goto :goto_b

    .line 1464
    :pswitch_7
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2

    .line 1474
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1472
    :pswitch_8
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1473
    :pswitch_9
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1471
    :pswitch_a
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3

    .line 1485
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1484
    :pswitch_b
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1483
    :pswitch_c
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1482
    :pswitch_d
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1481
    :pswitch_e
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1480
    :pswitch_f
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1479
    :pswitch_10
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1478
    :pswitch_11
    goto :goto_d

    .line 1477
    :pswitch_12
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_3

    .line 1491
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1490
    :sswitch_9
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1489
    :sswitch_a
    goto :goto_e

    .line 1488
    :sswitch_b
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :goto_e
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_4

    .line 1498
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1497
    :pswitch_13
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1496
    :pswitch_14
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1495
    :pswitch_15
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1494
    :pswitch_16
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :goto_f
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_5

    .line 1505
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1504
    :pswitch_17
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1503
    :pswitch_18
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1502
    :pswitch_19
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1501
    :pswitch_1a
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    :goto_10
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/"

    const-string v4, "/h"

    const-string v5, "/v"

    const-string v6, "/?"

    packed-switch v1, :pswitch_data_6

    .line 1512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1511
    :pswitch_1b
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1510
    :pswitch_1c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1509
    :pswitch_1d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1508
    :pswitch_1e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :goto_11
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_7

    .line 1518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1517
    :pswitch_1f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1516
    :pswitch_20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1515
    :pswitch_21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :goto_12
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_8

    .line 1526
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1525
    :pswitch_22
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1524
    :pswitch_23
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1523
    :pswitch_24
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1522
    :pswitch_25
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1521
    :pswitch_26
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    :goto_13
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_9

    .line 1532
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1531
    :pswitch_27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1530
    :pswitch_28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1529
    :pswitch_29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    :goto_14
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1535
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_7

    .line 1536
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1538
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_8

    .line 1539
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1541
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_9

    .line 1542
    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1545
    :cond_9
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :goto_15
    const-string v1, " ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    iget v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1552
    const-string v1, " bf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1556
    const-string v1, " bts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1561
    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    packed-switch v1, :pswitch_data_a

    goto :goto_16

    .line 1564
    :pswitch_2a
    const-string v1, " desktop/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1563
    :pswitch_2b
    const-string v1, " desktop/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1562
    :pswitch_2c
    const-string v1, " desktop/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :goto_16
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    packed-switch v1, :pswitch_data_b

    goto :goto_17

    .line 1571
    :pswitch_2d
    const-string v1, " dm/dual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1570
    :pswitch_2e
    const-string v1, " dm/stand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1569
    :pswitch_2f
    const-string v1, " dm/n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1568
    :pswitch_30
    const-string v1, " dm/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    :goto_17
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    packed-switch v1, :pswitch_data_c

    goto :goto_18

    .line 1580
    :pswitch_31
    const-string v1, " dc/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1579
    :pswitch_32
    const-string v1, " dc/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 1578
    :pswitch_33
    const-string v1, " ?dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :goto_18
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    packed-switch v1, :pswitch_data_d

    goto :goto_19

    .line 1587
    :pswitch_34
    const-string v1, " dcui/f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 1586
    :pswitch_35
    const-string v1, " dcui/c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 1585
    :pswitch_36
    const-string v1, " dcui/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 1584
    :pswitch_37
    const-string v1, " ?dcui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    :goto_19
    const-string v1, " themeSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1611
    const-string v1, " nightDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1616
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_b
        0x10 -> :sswitch_a
        0x20 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_b
    .packed-switch -0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method public greylist-max-o unset()V
    .locals 1

    .line 1967
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1968
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1969
    return-void
.end method

.method public whitelist updateFrom(Landroid/content/res/Configuration;)I
    .locals 7
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1985
    const/4 v0, 0x0

    .line 1986
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 1987
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    .line 1988
    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1990
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v1, :cond_1

    .line 1991
    or-int/lit8 v0, v0, 0x1

    .line 1992
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1994
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v1, :cond_2

    .line 1995
    or-int/lit8 v0, v0, 0x2

    .line 1996
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1998
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1999
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2000
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2001
    or-int/lit8 v0, v0, 0x4

    .line 2002
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2004
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2005
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2007
    or-int/lit16 v0, v0, 0x2000

    .line 2010
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2013
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 2014
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_4

    .line 2016
    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2017
    or-int/lit16 v0, v0, 0x2000

    .line 2019
    :cond_4
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_5

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_6

    .line 2021
    :cond_5
    or-int/lit8 v0, v0, 0x4

    .line 2022
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2024
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_7

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v2, :cond_7

    .line 2026
    or-int/lit8 v0, v0, 0x8

    .line 2027
    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2029
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_8

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_8

    .line 2031
    or-int/lit8 v0, v0, 0x10

    .line 2032
    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2034
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_9

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v2, :cond_9

    .line 2036
    or-int/lit8 v0, v0, 0x20

    .line 2037
    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2039
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_a

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v2, :cond_a

    .line 2041
    or-int/lit8 v0, v0, 0x20

    .line 2042
    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2044
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_b

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v2, :cond_b

    .line 2046
    or-int/lit8 v0, v0, 0x40

    .line 2047
    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2049
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_c

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v2, :cond_c

    .line 2051
    or-int/lit8 v0, v0, 0x20

    .line 2052
    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2054
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_d

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_d

    .line 2056
    or-int/lit16 v0, v0, 0x80

    .line 2057
    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2059
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eqz v3, :cond_e

    and-int/lit8 v3, v2, 0xf

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0xf

    if-eq v3, v5, :cond_e

    .line 2062
    or-int/lit16 v0, v0, 0x100

    .line 2063
    and-int/lit8 v3, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2066
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eqz v3, :cond_f

    and-int/lit8 v3, v2, 0x30

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0x30

    if-eq v3, v5, :cond_f

    .line 2069
    or-int/lit16 v0, v0, 0x100

    .line 2070
    and-int/lit8 v3, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2073
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eqz v3, :cond_10

    and-int/lit16 v3, v2, 0x300

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v4, 0x300

    if-eq v3, v5, :cond_10

    .line 2076
    or-int/lit16 v0, v0, 0x100

    .line 2077
    and-int/lit16 v3, v4, -0x301

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2080
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v3, 0x10000000

    and-int v4, v2, v3

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int v6, v5, v3

    if-eq v4, v6, :cond_11

    if-eqz v2, :cond_11

    .line 2083
    or-int/lit16 v0, v0, 0x100

    .line 2084
    const v4, -0x10000001

    and-int/2addr v4, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2088
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_12

    and-int/lit8 v4, v2, 0x3

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0x3

    if-eq v4, v6, :cond_12

    .line 2092
    or-int/lit16 v0, v0, 0x4000

    .line 2093
    and-int/lit8 v4, v5, -0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2097
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0xc

    if-eqz v4, :cond_13

    and-int/lit8 v4, v2, 0xc

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0xc

    if-eq v4, v6, :cond_13

    .line 2100
    or-int/lit16 v0, v0, 0x4000

    .line 2101
    and-int/lit8 v4, v5, -0xd

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2105
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_15

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v4, v2, :cond_15

    .line 2107
    or-int/lit16 v0, v0, 0x200

    .line 2108
    and-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_14

    .line 2109
    and-int/lit8 v4, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2112
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v2, 0x30

    if-eqz v4, :cond_15

    .line 2113
    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2117
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_16

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v2, :cond_16

    .line 2119
    or-int/lit16 v0, v0, 0x400

    .line 2120
    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2122
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_17

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v2, :cond_17

    .line 2124
    or-int/lit16 v0, v0, 0x400

    .line 2125
    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2127
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_18

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v2, :cond_18

    .line 2129
    or-int/lit16 v0, v0, 0x800

    .line 2130
    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2132
    :cond_18
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_19

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v2, :cond_19

    .line 2134
    or-int/lit16 v0, v0, 0x1000

    .line 2135
    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2137
    :cond_19
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_1a

    .line 2138
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2140
    :cond_1a
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_1b

    .line 2141
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2143
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_1c

    .line 2144
    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2146
    :cond_1c
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1d

    iget v4, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v4, :cond_1d

    .line 2147
    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    .line 2148
    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2150
    :cond_1d
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_1e

    .line 2151
    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 2153
    :cond_1e
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 2154
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 2157
    :cond_1f
    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_20

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v2, v4, :cond_20

    .line 2159
    or-int/2addr v0, v3

    .line 2160
    iput v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2163
    :cond_20
    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v2, :cond_21

    iget v4, p0, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v4, v2, :cond_21

    .line 2164
    or-int/2addr v0, v3

    .line 2165
    iput v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    .line 2169
    :cond_21
    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_22

    iget v4, p0, Landroid/content/res/Configuration;->boldFont:I

    if-eq v4, v2, :cond_22

    .line 2170
    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    .line 2171
    iput v2, p0, Landroid/content/res/Configuration;->boldFont:I

    .line 2175
    :cond_22
    iget v2, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v2, v3, :cond_23

    iget v4, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v4, v2, :cond_23

    .line 2177
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 2178
    iput v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 2183
    :cond_23
    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v2, v3, :cond_24

    iget v4, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v4, v2, :cond_24

    .line 2185
    iput v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2187
    :cond_24
    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v2, v3, :cond_25

    iget v4, p0, Landroid/content/res/Configuration;->dexMode:I

    if-eq v4, v2, :cond_25

    .line 2188
    iput v2, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 2193
    :cond_25
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v2, :cond_26

    iget v4, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v4, v2, :cond_26

    .line 2195
    iput v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 2197
    :cond_26
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v2, :cond_27

    iget v4, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v4, v2, :cond_27

    .line 2199
    iput v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 2213
    :cond_27
    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v2, :cond_28

    iget v4, p0, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v4, v2, :cond_28

    .line 2214
    const/high16 v4, 0x10000

    or-int/2addr v0, v4

    .line 2215
    iput v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    .line 2222
    :cond_28
    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v2, v3, :cond_29

    iget v3, p0, Landroid/content/res/Configuration;->nightDim:I

    if-eq v3, v2, :cond_29

    .line 2223
    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    .line 2224
    iput v2, p0, Landroid/content/res/Configuration;->nightDim:I

    .line 2229
    :cond_29
    return v0
.end method

.method public blacklist updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 3720
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;->updateFromScreenConfiguration(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3722
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v1, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v2, v1, :cond_0

    .line 3724
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 3726
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v2, v1, :cond_1

    .line 3728
    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 3731
    :cond_1
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 3732
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 3734
    :cond_2
    return v0
.end method

.method public greylist-max-o writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .locals 7
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1847
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_0

    .line 1848
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1849
    .local v0, "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    goto :goto_0

    .line 1852
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1854
    .restart local v0    # "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1857
    .restart local v1    # "height":I
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1858
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1859
    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1860
    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1861
    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1862
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1863
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2590
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2591
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2595
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2599
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget-boolean v1, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    .line 2610
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2612
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2616
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2621
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2622
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2627
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2628
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2629
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2630
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2632
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    iget v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2639
    iget v0, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2642
    iget v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2646
    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    iget v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2651
    iget v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2660
    iget v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget v0, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    return-void
.end method
