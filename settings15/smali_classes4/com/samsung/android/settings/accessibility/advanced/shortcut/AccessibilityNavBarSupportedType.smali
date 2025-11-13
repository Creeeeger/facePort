.class public final enum Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

.field public static final enum NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

.field public static final enum NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

.field public static final enum NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

.field public static final enum NAVIGATION_BAR_UNSUPPORTED:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    const-string v1, "NAVIGATION_BAR_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    const-string v2, "NAVIGATION_BAR_GESTURE_TWO_FINGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    const-string v3, "NAVIGATION_BAR_GESTURE_THREE_FINGER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    const-string v4, "NAVIGATION_BAR_UNSUPPORTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->NAVIGATION_BAR_UNSUPPORTED:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    new-instance v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    const-string v5, "NAVIGATION_BAR_DISABLED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityNavBarSupportedType;

    return-object v0
.end method
