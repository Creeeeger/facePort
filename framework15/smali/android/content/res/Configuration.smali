.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$DexMode;,
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$Orientation;,
        Landroid/content/res/Configuration$GrammaticalGender;
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

.field public static final blacklist DEX_MODE_NEXT_GEN:I = 0x3

.field public static final blacklist DEX_MODE_NONE:I = 0x0

.field public static final blacklist DEX_MODE_STANDALONE:I = 0x1

.field public static final blacklist DEX_MODE_UNDEFINED:I = -0x1

.field public static final blacklist DISPLAY_DEVICE_TYPE_DUAL:I = 0x4

.field public static final blacklist DISPLAY_DEVICE_TYPE_HDMI:I = 0x1

.field public static final blacklist DISPLAY_DEVICE_TYPE_SUB_DUAL:I = 0x6

.field public static final blacklist DISPLAY_DEVICE_TYPE_SUB_TENT:I = 0x7

.field public static final blacklist DISPLAY_DEVICE_TYPE_UNDEFINED:I = -0x1

.field public static final greylist-max-o EMPTY:Landroid/content/res/Configuration;

.field public static final whitelist FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final whitelist GRAMMATICAL_GENDER_FEMININE:I = 0x2

.field public static final whitelist GRAMMATICAL_GENDER_MASCULINE:I = 0x3

.field public static final whitelist GRAMMATICAL_GENDER_NEUTRAL:I = 0x1

.field public static final whitelist GRAMMATICAL_GENDER_NOT_SPECIFIED:I = 0x0

.field public static final blacklist GRAMMATICAL_GENDER_UNDEFINED:I = -0x1

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

.field public static final blacklist NATIVE_CONFIG_CURSOR_THICKNESS:I = 0x200000

.field public static final greylist-max-o NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final blacklist NATIVE_CONFIG_FLIPFONT:I = 0x8000

.field public static final blacklist NATIVE_CONFIG_GRAMMATICAL_GENDER:I = 0x20000

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

.field public static final blacklist SEM_CURSOR_THICKNESS_SCALE_UNDEFINED:F = 0.0f

.field public static final whitelist SEM_DESKTOP_MODE_DISABLED:I = 0x0

.field public static final whitelist SEM_DESKTOP_MODE_ENABLED:I = 0x1

.field public static final whitelist SEM_DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static final whitelist SEM_DISPLAY_DEVICE_TYPE_SUB:I = 0x5

.field public static final whitelist SEM_MOBILE_KEYBOARD_COVERED_NO:I = 0x0

.field public static final whitelist SEM_MOBILE_KEYBOARD_COVERED_YES:I = 0x1

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

.field private static final blacklist XML_ATTR_GRAMMATICAL_GENDER:Ljava/lang/String; = "grammaticalGender"

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

.field private blacklist mGrammaticalGender:I

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

.field public blacklist semCursorThicknessScale:F

.field public whitelist semDesktopModeEnabled:I

.field public whitelist semDisplayDeviceType:I

.field public whitelist semMobileKeyboardCovered:I

.field public greylist seq:I

.field public whitelist smallestScreenWidthDp:I

.field public blacklist themeSeq:I

.field public whitelist touchscreen:I

.field public whitelist uiMode:I

.field public greylist userSetLocale:Z

.field public final blacklist windowConfiguration:Landroid/app/WindowConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o configurationDiffToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_9

    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b

    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_c

    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    const-string v1, "CONFIG_GRAMMATICAL_GENDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o fixUpLocaleList()V
    .locals 4

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

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

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

    :cond_3
    return-void
.end method

.method public static whitelist generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v1, v0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_6

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_8

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_9

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_a

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_b

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_c

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_d

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_e

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_f

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_10

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_11

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_12

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_13

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_14

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_14
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_15
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_16

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_16
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_17

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_17
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    :cond_18
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_19

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_19
    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v1, v2, :cond_1a

    iget v1, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v1, v0, Landroid/content/res/Configuration;->boldFont:I

    :cond_1a
    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v1, v2, :cond_1b

    iget v1, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v1, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v2, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v1, v0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v1, v2, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v1, v0, Landroid/content/res/Configuration;->nightDim:I

    :cond_1d
    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v1, v2, :cond_1e

    iget v1, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v1, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    :cond_1e
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v2, :cond_1f

    iget v1, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v1, v0, Landroid/content/res/Configuration;->dexMode:I

    :cond_1f
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v1, v2, :cond_20

    iget v1, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v1, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_20
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v1, v2, :cond_21

    iget v1, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v1, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    :cond_21
    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v1, v2, :cond_22

    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->themeSeq:I

    :cond_22
    return-object v0
.end method

.method private static greylist-max-o getScreenLayoutNoDirection(I)I
    .locals 1

    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static blacklist getUiModeTypeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "vrheadset"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "watch"

    return-object v0

    :pswitch_2
    const-string v0, "appliance"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "television"

    return-object v0

    :pswitch_4
    const-string v0, "car"

    return-object v0

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

    const/4 v0, 0x1

    return v0
.end method

.method private greylist hidden_semDesktopModeEnabled()I
    .locals 1

    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    return v0
.end method

.method public static greylist-max-o localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_3

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v7, :cond_6

    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+"

    if-eqz v4, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist needNewResources(II)Z
    .locals 2

    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    const/high16 v1, 0x1000000

    or-int p1, v0, v1

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    and-int v0, p0, p1

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    nop

    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    const-string/jumbo v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    const-string/jumbo v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    const-string/jumbo v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    nop

    const-string v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    nop

    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v1, "fontWeightAdjustment"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const-string v1, "grammaticalGender"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return-void
.end method

.method public static greylist-max-o reduceScreenLayout(III)I
    .locals 5

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_3

    :cond_0
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x280

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x141

    if-gt p2, v1, :cond_4

    const/16 v1, 0x23a

    if-le p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    move v2, v1

    :goto_2
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    :cond_6
    if-eqz v2, :cond_7

    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    :cond_7
    and-int/lit8 v3, p0, 0xf

    if-ge v0, v3, :cond_8

    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    :cond_8
    return p0
.end method

.method public static greylist-max-o resetScreenLayout(I)I
    .locals 1

    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static greylist-max-r resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_0

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

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_0

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

    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "masculine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "feminine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "neuter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_2

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

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_3

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

    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_4

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

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_4
    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_1

    goto :goto_3

    :sswitch_2
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_3
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2

    goto :goto_4

    :sswitch_4
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_5
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2

    goto :goto_5

    :pswitch_7
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_8
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_3

    goto :goto_6

    :sswitch_6
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :sswitch_7
    const-string/jumbo v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_3

    goto :goto_7

    :pswitch_9
    const-string/jumbo v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_a
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_4

    goto :goto_8

    :sswitch_8
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :sswitch_9
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_5

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

    goto :goto_9

    :sswitch_a
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_b
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_c
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_d
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_e
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_f
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_10
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_11
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_13
    nop

    :goto_9
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_4

    :pswitch_b
    goto :goto_a

    :pswitch_c
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :pswitch_d
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    goto :goto_b

    :pswitch_e
    const-string/jumbo v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_f
    const-string/jumbo v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_10
    const-string/jumbo v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_b
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_6

    goto :goto_c

    :pswitch_11
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_12
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_13
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_c
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_7

    goto :goto_d

    :pswitch_14
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :pswitch_15
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_8

    goto :goto_e

    :pswitch_16
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :pswitch_17
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :pswitch_18
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :pswitch_19
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_e
    if-eqz p1, :cond_7

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_6

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_f

    :cond_6
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_f
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

    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public static greylist-max-o uiModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    :pswitch_1
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    :pswitch_2
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    :pswitch_3
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    :pswitch_4
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    :pswitch_5
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    :pswitch_6
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

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

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x100

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1

    or-int/lit16 v0, v0, 0x80

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v4, :cond_2

    or-int/lit16 v0, v0, 0x400

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_3

    or-int/lit16 v0, v0, 0x400

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_3
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v4, :cond_4

    or-int/lit16 v0, v0, 0x800

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_4
    return v0
.end method


# virtual methods
.method public greylist-max-o clearLocales()V
    .locals 1

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method public whitelist compareTo(Landroid/content/res/Configuration;)I
    .locals 11

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    return v3

    :cond_0
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    return v4

    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    if-eqz v2, :cond_2

    return v2

    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_3

    return v5

    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    return v4

    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_a

    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    return v5

    :cond_6
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    return v5

    :cond_7
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    return v5

    :cond_8
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    return v5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    iget-object v6, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    sub-int v5, v6, v7

    if-eqz v5, :cond_b

    return v5

    :cond_b
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v6, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_c

    return v2

    :cond_c
    iget v5, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_d

    return v5

    :cond_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_e

    return v2

    :cond_e
    iget v5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_f

    return v5

    :cond_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_10

    return v2

    :cond_10
    iget v5, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_11

    return v5

    :cond_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_12

    return v2

    :cond_12
    iget v5, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_13

    return v5

    :cond_13
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v6, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_14

    return v2

    :cond_14
    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_15

    return v5

    :cond_15
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_16

    return v2

    :cond_16
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_17

    return v5

    :cond_17
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_18

    return v2

    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_19

    return v5

    :cond_19
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_1a

    return v2

    :cond_1a
    iget v5, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v6, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_1b

    return v5

    :cond_1b
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v6}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_1c

    return v2

    :cond_1c
    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v6, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_1d

    return v5

    :cond_1d
    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    int-to-float v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1e

    return v3

    :cond_1e
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1f

    return v4

    :cond_1f
    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->boldFont:I

    int-to-float v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    return v3

    :cond_20
    cmpl-float v2, v0, v1

    if-lez v2, :cond_21

    return v4

    :cond_21
    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_22

    return v2

    :cond_22
    iget v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v1, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpg-float v5, v0, v1

    if-gez v5, :cond_23

    return v3

    :cond_23
    cmpl-float v5, v0, v1

    if-lez v5, :cond_24

    return v4

    :cond_24
    iget v5, p0, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v0, v5

    iget v5, p1, Landroid/content/res/Configuration;->nightDim:I

    int-to-float v1, v5

    cmpg-float v5, v0, v1

    if-gez v5, :cond_25

    return v3

    :cond_25
    cmpl-float v5, v0, v1

    if-lez v5, :cond_26

    return v4

    :cond_26
    iget v5, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_27

    return v5

    :cond_27
    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexMode:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_28

    return v2

    :cond_28
    iget v5, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    sub-int/2addr v5, v6

    if-eqz v5, :cond_29

    return v5

    :cond_29
    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    sub-int/2addr v2, v6

    if-eqz v2, :cond_2a

    return v2

    :cond_2a
    iget v5, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v6, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-ge v5, v6, :cond_2b

    return v3

    :cond_2b
    if-le v5, v6, :cond_2c

    return v4

    :cond_2c
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/content/res/Configuration;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o diff(Landroid/content/res/Configuration;ZZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    :cond_1
    if-nez p2, :cond_2

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    if-nez p2, :cond_4

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    if-nez p2, :cond_6

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-nez p2, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v2, v3, :cond_9

    or-int/lit16 v0, v0, 0x2000

    :cond_9
    if-nez p2, :cond_a

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_b

    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_b

    or-int/lit8 v0, v0, 0x8

    :cond_b
    if-nez p2, :cond_c

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_d

    :cond_c
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_d

    or-int/lit8 v0, v0, 0x10

    :cond_d
    if-nez p2, :cond_e

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_f

    :cond_e
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_f

    or-int/lit8 v0, v0, 0x20

    :cond_f
    if-nez p2, :cond_10

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_11

    :cond_10
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_11

    or-int/lit8 v0, v0, 0x20

    :cond_11
    if-nez p2, :cond_12

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_13

    :cond_12
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_13

    or-int/lit8 v0, v0, 0x40

    :cond_13
    if-nez p2, :cond_14

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_15

    :cond_14
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_15

    or-int/lit8 v0, v0, 0x20

    :cond_15
    if-nez p2, :cond_16

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_17

    :cond_16
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_17

    or-int/lit16 v0, v0, 0x80

    :cond_17
    if-nez p2, :cond_18

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v4

    if-eq v3, v4, :cond_19

    or-int/lit16 v0, v0, 0x100

    :cond_19
    if-nez p2, :cond_1a

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_1b

    :cond_1a
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    if-eq v3, v4, :cond_1b

    or-int/lit16 v0, v0, 0x4000

    :cond_1b
    if-nez p2, :cond_1c

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_1d

    :cond_1c
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    if-eq v3, v4, :cond_1d

    or-int/lit16 v0, v0, 0x4000

    :cond_1d
    if-nez p2, :cond_1e

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_1f

    :cond_1e
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v3, v4, :cond_1f

    or-int/lit16 v0, v0, 0x200

    :cond_1f
    if-nez p2, :cond_20

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_21

    :cond_20
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v4, :cond_21

    or-int/lit16 v0, v0, 0x400

    :cond_21
    if-nez p2, :cond_22

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_23

    :cond_22
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_23

    or-int/lit16 v0, v0, 0x400

    :cond_23
    if-nez p2, :cond_24

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_25

    :cond_24
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v4, :cond_25

    or-int/lit16 v0, v0, 0x800

    :cond_25
    if-nez p2, :cond_26

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_27

    :cond_26
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_27

    or-int/lit16 v0, v0, 0x1000

    :cond_27
    if-nez p2, :cond_28

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v3, :cond_29

    :cond_28
    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v3, v4, :cond_29

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    :cond_29
    if-nez p3, :cond_2a

    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v4, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    :cond_2a
    if-nez p2, :cond_2b

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2c

    :cond_2b
    iget v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v4, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v3, v4, :cond_2c

    const/high16 v3, 0x10000000

    or-int/2addr v0, v3

    :cond_2c
    const/4 v3, -0x1

    if-nez p2, :cond_2d

    iget v4, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v4, v3, :cond_2e

    :cond_2d
    iget v4, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v5, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v4, v5, :cond_2e

    const v4, 0x8000

    or-int/2addr v0, v4

    :cond_2e
    iget v4, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v4, :cond_2f

    iget v4, p0, Landroid/content/res/Configuration;->FlipFont:I

    iget v5, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v4, v5, :cond_2f

    const/high16 v4, 0x2000000

    or-int/2addr v0, v4

    :cond_2f
    iget v4, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v4, v3, :cond_30

    iget v4, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v5, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v4, v5, :cond_30

    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    :cond_30
    iget v4, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v4, v3, :cond_31

    iget v4, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v5, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v4, v5, :cond_31

    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    :cond_31
    iget v4, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_32

    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v4, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_32

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    :cond_32
    iget v1, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v3, :cond_33

    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v4, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v1, v4, :cond_33

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :cond_33
    iget v1, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v1, v3, :cond_34

    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v3, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v1, v3, :cond_34

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    :cond_34
    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v1, :cond_35

    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v1, v3, :cond_35

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_35
    return v0
.end method

.method public greylist-max-o diffPublicOnly(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    if-nez p5, :cond_2

    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000014L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-nez p4, :cond_1

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10d00000016L

    iget v4, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist equals(Landroid/content/res/Configuration;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

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

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGrammaticalGender()I
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    :goto_0
    return v0
.end method

.method public blacklist getGrammaticalGenderRaw()I
    .locals 1

    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .locals 1

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->FlipFont:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->boldFont:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->nightDim:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist isDesktopModeEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isDexMode()Z
    .locals 3

    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist isLayoutSizeAtLeast(I)Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist isNewDexMode()Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isNightModeActive()Z
    .locals 2

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
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x10000000

    if-le v3, v4, :cond_4

    if-gez v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    iget v3, p1, Landroid/content/res/Configuration;->themeSeq:I

    iget v4, p0, Landroid/content/res/Configuration;->themeSeq:I

    sub-int/2addr v3, v4

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_5

    return v0

    :cond_5
    if-gtz v1, :cond_6

    if-lez v3, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public whitelist isScreenHdr()Z
    .locals 2

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

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public blacklist overrideUndefinedFrom(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->overrideUndefinedFrom(Landroid/app/WindowConfiguration;)V

    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v13, -0x1

    if-eq v0, v13, :cond_3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_0

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_f

    :pswitch_0
    const-wide v13, 0x10d00000016L

    :try_start_2
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_f

    :pswitch_1
    const-wide v13, 0x10d00000015L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_10

    :pswitch_2
    move-wide v15, v10

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

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :catch_0
    move-exception v0

    :try_start_4
    const-string v10, "error parsing locale list in configuration."

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_3
    move-wide v15, v10

    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v10, 0x10b00000013L

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_4
    move-wide v15, v10

    const-wide v10, 0x10d00000012L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_5
    move-wide v15, v10

    const-wide v10, 0x10d00000011L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_6
    move-wide v15, v10

    const-wide v10, 0x10d00000010L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_7
    move-wide v15, v10

    const-wide v10, 0x10d0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_8
    move-wide v15, v10

    const-wide v10, 0x10d0000000eL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_9
    move-wide v15, v10

    const-wide v10, 0x10d0000000dL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_a
    move-wide v15, v10

    const-wide v10, 0x10d0000000cL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_b
    move-wide v15, v10

    const-wide v10, 0x10d0000000bL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_c
    move-wide v15, v10

    const-wide v10, 0x10d0000000aL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_d
    move-wide v15, v10

    const-wide v10, 0x10d00000009L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_e
    move-wide v15, v10

    const-wide v10, 0x10d00000008L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_f
    move-wide v15, v10

    const-wide v10, 0x10d00000007L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_10
    move-wide v15, v10

    const-wide v10, 0x10d00000006L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :pswitch_11
    move-wide v15, v10

    const-wide v10, 0x10d00000005L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_10

    :pswitch_12
    move-wide v15, v10

    const-wide v10, 0x20b00000004L

    :try_start_5
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v0, v9

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    :goto_1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_6
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v0, v13, :cond_0

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_7
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    packed-switch v0, :pswitch_data_1

    move-object/from16 v18, v14

    goto :goto_2

    :pswitch_13
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_8
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_2

    :pswitch_14
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_2

    :pswitch_15
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_2

    :pswitch_16
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v20, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_2
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v18, v14

    :goto_3
    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    :goto_4
    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_9

    :cond_0
    move-object/from16 v18, v14

    :try_start_9
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_a
    .catch Ljava/util/IllformedLocaleException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v13, v20

    :try_start_b
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/IllformedLocaleException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v14, v21

    :try_start_c
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/IllformedLocaleException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v19, v9

    move-object/from16 v9, v22

    :try_start_d
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_d
    .catch Ljava/util/IllformedLocaleException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    :try_start_e
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    move/from16 v1, v22

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

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

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/util/IllformedLocaleException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v5, v18

    :try_start_10
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/util/IllformedLocaleException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_5
    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    :goto_6
    move-object/from16 v5, v18

    goto :goto_7

    :catch_6
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_7

    :catch_8
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto :goto_7

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

    :goto_7
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

    nop

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto/16 :goto_f

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

    goto :goto_a

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

    :goto_9
    nop

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_a
    move-object/from16 v2, p1

    :try_start_13
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_14
    .catch Ljava/util/IllformedLocaleException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move/from16 v19, v18

    move-wide/from16 v22, v10

    move/from16 v10, v19

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

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

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_2
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/util/IllformedLocaleException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :goto_b
    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_c

    :catch_c
    move-exception v0

    move-wide/from16 v22, v10

    :goto_c
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

    :goto_d
    nop

    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :catchall_6
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_e

    :catchall_7
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, v20

    goto/16 :goto_10

    :pswitch_17
    move-object v2, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

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

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_e

    :pswitch_18
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    goto :goto_f

    :pswitch_19
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    :goto_e
    move-wide/from16 v3, v20

    goto :goto_10

    :goto_f
    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    move-wide/from16 v20, v10

    move-wide/from16 v3, v20

    goto :goto_10

    :cond_3
    move-wide/from16 v20, v10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_4
    move-wide/from16 v3, v20

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    nop

    return-void

    :catchall_b
    move-exception v0

    move-wide v3, v10

    :goto_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_5
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_12
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
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist semIsPopOver()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    return v0
.end method

.method public blacklist setGrammaticalGender(I)V
    .locals 0

    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return-void
.end method

.method public whitelist setLayoutDirection(Ljava/util/Locale;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .locals 3

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

    return-void
.end method

.method public whitelist setLocales(Landroid/os/LocaleList;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method public whitelist setTo(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_1
    :goto_0
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget-boolean v0, p1, Landroid/content/res/Configuration;->rilSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v0, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v0, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v0, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v0, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v0, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_3
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_6
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_8
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_9
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_a

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_a
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_c

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_c
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_d
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_e

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_e
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_f

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_f
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_10

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_10
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_11
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    :cond_12
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_13

    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_13
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    :cond_14
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_15

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    :cond_15
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v0, p0, Landroid/content/res/Configuration;->boldFont:I

    :cond_16
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_17

    iget v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    :cond_17
    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_18

    iget v0, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    :cond_18
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_19

    iget v0, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v0, p0, Landroid/content/res/Configuration;->nightDim:I

    :cond_19
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexMode:I

    :cond_1a
    return-void
.end method

.method public whitelist setToDefaults()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->setToDefaults()V

    const v1, 0x7fffffff

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput-boolean v0, p0, Landroid/content/res/Configuration;->rilSetLocale:Z

    iput v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Landroid/content/res/Configuration;->boldFont:I

    iput v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v1, p0, Landroid/content/res/Configuration;->nightDim:I

    iput v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v1, p0, Landroid/content/res/Configuration;->dexMode:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    const v3, 0xffff

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-lez v2, :cond_3

    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v2, :pswitch_data_0

    const-string v2, " ?grgend"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    const-string v2, " masculine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v2, " feminine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string v2, " neuter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    sparse-switch v2, :sswitch_data_0

    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_0
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_1
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_2
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_4

    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_5

    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_6

    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_7
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_1

    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_3
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_4
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_5
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_6
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_7
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_1

    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :sswitch_3
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :sswitch_4
    goto :goto_a

    :sswitch_5
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2

    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_6
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :sswitch_7
    goto :goto_b

    :sswitch_8
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2

    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c

    :pswitch_8
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :pswitch_9
    goto :goto_c

    :pswitch_a
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_3

    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_b
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_c
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :pswitch_d
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_4

    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_e
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_f
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_10
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_11
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_12
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_13
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_14
    goto :goto_e

    :pswitch_15
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_3

    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :sswitch_9
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :sswitch_a
    goto :goto_f

    :sswitch_b
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_5

    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_16
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_17
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_18
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :pswitch_19
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_6

    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_11

    :pswitch_1a
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :pswitch_1b
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :pswitch_1c
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :pswitch_1d
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/"

    const-string v4, "/h"

    const-string v5, "/v"

    const-string v6, "/?"

    packed-switch v1, :pswitch_data_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    :pswitch_1e
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :pswitch_1f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :pswitch_20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :pswitch_21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :pswitch_24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_9

    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_25
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_26
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_27
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_28
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_29
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :pswitch_2a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :pswitch_2b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :pswitch_2c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_8

    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_9

    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_a

    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_a
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_16
    const-string v1, " ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " nightDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    packed-switch v1, :pswitch_data_b

    goto :goto_17

    :pswitch_2d
    const-string v1, " desktop/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_2e
    const-string v1, " desktop/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :pswitch_2f
    const-string v1, " desktop/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    iget v1, p0, Landroid/content/res/Configuration;->dexMode:I

    packed-switch v1, :pswitch_data_c

    goto :goto_18

    :pswitch_30
    const-string v1, " dm/nextgen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :pswitch_31
    const-string v1, " dm/dual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :pswitch_32
    const-string v1, " dm/stand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :pswitch_33
    const-string v1, " dm/n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :pswitch_34
    const-string v1, " dm/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    packed-switch v1, :pswitch_data_d

    goto :goto_19

    :pswitch_35
    const-string v1, " dc/e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_36
    const-string v1, " dc/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_37
    const-string v1, " ?dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    packed-switch v1, :pswitch_data_e

    goto :goto_1a

    :pswitch_38
    const-string v1, " dcui/f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_39
    const-string v1, " dcui/c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_3a
    const-string v1, " dcui/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_3b
    const-string v1, " ?dcui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    const-string v1, " themeSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_b
        0x10 -> :sswitch_a
        0x20 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_b
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch
.end method

.method public greylist-max-o unset()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    return-void
.end method

.method public whitelist updateFrom(Landroid/content/res/Configuration;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;Z)I

    move-result v0

    return v0
.end method

.method public blacklist updateFrom(Landroid/content/res/Configuration;Z)I
    .locals 6

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    or-int/lit16 v0, v0, 0x2000

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    if-eqz v1, :cond_4

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v1, v3, :cond_4

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, -0xc1

    or-int/2addr v3, v1

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    iget-boolean v3, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_5

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_6

    :cond_5
    or-int/lit8 v0, v0, 0x4

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_6
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_7

    or-int/lit8 v0, v0, 0x8

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_7
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_8

    or-int/lit8 v0, v0, 0x10

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_8
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_9

    or-int/lit8 v0, v0, 0x20

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_9
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_a

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_a

    or-int/lit8 v0, v0, 0x20

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    :cond_a
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_b

    or-int/lit8 v0, v0, 0x40

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_b
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_c

    or-int/lit8 v0, v0, 0x20

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_c
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_d

    or-int/lit16 v0, v0, 0x80

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_d
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_e

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    if-eq v3, v4, :cond_e

    or-int/lit16 v0, v0, 0x100

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, -0x10

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    if-eqz v3, :cond_f

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    if-eq v3, v4, :cond_f

    or-int/lit16 v0, v0, 0x100

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, -0x31

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    if-eqz v3, :cond_10

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    if-eq v3, v4, :cond_10

    or-int/lit16 v0, v0, 0x100

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, -0x301

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v5, v4

    if-eq v3, v5, :cond_11

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v3, :cond_11

    or-int/lit16 v0, v0, 0x100

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    const v5, -0x10000001

    and-int/2addr v3, v5

    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_12

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    if-eq v3, v5, :cond_12

    or-int/lit16 v0, v0, 0x4000

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, -0x4

    iget v5, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_12
    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_13

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    if-eq v3, v5, :cond_13

    or-int/lit16 v0, v0, 0x4000

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, -0xd

    iget v5, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_13
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v3, :cond_15

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v5, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v3, v5, :cond_15

    or-int/lit16 v0, v0, 0x200

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_14

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x10

    iget v5, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_14
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    if-eqz v3, :cond_15

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    iget v5, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    or-int/2addr v3, v5

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_15
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_16

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v5, :cond_16

    or-int/lit16 v0, v0, 0x400

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_16
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_17

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v5, :cond_17

    or-int/lit16 v0, v0, 0x400

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_17
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v3, :cond_18

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v5, :cond_18

    or-int/lit16 v0, v0, 0x800

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_18
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_19

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v5, :cond_19

    or-int/lit16 v0, v0, 0x1000

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_19
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v3, :cond_1a

    iget v3, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    :cond_1a
    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v3, :cond_1b

    iget v3, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    :cond_1b
    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v3, :cond_1c

    iget v3, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    :cond_1c
    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v3, :cond_1d

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v5, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v3, v5, :cond_1d

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_1d
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_1e

    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    :cond_1e
    if-eqz p2, :cond_1f

    goto :goto_0

    :cond_1f
    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v3

    if-eqz v3, :cond_20

    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    :cond_20
    :goto_0
    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_21

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v3, v5, :cond_21

    or-int/2addr v0, v4

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    :cond_21
    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v5, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v3, v5, :cond_22

    const v3, 0x8000

    or-int/2addr v0, v3

    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v3, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    :cond_22
    iget v3, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v3, :cond_23

    iget v3, p0, Landroid/content/res/Configuration;->FlipFont:I

    iget v5, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v3, v5, :cond_23

    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    iget v3, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v3, p0, Landroid/content/res/Configuration;->FlipFont:I

    :cond_23
    iget v3, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v3, v4, :cond_24

    iget v3, p0, Landroid/content/res/Configuration;->boldFont:I

    iget v5, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v3, v5, :cond_24

    const/high16 v3, 0x1000000

    or-int/2addr v0, v3

    iget v3, p1, Landroid/content/res/Configuration;->boldFont:I

    iput v3, p0, Landroid/content/res/Configuration;->boldFont:I

    :cond_24
    iget v3, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v3, v4, :cond_25

    iget v3, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iget v5, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v3, v5, :cond_25

    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    iget v3, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    iput v3, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    :cond_25
    iget v3, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_26

    iget v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iget v3, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    iput v2, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    :cond_26
    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v2, v4, :cond_27

    iget v2, p0, Landroid/content/res/Configuration;->nightDim:I

    iget v3, p1, Landroid/content/res/Configuration;->nightDim:I

    if-eq v2, v3, :cond_27

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->nightDim:I

    iput v2, p0, Landroid/content/res/Configuration;->nightDim:I

    :cond_27
    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v2, v4, :cond_28

    iget v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v2, v3, :cond_28

    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v2, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    :cond_28
    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v2, v4, :cond_29

    iget v2, p0, Landroid/content/res/Configuration;->dexMode:I

    iget v3, p1, Landroid/content/res/Configuration;->dexMode:I

    if-eq v2, v3, :cond_29

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->dexMode:I

    iput v2, p0, Landroid/content/res/Configuration;->dexMode:I

    :cond_29
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v2, :cond_2a

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v3, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v2, v3, :cond_2a

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v2, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_2a
    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v2, v3, :cond_2b

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v2, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    :cond_2b
    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-lez v2, :cond_2c

    iget v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v2, v3, :cond_2c

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->themeSeq:I

    iput v2, p0, Landroid/content/res/Configuration;->themeSeq:I

    :cond_2c
    return v0
.end method

.method public blacklist updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;->updateFromScreenConfiguration(Landroid/content/res/Configuration;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    :cond_1
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public greylist-max-o writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .locals 7

    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_0

    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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

    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->boldFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->nightDim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->dexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->themeSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
