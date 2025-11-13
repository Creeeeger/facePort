.class public final Lcom/android/internal/accessibility/common/ShortcutConstants;
.super Ljava/lang/Object;
.source "ShortcutConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/common/ShortcutConstants$UserShortcutType;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$FloatingMenuSize;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$ShortcutMenuMode;,
        Lcom/android/internal/accessibility/common/ShortcutConstants$AccessibilityFragmentType;
    }
.end annotation


# static fields
.field public static final blacklist A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CHOOSER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final blacklist SERVICES_SEPARATOR:C = ':'

.field public static final blacklist USER_SHORTCUT_TYPES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v8, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v10, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v11, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v12, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v13, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v14, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v15, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v16, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static/range {v1 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x200
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
