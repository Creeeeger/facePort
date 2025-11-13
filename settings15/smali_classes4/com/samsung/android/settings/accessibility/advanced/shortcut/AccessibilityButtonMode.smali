.class public final enum Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

.field public static final enum FLOATING_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

.field public static final enum NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

.field public static final enum NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

.field public static final enum NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;


# instance fields
.field public final isButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    const-string v1, "NAVIGATION_BAR_BUTTON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    const-string v4, "NAVIGATION_BAR_GESTURE_TWO_FINGER"

    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_GESTURE_TWO_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    new-instance v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    const-string v5, "NAVIGATION_BAR_GESTURE_THREE_FINGER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_GESTURE_THREE_FINGER:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    const-string v5, "FLOATING_BUTTON"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v3}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->FLOATING_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    filled-new-array {v0, v1, v4, v2}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->isButton:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    return-object v0
.end method
